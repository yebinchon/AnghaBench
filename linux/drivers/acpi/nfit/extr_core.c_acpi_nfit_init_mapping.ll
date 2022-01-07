; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_init_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_init_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_desc = type { i32, i32, i32 }
%struct.nd_mapping_desc = type { i32, i32, %struct.nvdimm* }
%struct.nvdimm = type { i32 }
%struct.nd_region_desc = type { i32, %struct.nd_mapping_desc*, i32 }
%struct.acpi_nfit_memory_map = type { i32, i32, i32 }
%struct.nfit_spa = type { i32, %struct.acpi_nfit_system_address* }
%struct.acpi_nfit_system_address = type { i32 }
%struct.nd_blk_region_desc = type { i32, i32 }
%struct.nfit_mem = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"spa%d dimm: %#x not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"spa%d %s missing bdw\0A\00", align 1
@acpi_nfit_blk_region_enable = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_nfit_desc*, %struct.nd_mapping_desc*, %struct.nd_region_desc*, %struct.acpi_nfit_memory_map*, %struct.nfit_spa*)* @acpi_nfit_init_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_nfit_init_mapping(%struct.acpi_nfit_desc* %0, %struct.nd_mapping_desc* %1, %struct.nd_region_desc* %2, %struct.acpi_nfit_memory_map* %3, %struct.nfit_spa* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_nfit_desc*, align 8
  %8 = alloca %struct.nd_mapping_desc*, align 8
  %9 = alloca %struct.nd_region_desc*, align 8
  %10 = alloca %struct.acpi_nfit_memory_map*, align 8
  %11 = alloca %struct.nfit_spa*, align 8
  %12 = alloca %struct.nvdimm*, align 8
  %13 = alloca %struct.acpi_nfit_system_address*, align 8
  %14 = alloca %struct.nd_blk_region_desc*, align 8
  %15 = alloca %struct.nfit_mem*, align 8
  %16 = alloca i32, align 4
  store %struct.acpi_nfit_desc* %0, %struct.acpi_nfit_desc** %7, align 8
  store %struct.nd_mapping_desc* %1, %struct.nd_mapping_desc** %8, align 8
  store %struct.nd_region_desc* %2, %struct.nd_region_desc** %9, align 8
  store %struct.acpi_nfit_memory_map* %3, %struct.acpi_nfit_memory_map** %10, align 8
  store %struct.nfit_spa* %4, %struct.nfit_spa** %11, align 8
  %17 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %7, align 8
  %18 = load %struct.acpi_nfit_memory_map*, %struct.acpi_nfit_memory_map** %10, align 8
  %19 = getelementptr inbounds %struct.acpi_nfit_memory_map, %struct.acpi_nfit_memory_map* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.nvdimm* @acpi_nfit_dimm_by_handle(%struct.acpi_nfit_desc* %17, i32 %20)
  store %struct.nvdimm* %21, %struct.nvdimm** %12, align 8
  %22 = load %struct.nfit_spa*, %struct.nfit_spa** %11, align 8
  %23 = getelementptr inbounds %struct.nfit_spa, %struct.nfit_spa* %22, i32 0, i32 1
  %24 = load %struct.acpi_nfit_system_address*, %struct.acpi_nfit_system_address** %23, align 8
  store %struct.acpi_nfit_system_address* %24, %struct.acpi_nfit_system_address** %13, align 8
  %25 = load %struct.nvdimm*, %struct.nvdimm** %12, align 8
  %26 = icmp ne %struct.nvdimm* %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %5
  %28 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %7, align 8
  %29 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.acpi_nfit_system_address*, %struct.acpi_nfit_system_address** %13, align 8
  %32 = getelementptr inbounds %struct.acpi_nfit_system_address, %struct.acpi_nfit_system_address* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.acpi_nfit_memory_map*, %struct.acpi_nfit_memory_map** %10, align 8
  %35 = getelementptr inbounds %struct.acpi_nfit_memory_map, %struct.acpi_nfit_memory_map* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %139

40:                                               ; preds = %5
  %41 = load %struct.nvdimm*, %struct.nvdimm** %12, align 8
  %42 = load %struct.nd_mapping_desc*, %struct.nd_mapping_desc** %8, align 8
  %43 = getelementptr inbounds %struct.nd_mapping_desc, %struct.nd_mapping_desc* %42, i32 0, i32 2
  store %struct.nvdimm* %41, %struct.nvdimm** %43, align 8
  %44 = load %struct.acpi_nfit_system_address*, %struct.acpi_nfit_system_address** %13, align 8
  %45 = call i32 @nfit_spa_type(%struct.acpi_nfit_system_address* %44)
  switch i32 %45, label %138 [
    i32 129, label %46
    i32 128, label %46
    i32 130, label %57
  ]

46:                                               ; preds = %40, %40
  %47 = load %struct.acpi_nfit_memory_map*, %struct.acpi_nfit_memory_map** %10, align 8
  %48 = getelementptr inbounds %struct.acpi_nfit_memory_map, %struct.acpi_nfit_memory_map* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nd_mapping_desc*, %struct.nd_mapping_desc** %8, align 8
  %51 = getelementptr inbounds %struct.nd_mapping_desc, %struct.nd_mapping_desc* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.acpi_nfit_memory_map*, %struct.acpi_nfit_memory_map** %10, align 8
  %53 = getelementptr inbounds %struct.acpi_nfit_memory_map, %struct.acpi_nfit_memory_map* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nd_mapping_desc*, %struct.nd_mapping_desc** %8, align 8
  %56 = getelementptr inbounds %struct.nd_mapping_desc, %struct.nd_mapping_desc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %138

57:                                               ; preds = %40
  %58 = load %struct.nvdimm*, %struct.nvdimm** %12, align 8
  %59 = call %struct.nfit_mem* @nvdimm_provider_data(%struct.nvdimm* %58)
  store %struct.nfit_mem* %59, %struct.nfit_mem** %15, align 8
  %60 = load %struct.nfit_mem*, %struct.nfit_mem** %15, align 8
  %61 = icmp ne %struct.nfit_mem* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.nfit_mem*, %struct.nfit_mem** %15, align 8
  %64 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = icmp ne %struct.TYPE_2__* %65, null
  br i1 %66, label %77, label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %7, align 8
  %69 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.acpi_nfit_system_address*, %struct.acpi_nfit_system_address** %13, align 8
  %72 = getelementptr inbounds %struct.acpi_nfit_system_address, %struct.acpi_nfit_system_address* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.nvdimm*, %struct.nvdimm** %12, align 8
  %75 = call i32 @nvdimm_name(%struct.nvdimm* %74)
  %76 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %75)
  br label %138

