; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_r9a06g032_register_dualgate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_r9a06g032_register_dualgate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.r9a06g032_priv = type { i32 }
%struct.r9a06g032_clkdesc = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.r9a06g032_clk_dualgate = type { %struct.TYPE_7__, %struct.TYPE_5__*, i32, i32, %struct.r9a06g032_priv* }
%struct.TYPE_7__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8**, i32, i32, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@r9a06g032_clk_dualgate_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@CLK_IS_CRITICAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s was enabled, making read-only\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.r9a06g032_priv*, i8*, %struct.r9a06g032_clkdesc*, i32)* @r9a06g032_register_dualgate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @r9a06g032_register_dualgate(%struct.r9a06g032_priv* %0, i8* %1, %struct.r9a06g032_clkdesc* %2, i32 %3) #0 {
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.r9a06g032_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.r9a06g032_clkdesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.r9a06g032_clk_dualgate*, align 8
  %11 = alloca %struct.clk*, align 8
  %12 = alloca %struct.clk_init_data, align 8
  store %struct.r9a06g032_priv* %0, %struct.r9a06g032_priv** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.r9a06g032_clkdesc* %2, %struct.r9a06g032_clkdesc** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.r9a06g032_clk_dualgate* @kzalloc(i32 32, i32 %13)
  store %struct.r9a06g032_clk_dualgate* %14, %struct.r9a06g032_clk_dualgate** %10, align 8
  %15 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %10, align 8
  %16 = icmp ne %struct.r9a06g032_clk_dualgate* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.clk* null, %struct.clk** %5, align 8
  br label %103

18:                                               ; preds = %4
  %19 = load %struct.r9a06g032_priv*, %struct.r9a06g032_priv** %6, align 8
  %20 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %10, align 8
  %21 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, %struct.r9a06g032_clk_dualgate* %20, i32 0, i32 4
  store %struct.r9a06g032_priv* %19, %struct.r9a06g032_priv** %21, align 8
  %22 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %8, align 8
  %23 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %10, align 8
  %26 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, %struct.r9a06g032_clk_dualgate* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %10, align 8
  %29 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, %struct.r9a06g032_clk_dualgate* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %8, align 8
  %31 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %10, align 8
  %35 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, %struct.r9a06g032_clk_dualgate* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 %33, i32* %38, align 4
  %39 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %8, align 8
  %40 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %10, align 8
  %44 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, %struct.r9a06g032_clk_dualgate* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 4
  %48 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %8, align 8
  %49 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %10, align 8
  %53 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, %struct.r9a06g032_clk_dualgate* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %51, i32* %56, align 4
  %57 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %8, align 8
  %58 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %10, align 8
  %62 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, %struct.r9a06g032_clk_dualgate* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %60, i32* %65, align 4
  %66 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %8, align 8
  %67 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 4
  store i32 %68, i32* %69, align 8
  %70 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 3
  store i32* @r9a06g032_clk_dualgate_ops, i32** %70, align 8
  %71 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %72 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 2
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 0
  store i8** %7, i8*** %73, align 8
  %74 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 1
  store i32 1, i32* %74, align 8
  %75 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %10, align 8
  %76 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, %struct.r9a06g032_clk_dualgate* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store %struct.clk_init_data* %12, %struct.clk_init_data** %77, align 8
  %78 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %10, align 8
  %79 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, %struct.r9a06g032_clk_dualgate* %78, i32 0, i32 0
  %80 = call i64 @r9a06g032_clk_dualgate_is_enabled(%struct.TYPE_7__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %18
  %83 = load i32, i32* @CLK_IS_CRITICAL, align 4
  %84 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  %87 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %8, align 8
  %88 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %82, %18
  %92 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %10, align 8
  %93 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, %struct.r9a06g032_clk_dualgate* %92, i32 0, i32 0
  %94 = call %struct.clk* @clk_register(i32* null, %struct.TYPE_7__* %93)
  store %struct.clk* %94, %struct.clk** %11, align 8
  %95 = load %struct.clk*, %struct.clk** %11, align 8
  %96 = call i64 @IS_ERR(%struct.clk* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %10, align 8
  %100 = call i32 @kfree(%struct.r9a06g032_clk_dualgate* %99)
  store %struct.clk* null, %struct.clk** %5, align 8
  br label %103

101:                                              ; preds = %91
  %102 = load %struct.clk*, %struct.clk** %11, align 8
  store %struct.clk* %102, %struct.clk** %5, align 8
  br label %103

103:                                              ; preds = %101, %98, %17
  %104 = load %struct.clk*, %struct.clk** %5, align 8
  ret %struct.clk* %104
}

declare dso_local %struct.r9a06g032_clk_dualgate* @kzalloc(i32, i32) #1

declare dso_local i64 @r9a06g032_clk_dualgate_is_enabled(%struct.TYPE_7__*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.clk* @clk_register(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @kfree(%struct.r9a06g032_clk_dualgate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
