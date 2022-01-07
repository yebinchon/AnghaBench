; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-imc.c_imc_get_mem_addr_nest.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-imc.c_imc_get_mem_addr_nest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.imc_pmu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"chip-id\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"base-addr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.imc_pmu*, i64)* @imc_get_mem_addr_nest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imc_get_mem_addr_nest(%struct.device_node* %0, %struct.imc_pmu* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.imc_pmu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.imc_pmu* %1, %struct.imc_pmu** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = call i32 @of_property_count_u32_elems(%struct.device_node* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %121

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kcalloc(i32 %21, i32 8, i32 %22)
  %24 = bitcast i8* %23 to i64*
  store i64* %24, i64** %10, align 8
  %25 = load i64*, i64** %10, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %121

30:                                               ; preds = %20
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kcalloc(i32 %31, i32 8, i32 %32)
  %34 = bitcast i8* %33 to i64*
  store i64* %34, i64** %12, align 8
  %35 = load i64*, i64** %12, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load i64*, i64** %10, align 8
  %39 = call i32 @kfree(i64* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %121

42:                                               ; preds = %30
  %43 = load %struct.device_node*, %struct.device_node** %5, align 8
  %44 = load i64*, i64** %12, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @of_property_read_u32_array(%struct.device_node* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %116

49:                                               ; preds = %42
  %50 = load %struct.device_node*, %struct.device_node** %5, align 8
  %51 = load i64*, i64** %10, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @of_property_read_u64_array(%struct.device_node* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %116

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @kcalloc(i32 %58, i32 16, i32 %59)
  %61 = bitcast i8* %60 to %struct.TYPE_2__*
  %62 = load %struct.imc_pmu*, %struct.imc_pmu** %6, align 8
  %63 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %62, i32 0, i32 1
  store %struct.TYPE_2__* %61, %struct.TYPE_2__** %63, align 8
  %64 = load %struct.imc_pmu*, %struct.imc_pmu** %6, align 8
  %65 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = icmp ne %struct.TYPE_2__* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  br label %116

69:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %103, %69
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %106

74:                                               ; preds = %70
  %75 = load i64*, i64** %12, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.imc_pmu*, %struct.imc_pmu** %6, align 8
  %81 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i64 %79, i64* %86, align 8
  %87 = load i64*, i64** %10, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = add nsw i64 %91, %92
  store i64 %93, i64* %11, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @phys_to_virt(i64 %94)
  %96 = load %struct.imc_pmu*, %struct.imc_pmu** %6, align 8
  %97 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 %95, i32* %102, align 8
  br label %103

103:                                              ; preds = %74
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %70

106:                                              ; preds = %70
  %107 = load %struct.imc_pmu*, %struct.imc_pmu** %6, align 8
  %108 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.device_node*, %struct.device_node** %5, align 8
  %110 = load %struct.imc_pmu*, %struct.imc_pmu** %6, align 8
  %111 = call i32 @export_imc_mode_and_cmd(%struct.device_node* %109, %struct.imc_pmu* %110)
  %112 = load i64*, i64** %10, align 8
  %113 = call i32 @kfree(i64* %112)
  %114 = load i64*, i64** %12, align 8
  %115 = call i32 @kfree(i64* %114)
  store i32 0, i32* %4, align 4
  br label %121

116:                                              ; preds = %68, %55, %48
  %117 = load i64*, i64** %10, align 8
  %118 = call i32 @kfree(i64* %117)
  %119 = load i64*, i64** %12, align 8
  %120 = call i32 @kfree(i64* %119)
  store i32 -1, i32* %4, align 4
  br label %121

121:                                              ; preds = %116, %106, %37, %27, %17
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @of_property_count_u32_elems(%struct.device_node*, i8*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i64 @of_property_read_u32_array(%struct.device_node*, i8*, i64*, i32) #1

declare dso_local i64 @of_property_read_u64_array(%struct.device_node*, i8*, i64*, i32) #1

declare dso_local i32 @phys_to_virt(i64) #1

declare dso_local i32 @export_imc_mode_and_cmd(%struct.device_node*, %struct.imc_pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
