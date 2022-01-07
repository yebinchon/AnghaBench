; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_init_fixed_factor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_init_fixed_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adpll_data = type { i32 }
%struct.clk = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clk_unregister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_adpll_data*, i32, i8*, %struct.clk*, i32, i32)* @ti_adpll_init_fixed_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_adpll_init_fixed_factor(%struct.ti_adpll_data* %0, i32 %1, i8* %2, %struct.clk* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ti_adpll_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.clk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.clk*, align 8
  store %struct.ti_adpll_data* %0, %struct.ti_adpll_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store %struct.clk* %3, %struct.clk** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  %20 = load i8*, i8** %10, align 8
  %21 = call i8* @ti_adpll_clk_get_name(%struct.ti_adpll_data* %17, i32 %19, i8* %20)
  store i8* %21, i8** %14, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %53

27:                                               ; preds = %6
  %28 = load %struct.clk*, %struct.clk** %11, align 8
  %29 = call i8* @__clk_get_name(%struct.clk* %28)
  store i8* %29, i8** %15, align 8
  %30 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %31 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %14, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call %struct.clk* @clk_register_fixed_factor(i32 %32, i8* %33, i8* %34, i32 0, i32 %35, i32 %36)
  store %struct.clk* %37, %struct.clk** %16, align 8
  %38 = load %struct.clk*, %struct.clk** %16, align 8
  %39 = call i64 @IS_ERR(%struct.clk* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load %struct.clk*, %struct.clk** %16, align 8
  %43 = call i32 @PTR_ERR(%struct.clk* %42)
  store i32 %43, i32* %7, align 4
  br label %53

44:                                               ; preds = %27
  %45 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %46 = load %struct.clk*, %struct.clk** %16, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  %50 = load i8*, i8** %14, align 8
  %51 = load i32, i32* @clk_unregister, align 4
  %52 = call i32 @ti_adpll_setup_clock(%struct.ti_adpll_data* %45, %struct.clk* %46, i32 %47, i32 %49, i8* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %44, %41, %24
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i8* @ti_adpll_clk_get_name(%struct.ti_adpll_data*, i32, i8*) #1

declare dso_local i8* @__clk_get_name(%struct.clk*) #1

declare dso_local %struct.clk* @clk_register_fixed_factor(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @ti_adpll_setup_clock(%struct.ti_adpll_data*, %struct.clk*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
