; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_r9a06g032_register_gate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_r9a06g032_register_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.r9a06g032_priv = type { i32 }
%struct.r9a06g032_clkdesc = type { i32, i32, i32 }
%struct.r9a06g032_clk_gate = type { %struct.TYPE_3__, i32, i32, %struct.r9a06g032_priv* }
%struct.TYPE_3__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8**, i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@r9a06g032_clk_gate_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@CLK_IS_CRITICAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s was enabled, making read-only\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.r9a06g032_priv*, i8*, %struct.r9a06g032_clkdesc*)* @r9a06g032_register_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @r9a06g032_register_gate(%struct.r9a06g032_priv* %0, i8* %1, %struct.r9a06g032_clkdesc* %2) #0 {
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.r9a06g032_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.r9a06g032_clkdesc*, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca %struct.r9a06g032_clk_gate*, align 8
  %10 = alloca %struct.clk_init_data, align 8
  store %struct.r9a06g032_priv* %0, %struct.r9a06g032_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.r9a06g032_clkdesc* %2, %struct.r9a06g032_clkdesc** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.r9a06g032_clk_gate* @kzalloc(i32 24, i32 %11)
  store %struct.r9a06g032_clk_gate* %12, %struct.r9a06g032_clk_gate** %9, align 8
  %13 = load %struct.r9a06g032_clk_gate*, %struct.r9a06g032_clk_gate** %9, align 8
  %14 = icmp ne %struct.r9a06g032_clk_gate* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.clk* null, %struct.clk** %4, align 8
  br label %77

16:                                               ; preds = %3
  %17 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %7, align 8
  %18 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 3
  store i32* @r9a06g032_clk_gate_ops, i32** %21, align 8
  %22 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %28

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %26
  %29 = phi i8** [ %6, %26 ], [ null, %27 ]
  %30 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 0
  store i8** %29, i8*** %30, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  %35 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = load %struct.r9a06g032_priv*, %struct.r9a06g032_priv** %5, align 8
  %37 = load %struct.r9a06g032_clk_gate*, %struct.r9a06g032_clk_gate** %9, align 8
  %38 = getelementptr inbounds %struct.r9a06g032_clk_gate, %struct.r9a06g032_clk_gate* %37, i32 0, i32 3
  store %struct.r9a06g032_priv* %36, %struct.r9a06g032_priv** %38, align 8
  %39 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %7, align 8
  %40 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.r9a06g032_clk_gate*, %struct.r9a06g032_clk_gate** %9, align 8
  %43 = getelementptr inbounds %struct.r9a06g032_clk_gate, %struct.r9a06g032_clk_gate* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %7, align 8
  %45 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.r9a06g032_clk_gate*, %struct.r9a06g032_clk_gate** %9, align 8
  %48 = getelementptr inbounds %struct.r9a06g032_clk_gate, %struct.r9a06g032_clk_gate* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.r9a06g032_clk_gate*, %struct.r9a06g032_clk_gate** %9, align 8
  %50 = getelementptr inbounds %struct.r9a06g032_clk_gate, %struct.r9a06g032_clk_gate* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store %struct.clk_init_data* %10, %struct.clk_init_data** %51, align 8
  %52 = load %struct.r9a06g032_clk_gate*, %struct.r9a06g032_clk_gate** %9, align 8
  %53 = getelementptr inbounds %struct.r9a06g032_clk_gate, %struct.r9a06g032_clk_gate* %52, i32 0, i32 0
  %54 = call i64 @r9a06g032_clk_gate_is_enabled(%struct.TYPE_3__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %28
  %57 = load i32, i32* @CLK_IS_CRITICAL, align 4
  %58 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %7, align 8
  %62 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %56, %28
  %66 = load %struct.r9a06g032_clk_gate*, %struct.r9a06g032_clk_gate** %9, align 8
  %67 = getelementptr inbounds %struct.r9a06g032_clk_gate, %struct.r9a06g032_clk_gate* %66, i32 0, i32 0
  %68 = call %struct.clk* @clk_register(i32* null, %struct.TYPE_3__* %67)
  store %struct.clk* %68, %struct.clk** %8, align 8
  %69 = load %struct.clk*, %struct.clk** %8, align 8
  %70 = call i64 @IS_ERR(%struct.clk* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.r9a06g032_clk_gate*, %struct.r9a06g032_clk_gate** %9, align 8
  %74 = call i32 @kfree(%struct.r9a06g032_clk_gate* %73)
  store %struct.clk* null, %struct.clk** %4, align 8
  br label %77

75:                                               ; preds = %65
  %76 = load %struct.clk*, %struct.clk** %8, align 8
  store %struct.clk* %76, %struct.clk** %4, align 8
  br label %77

77:                                               ; preds = %75, %72, %15
  %78 = load %struct.clk*, %struct.clk** %4, align 8
  ret %struct.clk* %78
}

declare dso_local %struct.r9a06g032_clk_gate* @kzalloc(i32, i32) #1

declare dso_local i64 @r9a06g032_clk_gate_is_enabled(%struct.TYPE_3__*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.clk* @clk_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @kfree(%struct.r9a06g032_clk_gate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
