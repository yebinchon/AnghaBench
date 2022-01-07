; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_renesas-cpg-mssr.c_cpg_mssr_attach_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_renesas-cpg-mssr.c_cpg_mssr_attach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpg_mssr_clk_domain = type { i32 }
%struct.generic_pm_domain = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_phandle_args = type { i32 }
%struct.clk = type { i32 }

@cpg_mssr_clk_domain = common dso_local global %struct.cpg_mssr_clk_domain* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"CPG/MSSR clock domain not yet available\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpg_mssr_attach_dev(%struct.generic_pm_domain* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.generic_pm_domain*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.cpg_mssr_clk_domain*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.of_phandle_args, align 4
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %12 = load %struct.cpg_mssr_clk_domain*, %struct.cpg_mssr_clk_domain** @cpg_mssr_clk_domain, align 8
  store %struct.cpg_mssr_clk_domain* %12, %struct.cpg_mssr_clk_domain** %6, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %7, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.cpg_mssr_clk_domain*, %struct.cpg_mssr_clk_domain** %6, align 8
  %17 = icmp ne %struct.cpg_mssr_clk_domain* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EPROBE_DEFER, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %74

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %35, %23
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @of_parse_phandle_with_args(%struct.device_node* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %26, %struct.of_phandle_args* %8)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.cpg_mssr_clk_domain*, %struct.cpg_mssr_clk_domain** %6, align 8
  %32 = call i64 @cpg_mssr_is_pm_clk(%struct.of_phandle_args* %8, %struct.cpg_mssr_clk_domain* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %42

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @of_node_put(i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %24

41:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %74

42:                                               ; preds = %34
  %43 = call %struct.clk* @of_clk_get_from_provider(%struct.of_phandle_args* %8)
  store %struct.clk* %43, %struct.clk** %9, align 8
  %44 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @of_node_put(i32 %45)
  %47 = load %struct.clk*, %struct.clk** %9, align 8
  %48 = call i64 @IS_ERR(%struct.clk* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.clk*, %struct.clk** %9, align 8
  %52 = call i32 @PTR_ERR(%struct.clk* %51)
  store i32 %52, i32* %3, align 4
  br label %74

53:                                               ; preds = %42
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = call i32 @pm_clk_create(%struct.device* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %70

59:                                               ; preds = %53
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = load %struct.clk*, %struct.clk** %9, align 8
  %62 = call i32 @pm_clk_add_clk(%struct.device* %60, %struct.clk* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %67

66:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %74

67:                                               ; preds = %65
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = call i32 @pm_clk_destroy(%struct.device* %68)
  br label %70

70:                                               ; preds = %67, %58
  %71 = load %struct.clk*, %struct.clk** %9, align 8
  %72 = call i32 @clk_put(%struct.clk* %71)
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %66, %50, %41, %18
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local i64 @cpg_mssr_is_pm_clk(%struct.of_phandle_args*, %struct.cpg_mssr_clk_domain*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local %struct.clk* @of_clk_get_from_provider(%struct.of_phandle_args*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @pm_clk_create(%struct.device*) #1

declare dso_local i32 @pm_clk_add_clk(%struct.device*, %struct.clk*) #1

declare dso_local i32 @pm_clk_destroy(%struct.device*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
