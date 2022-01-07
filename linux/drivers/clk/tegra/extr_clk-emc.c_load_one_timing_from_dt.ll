; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-emc.c_load_one_timing_from_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-emc.c_load_one_timing_from_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_clk_emc = type { i32 }
%struct.emc_timing = type { i32, i32, i8*, i8* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"timing %pOF: failed to read rate\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"nvidia,parent-clock-frequency\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"timing %pOF: failed to read parent rate\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"emc-parent\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"timing %pOF: failed to get parent clock\0A\00", align 1
@emc_parent_clk_names = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"timing %pOF: %s is not a valid parent\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_clk_emc*, %struct.emc_timing*, %struct.device_node*)* @load_one_timing_from_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_one_timing_from_dt(%struct.tegra_clk_emc* %0, %struct.emc_timing* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_clk_emc*, align 8
  %6 = alloca %struct.emc_timing*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.tegra_clk_emc* %0, %struct.tegra_clk_emc** %5, align 8
  store %struct.emc_timing* %1, %struct.emc_timing** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %11 = load %struct.device_node*, %struct.device_node** %7, align 8
  %12 = call i32 @of_property_read_u32(%struct.device_node* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %10)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.device_node*, %struct.device_node** %7, align 8
  %17 = call i32 (i8*, %struct.device_node*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %16)
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %98

19:                                               ; preds = %3
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %22 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load %struct.device_node*, %struct.device_node** %7, align 8
  %24 = call i32 @of_property_read_u32(%struct.device_node* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8** %10)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.device_node*, %struct.device_node** %7, align 8
  %29 = call i32 (i8*, %struct.device_node*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %98

31:                                               ; preds = %19
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %34 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.device_node*, %struct.device_node** %7, align 8
  %36 = call i32 @of_clk_get_by_name(%struct.device_node* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %37 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %38 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %40 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %31
  %45 = load %struct.device_node*, %struct.device_node** %7, align 8
  %46 = call i32 (i8*, %struct.device_node*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), %struct.device_node* %45)
  %47 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %48 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %4, align 4
  br label %98

51:                                               ; preds = %31
  %52 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %53 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %52, i32 0, i32 0
  store i32 255, i32* %53, align 8
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %76, %51
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** @emc_parent_clk_names, align 8
  %57 = call i32 @ARRAY_SIZE(i32* %56)
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %54
  %60 = load i32*, i32** @emc_parent_clk_names, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %66 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @__clk_get_name(i32 %67)
  %69 = call i32 @strcmp(i32 %64, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %74 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %79

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %54

79:                                               ; preds = %71, %54
  %80 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %81 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 255
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = load %struct.device_node*, %struct.device_node** %7, align 8
  %86 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %87 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @__clk_get_name(i32 %88)
  %90 = call i32 (i8*, %struct.device_node*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), %struct.device_node* %85, i32 %89)
  %91 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %92 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @clk_put(i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %98

97:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %84, %44, %27, %15
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*, ...) #1

declare dso_local i32 @of_clk_get_by_name(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @__clk_get_name(i32) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
