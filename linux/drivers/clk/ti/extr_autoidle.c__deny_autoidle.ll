; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_autoidle.c__deny_autoidle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_autoidle.c__deny_autoidle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)*, i32 (i32, i32*)* }
%struct.clk_ti_autoidle = type { i32, i32, i32 }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@AUTOIDLE_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_ti_autoidle*)* @_deny_autoidle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_deny_autoidle(%struct.clk_ti_autoidle* %0) #0 {
  %2 = alloca %struct.clk_ti_autoidle*, align 8
  %3 = alloca i32, align 4
  store %struct.clk_ti_autoidle* %0, %struct.clk_ti_autoidle** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32 (i32*)*, i32 (i32*)** %5, align 8
  %7 = load %struct.clk_ti_autoidle*, %struct.clk_ti_autoidle** %2, align 8
  %8 = getelementptr inbounds %struct.clk_ti_autoidle, %struct.clk_ti_autoidle* %7, i32 0, i32 2
  %9 = call i32 %6(i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.clk_ti_autoidle*, %struct.clk_ti_autoidle** %2, align 8
  %11 = getelementptr inbounds %struct.clk_ti_autoidle, %struct.clk_ti_autoidle* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AUTOIDLE_LOW, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.clk_ti_autoidle*, %struct.clk_ti_autoidle** %2, align 8
  %18 = getelementptr inbounds %struct.clk_ti_autoidle, %struct.clk_ti_autoidle* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.clk_ti_autoidle*, %struct.clk_ti_autoidle** %2, align 8
  %25 = getelementptr inbounds %struct.clk_ti_autoidle, %struct.clk_ti_autoidle* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %23, %16
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32 (i32, i32*)*, i32 (i32, i32*)** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.clk_ti_autoidle*, %struct.clk_ti_autoidle** %2, align 8
  %37 = getelementptr inbounds %struct.clk_ti_autoidle, %struct.clk_ti_autoidle* %36, i32 0, i32 2
  %38 = call i32 %34(i32 %35, i32* %37)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
