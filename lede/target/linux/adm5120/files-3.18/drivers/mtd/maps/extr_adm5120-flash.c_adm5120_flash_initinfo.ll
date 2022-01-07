; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/mtd/maps/extr_adm5120-flash.c_adm5120_flash_initinfo.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/mtd/maps/extr_adm5120-flash.c_adm5120_flash_initinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_desc = type { i64, i64 }
%struct.adm5120_flash_info = type { %struct.TYPE_3__, %struct.platform_device* }
%struct.TYPE_3__ = type { i64, i32, %struct.map_info }
%struct.map_info = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.adm5120_flash_platform_data* }
%struct.adm5120_flash_platform_data = type { i64, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"invalid flash id\0A\00", align 1
@flash_descs = common dso_local global %struct.flash_desc* null, align 8
@SWITCH_REG_MEMCTRL = common dso_local global i32 0, align 4
@MEMCTRL_SRS_MASK = common dso_local global i64 0, align 8
@flash_sizes = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to determine window size\0A\00", align 1
@SC1 = common dso_local global i32 0, align 4
@SC_MW_MASK = common dso_local global i64 0, align 8
@SC0 = common dso_local global i32 0, align 4
@flash_bankwidths = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid bus width detected\0A\00", align 1
@BANK_SIZE_MAX = common dso_local global i32 0, align 4
@adm5120_flash_read = common dso_local global i32 0, align 4
@adm5120_flash_write = common dso_local global i32 0, align 4
@adm5120_flash_copy_from = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"probing at 0x%lX, size:%ldKiB, width:%d bits\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adm5120_flash_info*, %struct.platform_device*)* @adm5120_flash_initinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm5120_flash_initinfo(%struct.adm5120_flash_info* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adm5120_flash_info*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.map_info*, align 8
  %7 = alloca %struct.adm5120_flash_platform_data*, align 8
  %8 = alloca %struct.flash_desc*, align 8
  %9 = alloca i64, align 8
  store %struct.adm5120_flash_info* %0, %struct.adm5120_flash_info** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %10 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %4, align 8
  %11 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store %struct.map_info* %12, %struct.map_info** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.adm5120_flash_platform_data*, %struct.adm5120_flash_platform_data** %15, align 8
  store %struct.adm5120_flash_platform_data* %16, %struct.adm5120_flash_platform_data** %7, align 8
  store i64 0, i64* %9, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  %19 = call i32 @dev_name(%struct.TYPE_4__* %18)
  %20 = load %struct.map_info*, %struct.map_info** %6, align 8
  %21 = getelementptr inbounds %struct.map_info, %struct.map_info* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.map_info*, %struct.map_info** %6, align 8
  %28 = call i32 @MAP_ERR(%struct.map_info* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %157

29:                                               ; preds = %2
  %30 = load %struct.flash_desc*, %struct.flash_desc** @flash_descs, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.flash_desc, %struct.flash_desc* %30, i64 %34
  store %struct.flash_desc* %35, %struct.flash_desc** %8, align 8
  %36 = load %struct.adm5120_flash_platform_data*, %struct.adm5120_flash_platform_data** %7, align 8
  %37 = icmp ne %struct.adm5120_flash_platform_data* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load %struct.adm5120_flash_platform_data*, %struct.adm5120_flash_platform_data** %7, align 8
  %40 = getelementptr inbounds %struct.adm5120_flash_platform_data, %struct.adm5120_flash_platform_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %4, align 8
  %43 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  br label %45

45:                                               ; preds = %38, %29
  %46 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %4, align 8
  %47 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  %52 = load i32, i32* @SWITCH_REG_MEMCTRL, align 4
  %53 = call i64 @SW_READ_REG(i32 %52)
  %54 = load %struct.flash_desc*, %struct.flash_desc** %8, align 8
  %55 = getelementptr inbounds %struct.flash_desc, %struct.flash_desc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = lshr i64 %53, %56
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* @MEMCTRL_SRS_MASK, align 8
  %59 = load i64, i64* %9, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* %9, align 8
  %61 = load i64*, i64** @flash_sizes, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %4, align 8
  %66 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  br label %68

68:                                               ; preds = %51, %45
  %69 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %4, align 8
  %70 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.map_info*, %struct.map_info** %6, align 8
  %76 = call i32 @MAP_ERR(%struct.map_info* %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %157

77:                                               ; preds = %68
  %78 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %91 [
    i32 0, label %81
    i32 1, label %86
  ]

81:                                               ; preds = %77
  %82 = load i32, i32* @SC1, align 4
  %83 = call i64 @MPMC_READ_REG(i32 %82)
  %84 = load i64, i64* @SC_MW_MASK, align 8
  %85 = and i64 %83, %84
  store i64 %85, i64* %9, align 8
  br label %91

86:                                               ; preds = %77
  %87 = load i32, i32* @SC0, align 4
  %88 = call i64 @MPMC_READ_REG(i32 %87)
  %89 = load i64, i64* @SC_MW_MASK, align 8
  %90 = and i64 %88, %89
  store i64 %90, i64* %9, align 8
  br label %91

91:                                               ; preds = %77, %86, %81
  %92 = load i32*, i32** @flash_bankwidths, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.map_info*, %struct.map_info** %6, align 8
  %97 = getelementptr inbounds %struct.map_info, %struct.map_info* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.map_info*, %struct.map_info** %6, align 8
  %99 = getelementptr inbounds %struct.map_info, %struct.map_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %91
  %103 = load %struct.map_info*, %struct.map_info** %6, align 8
  %104 = call i32 @MAP_ERR(%struct.map_info* %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %157

105:                                              ; preds = %91
  %106 = load %struct.flash_desc*, %struct.flash_desc** %8, align 8
  %107 = getelementptr inbounds %struct.flash_desc, %struct.flash_desc* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.map_info*, %struct.map_info** %6, align 8
  %110 = getelementptr inbounds %struct.map_info, %struct.map_info* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load i32, i32* @BANK_SIZE_MAX, align 4
  %112 = load %struct.map_info*, %struct.map_info** %6, align 8
  %113 = getelementptr inbounds %struct.map_info, %struct.map_info* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 8
  %114 = load %struct.map_info*, %struct.map_info** %6, align 8
  %115 = call i32 @simple_map_init(%struct.map_info* %114)
  %116 = load i32, i32* @adm5120_flash_read, align 4
  %117 = load %struct.map_info*, %struct.map_info** %6, align 8
  %118 = getelementptr inbounds %struct.map_info, %struct.map_info* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @adm5120_flash_write, align 4
  %120 = load %struct.map_info*, %struct.map_info** %6, align 8
  %121 = getelementptr inbounds %struct.map_info, %struct.map_info* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @adm5120_flash_copy_from, align 4
  %123 = load %struct.map_info*, %struct.map_info** %6, align 8
  %124 = getelementptr inbounds %struct.map_info, %struct.map_info* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.adm5120_flash_platform_data*, %struct.adm5120_flash_platform_data** %7, align 8
  %126 = icmp ne %struct.adm5120_flash_platform_data* %125, null
  br i1 %126, label %127, label %139

127:                                              ; preds = %105
  %128 = load %struct.adm5120_flash_platform_data*, %struct.adm5120_flash_platform_data** %7, align 8
  %129 = getelementptr inbounds %struct.adm5120_flash_platform_data, %struct.adm5120_flash_platform_data* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.map_info*, %struct.map_info** %6, align 8
  %132 = getelementptr inbounds %struct.map_info, %struct.map_info* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.adm5120_flash_platform_data*, %struct.adm5120_flash_platform_data** %7, align 8
  %134 = getelementptr inbounds %struct.adm5120_flash_platform_data, %struct.adm5120_flash_platform_data* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %4, align 8
  %137 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 8
  br label %139

139:                                              ; preds = %127, %105
  %140 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %141 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %4, align 8
  %142 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %141, i32 0, i32 1
  store %struct.platform_device* %140, %struct.platform_device** %142, align 8
  %143 = load %struct.map_info*, %struct.map_info** %6, align 8
  %144 = load %struct.map_info*, %struct.map_info** %6, align 8
  %145 = getelementptr inbounds %struct.map_info, %struct.map_info* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %4, align 8
  %148 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = lshr i64 %150, 10
  %152 = load %struct.map_info*, %struct.map_info** %6, align 8
  %153 = getelementptr inbounds %struct.map_info, %struct.map_info* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 %154, 8
  %156 = call i32 @MAP_INFO(%struct.map_info* %143, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %146, i64 %151, i32 %155)
  store i32 0, i32* %3, align 4
  br label %160

157:                                              ; preds = %102, %74, %26
  %158 = load i32, i32* @ENODEV, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %157, %139
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @dev_name(%struct.TYPE_4__*) #1

declare dso_local i32 @MAP_ERR(%struct.map_info*, i8*) #1

declare dso_local i64 @SW_READ_REG(i32) #1

declare dso_local i64 @MPMC_READ_REG(i32) #1

declare dso_local i32 @simple_map_init(%struct.map_info*) #1

declare dso_local i32 @MAP_INFO(%struct.map_info*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
