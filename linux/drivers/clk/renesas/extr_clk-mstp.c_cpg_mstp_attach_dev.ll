; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_clk-mstp.c_cpg_mstp_attach_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_clk-mstp.c_cpg_mstp_attach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_phandle_args = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"renesas,cpg-mstp-clocks\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"zb_clk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpg_mstp_attach_dev(%struct.generic_pm_domain* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.generic_pm_domain*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.of_phandle_args, align 4
  %8 = alloca %struct.clk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %32, %2
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @of_parse_phandle_with_args(%struct.device_node* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %16, %struct.of_phandle_args* %7)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @of_device_is_compatible(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %39

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @of_node_name_eq(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %39

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @of_node_put(i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %14

38:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %71

39:                                               ; preds = %31, %25
  %40 = call %struct.clk* @of_clk_get_from_provider(%struct.of_phandle_args* %7)
  store %struct.clk* %40, %struct.clk** %8, align 8
  %41 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @of_node_put(i32 %42)
  %44 = load %struct.clk*, %struct.clk** %8, align 8
  %45 = call i64 @IS_ERR(%struct.clk* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.clk*, %struct.clk** %8, align 8
  %49 = call i32 @PTR_ERR(%struct.clk* %48)
  store i32 %49, i32* %3, align 4
  br label %71

50:                                               ; preds = %39
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = call i32 @pm_clk_create(%struct.device* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %67

56:                                               ; preds = %50
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = load %struct.clk*, %struct.clk** %8, align 8
  %59 = call i32 @pm_clk_add_clk(%struct.device* %57, %struct.clk* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %64

63:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %71

64:                                               ; preds = %62
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = call i32 @pm_clk_destroy(%struct.device* %65)
  br label %67

67:                                               ; preds = %64, %55
  %68 = load %struct.clk*, %struct.clk** %8, align 8
  %69 = call i32 @clk_put(%struct.clk* %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %63, %47, %38
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i64 @of_node_name_eq(i32, i8*) #1

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