77:                                               ; preds = %62
  %78 = load %struct.nfit_mem*, %struct.nfit_mem** %15, align 8
  %79 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nd_mapping_desc*, %struct.nd_mapping_desc** %8, align 8
  %84 = getelementptr inbounds %struct.nd_mapping_desc, %struct.nd_mapping_desc* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.nfit_mem*, %struct.nfit_mem** %15, align 8
  %86 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.nd_mapping_desc*, %struct.nd_mapping_desc** %8, align 8
  %91 = getelementptr inbounds %struct.nd_mapping_desc, %struct.nd_mapping_desc* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.nfit_mem*, %struct.nfit_mem** %15, align 8
  %93 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.nd_region_desc*, %struct.nd_region_desc** %9, align 8
  %98 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.nd_mapping_desc*, %struct.nd_mapping_desc** %8, align 8
  %100 = load %struct.nd_region_desc*, %struct.nd_region_desc** %9, align 8
  %101 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %100, i32 0, i32 1
  store %struct.nd_mapping_desc* %99, %struct.nd_mapping_desc** %101, align 8
  %102 = load %struct.nd_region_desc*, %struct.nd_region_desc** %9, align 8
  %103 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load %struct.nd_region_desc*, %struct.nd_region_desc** %9, align 8
  %105 = call %struct.nd_blk_region_desc* @to_blk_region_desc(%struct.nd_region_desc* %104)
  store %struct.nd_blk_region_desc* %105, %struct.nd_blk_region_desc** %14, align 8
  %106 = load i32, i32* @acpi_nfit_blk_region_enable, align 4
  %107 = load %struct.nd_blk_region_desc*, %struct.nd_blk_region_desc** %14, align 8
  %108 = getelementptr inbounds %struct.nd_blk_region_desc, %struct.nd_blk_region_desc* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %7, align 8
  %110 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.nd_blk_region_desc*, %struct.nd_blk_region_desc** %14, align 8
  %113 = getelementptr inbounds %struct.nd_blk_region_desc, %struct.nd_blk_region_desc* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %7, align 8
  %115 = load %struct.nd_region_desc*, %struct.nd_region_desc** %9, align 8
  %116 = load %struct.acpi_nfit_system_address*, %struct.acpi_nfit_system_address** %13, align 8
  %117 = call i32 @acpi_nfit_init_interleave_set(%struct.acpi_nfit_desc* %114, %struct.nd_region_desc* %115, %struct.acpi_nfit_system_address* %116)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %77
  %121 = load i32, i32* %16, align 4
  store i32 %121, i32* %6, align 4
  br label %139

122:                                              ; preds = %77
  %123 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %7, align 8
  %124 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.nd_region_desc*, %struct.nd_region_desc** %9, align 8
  %127 = call i32 @nvdimm_blk_region_create(i32 %125, %struct.nd_region_desc* %126)
  %128 = load %struct.nfit_spa*, %struct.nfit_spa** %11, align 8
  %129 = getelementptr inbounds %struct.nfit_spa, %struct.nfit_spa* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.nfit_spa*, %struct.nfit_spa** %11, align 8
  %131 = getelementptr inbounds %struct.nfit_spa, %struct.nfit_spa* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %122
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %139

137:                                              ; preds = %122
  br label %138

138:                                              ; preds = %40, %137, %67, %46
  store i32 0, i32* %6, align 4
  br label %139

139:                                              ; preds = %138, %134, %120, %27
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local %struct.nvdimm* @acpi_nfit_dimm_by_handle(%struct.acpi_nfit_desc*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @nfit_spa_type(%struct.acpi_nfit_system_address*) #1

declare dso_local %struct.nfit_mem* @nvdimm_provider_data(%struct.nvdimm*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @nvdimm_name(%struct.nvdimm*) #1

declare dso_local %struct.nd_blk_region_desc* @to_blk_region_desc(%struct.nd_region_desc*) #1

declare dso_local i32 @acpi_nfit_init_interleave_set(%struct.acpi_nfit_desc*, %struct.nd_region_desc*, %struct.acpi_nfit_system_address*) #1

declare dso_local i32 @nvdimm_blk_region_create(i32, %struct.nd_region_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
