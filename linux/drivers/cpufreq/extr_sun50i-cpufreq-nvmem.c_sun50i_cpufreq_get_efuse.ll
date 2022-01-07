; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sun50i-cpufreq-nvmem.c_sun50i_cpufreq_get_efuse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sun50i-cpufreq-nvmem.c_sun50i_cpufreq_get_efuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmem_cell = type opaque
%struct.device_node = type { i32 }
%struct.device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"allwinner,sun50i-h6-operating-points\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not get nvmem cell: %ld\0A\00", align 1
@NVMEM_SHIFT = common dso_local global i32 0, align 4
@NVMEM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @sun50i_cpufreq_get_efuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun50i_cpufreq_get_efuse(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.nvmem_cell*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = call %struct.device* @get_cpu_device(i32 0)
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = icmp ne %struct.device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %91

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.device_node* @dev_pm_opp_of_get_opp_desc_node(%struct.device* %18)
  store %struct.device_node* %19, %struct.device_node** %5, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %91

25:                                               ; preds = %17
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = call i32 @of_device_is_compatible(%struct.device_node* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = call i32 @of_node_put(%struct.device_node* %31)
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %91

35:                                               ; preds = %25
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = call i32* @of_nvmem_cell_get(%struct.device_node* %36, i32* null)
  %38 = bitcast i32* %37 to %struct.nvmem_cell*
  store %struct.nvmem_cell* %38, %struct.nvmem_cell** %4, align 8
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  %40 = call i32 @of_node_put(%struct.device_node* %39)
  %41 = load %struct.nvmem_cell*, %struct.nvmem_cell** %4, align 8
  %42 = bitcast %struct.nvmem_cell* %41 to i32*
  %43 = call i64 @IS_ERR(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %35
  %46 = load %struct.nvmem_cell*, %struct.nvmem_cell** %4, align 8
  %47 = bitcast %struct.nvmem_cell* %46 to i32*
  %48 = call i32 @PTR_ERR(i32* %47)
  %49 = load i32, i32* @EPROBE_DEFER, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.nvmem_cell*, %struct.nvmem_cell** %4, align 8
  %54 = bitcast %struct.nvmem_cell* %53 to i32*
  %55 = call i32 @PTR_ERR(i32* %54)
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %45
  %58 = load %struct.nvmem_cell*, %struct.nvmem_cell** %4, align 8
  %59 = bitcast %struct.nvmem_cell* %58 to i32*
  %60 = call i32 @PTR_ERR(i32* %59)
  store i32 %60, i32* %2, align 4
  br label %91

61:                                               ; preds = %35
  %62 = load %struct.nvmem_cell*, %struct.nvmem_cell** %4, align 8
  %63 = bitcast %struct.nvmem_cell* %62 to i32*
  %64 = call i32* @nvmem_cell_read(i32* %63, i64* %9)
  store i32* %64, i32** %7, align 8
  %65 = load %struct.nvmem_cell*, %struct.nvmem_cell** %4, align 8
  %66 = bitcast %struct.nvmem_cell* %65 to i32*
  %67 = call i32 @nvmem_cell_put(i32* %66)
  %68 = load i32*, i32** %7, align 8
  %69 = call i64 @IS_ERR(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @PTR_ERR(i32* %72)
  store i32 %73, i32* %2, align 4
  br label %91

74:                                               ; preds = %61
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @NVMEM_SHIFT, align 4
  %78 = ashr i32 %76, %77
  %79 = load i32, i32* @NVMEM_MASK, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  switch i32 %81, label %86 [
    i32 1, label %82
    i32 3, label %84
  ]

82:                                               ; preds = %74
  %83 = load i32*, i32** %3, align 8
  store i32 1, i32* %83, align 4
  br label %88

84:                                               ; preds = %74
  %85 = load i32*, i32** %3, align 8
  store i32 2, i32* %85, align 4
  br label %88

86:                                               ; preds = %74
  %87 = load i32*, i32** %3, align 8
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %86, %84, %82
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @kfree(i32* %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %88, %71, %57, %30, %22, %14
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.device* @get_cpu_device(i32) #1

declare dso_local %struct.device_node* @dev_pm_opp_of_get_opp_desc_node(%struct.device*) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32* @of_nvmem_cell_get(%struct.device_node*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32* @nvmem_cell_read(i32*, i64*) #1

declare dso_local i32 @nvmem_cell_put(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
