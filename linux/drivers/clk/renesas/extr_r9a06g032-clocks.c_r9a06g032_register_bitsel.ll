; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_r9a06g032_register_bitsel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_r9a06g032_register_bitsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.r9a06g032_priv = type { i32 }
%struct.r9a06g032_clkdesc = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.r9a06g032_clk_bitsel = type { %struct.TYPE_4__, i32, i32, %struct.r9a06g032_priv* }
%struct.TYPE_4__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8**, i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"clk_pll_usb\00", align 1
@clk_bitselect_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.r9a06g032_priv*, i8*, %struct.r9a06g032_clkdesc*)* @r9a06g032_register_bitsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @r9a06g032_register_bitsel(%struct.r9a06g032_priv* %0, i8* %1, %struct.r9a06g032_clkdesc* %2) #0 {
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.r9a06g032_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.r9a06g032_clkdesc*, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca %struct.r9a06g032_clk_bitsel*, align 8
  %10 = alloca %struct.clk_init_data, align 8
  %11 = alloca [2 x i8*], align 16
  store %struct.r9a06g032_priv* %0, %struct.r9a06g032_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.r9a06g032_clkdesc* %2, %struct.r9a06g032_clkdesc** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.r9a06g032_clk_bitsel* @kzalloc(i32 24, i32 %12)
  store %struct.r9a06g032_clk_bitsel* %13, %struct.r9a06g032_clk_bitsel** %9, align 8
  %14 = load %struct.r9a06g032_clk_bitsel*, %struct.r9a06g032_clk_bitsel** %9, align 8
  %15 = icmp ne %struct.r9a06g032_clk_bitsel* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.clk* null, %struct.clk** %4, align 8
  br label %59

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  store i8* %18, i8** %19, align 16
  %20 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %7, align 8
  %22 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 4
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 3
  store i32* @clk_bitselect_ops, i32** %25, align 8
  %26 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %29 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 0
  store i8** %28, i8*** %29, align 8
  %30 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 1
  store i32 2, i32* %30, align 8
  %31 = load %struct.r9a06g032_priv*, %struct.r9a06g032_priv** %5, align 8
  %32 = load %struct.r9a06g032_clk_bitsel*, %struct.r9a06g032_clk_bitsel** %9, align 8
  %33 = getelementptr inbounds %struct.r9a06g032_clk_bitsel, %struct.r9a06g032_clk_bitsel* %32, i32 0, i32 3
  store %struct.r9a06g032_priv* %31, %struct.r9a06g032_priv** %33, align 8
  %34 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %7, align 8
  %35 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.r9a06g032_clk_bitsel*, %struct.r9a06g032_clk_bitsel** %9, align 8
  %38 = getelementptr inbounds %struct.r9a06g032_clk_bitsel, %struct.r9a06g032_clk_bitsel* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %7, align 8
  %40 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.r9a06g032_clk_bitsel*, %struct.r9a06g032_clk_bitsel** %9, align 8
  %44 = getelementptr inbounds %struct.r9a06g032_clk_bitsel, %struct.r9a06g032_clk_bitsel* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.r9a06g032_clk_bitsel*, %struct.r9a06g032_clk_bitsel** %9, align 8
  %46 = getelementptr inbounds %struct.r9a06g032_clk_bitsel, %struct.r9a06g032_clk_bitsel* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store %struct.clk_init_data* %10, %struct.clk_init_data** %47, align 8
  %48 = load %struct.r9a06g032_clk_bitsel*, %struct.r9a06g032_clk_bitsel** %9, align 8
  %49 = getelementptr inbounds %struct.r9a06g032_clk_bitsel, %struct.r9a06g032_clk_bitsel* %48, i32 0, i32 0
  %50 = call %struct.clk* @clk_register(i32* null, %struct.TYPE_4__* %49)
  store %struct.clk* %50, %struct.clk** %8, align 8
  %51 = load %struct.clk*, %struct.clk** %8, align 8
  %52 = call i64 @IS_ERR(%struct.clk* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %17
  %55 = load %struct.r9a06g032_clk_bitsel*, %struct.r9a06g032_clk_bitsel** %9, align 8
  %56 = call i32 @kfree(%struct.r9a06g032_clk_bitsel* %55)
  store %struct.clk* null, %struct.clk** %4, align 8
  br label %59

57:                                               ; preds = %17
  %58 = load %struct.clk*, %struct.clk** %8, align 8
  store %struct.clk* %58, %struct.clk** %4, align 8
  br label %59

59:                                               ; preds = %57, %54, %16
  %60 = load %struct.clk*, %struct.clk** %4, align 8
  ret %struct.clk* %60
}

declare dso_local %struct.r9a06g032_clk_bitsel* @kzalloc(i32, i32) #1

declare dso_local %struct.clk* @clk_register(i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @kfree(%struct.r9a06g032_clk_bitsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
