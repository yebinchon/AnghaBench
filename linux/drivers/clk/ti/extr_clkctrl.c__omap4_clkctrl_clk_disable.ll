; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkctrl.c__omap4_clkctrl_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkctrl.c__omap4_clkctrl_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i32)*, i32 (i32*)*, i32 (i32, i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_hw_omap = type { i32, i64, i32, i32 }
%union.omap4_timeout = type { i32 }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@OMAP4_MODULEMODE_MASK = common dso_local global i32 0, align 4
@NO_IDLEST = common dso_local global i32 0, align 4
@OMAP4_MAX_MODULE_DISABLE_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: failed to disable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @_omap4_clkctrl_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_omap4_clkctrl_clk_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_hw_omap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.omap4_timeout, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %6)
  store %struct.clk_hw_omap* %7, %struct.clk_hw_omap** %3, align 8
  %8 = bitcast %union.omap4_timeout* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %10 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %60

14:                                               ; preds = %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32 (i32*)*, i32 (i32*)** %16, align 8
  %18 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %19 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %18, i32 0, i32 2
  %20 = call i32 %17(i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @OMAP4_MODULEMODE_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32 (i32, i32*)*, i32 (i32, i32*)** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %30 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %29, i32 0, i32 2
  %31 = call i32 %27(i32 %28, i32* %30)
  %32 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %33 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @NO_IDLEST, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %14
  br label %60

39:                                               ; preds = %14
  br label %40

40:                                               ; preds = %58, %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32 (i32*)*, i32 (i32*)** %42, align 8
  %44 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %45 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %44, i32 0, i32 2
  %46 = call i32 %43(i32* %45)
  %47 = call i32 @_omap4_is_idle(i32 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load i32, i32* @OMAP4_MAX_MODULE_DISABLE_TIME, align 4
  %52 = call i64 @_omap4_is_timeout(%union.omap4_timeout* %5, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %56 = call i32 @clk_hw_get_name(%struct.clk_hw* %55)
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %59

58:                                               ; preds = %50
  br label %40

59:                                               ; preds = %54, %40
  br label %60

60:                                               ; preds = %59, %38, %13
  %61 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %62 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (i64, i32)*, i32 (i64, i32)** %67, align 8
  %69 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %70 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %73 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 %68(i64 %71, i32 %74)
  br label %76

76:                                               ; preds = %65, %60
  ret void
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @_omap4_is_idle(i32) #1

declare dso_local i64 @_omap4_is_timeout(%union.omap4_timeout*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
