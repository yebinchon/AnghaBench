; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkt_dflt.c__omap2_module_wait_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkt_dflt.c__omap2_module_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.clk_omap_reg*)*, i32 (%struct.clk_omap_reg*, i32*, i32*)*, i32 (i32, i32, i32, i32)* }
%struct.clk_omap_reg = type { i32 }
%struct.clk_hw_omap = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.clk_hw_omap*, %struct.clk_omap_reg*, i32*, i32*)*, i32 (%struct.clk_hw_omap*, %struct.clk_omap_reg*, i32*)* }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw_omap*)* @_omap2_module_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_omap2_module_wait_ready(%struct.clk_hw_omap* %0) #0 {
  %2 = alloca %struct.clk_hw_omap*, align 8
  %3 = alloca %struct.clk_omap_reg, align 4
  %4 = alloca %struct.clk_omap_reg, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %2, align 8
  %11 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %12 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32 (%struct.clk_hw_omap*, %struct.clk_omap_reg*, i32*)*, i32 (%struct.clk_hw_omap*, %struct.clk_omap_reg*, i32*)** %14, align 8
  %16 = icmp ne i32 (%struct.clk_hw_omap*, %struct.clk_omap_reg*, i32*)* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %1
  %18 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %19 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32 (%struct.clk_hw_omap*, %struct.clk_omap_reg*, i32*)*, i32 (%struct.clk_hw_omap*, %struct.clk_omap_reg*, i32*)** %21, align 8
  %23 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %24 = call i32 %22(%struct.clk_hw_omap* %23, %struct.clk_omap_reg* %3, i32* %5)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ti_clk_ll_ops, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.clk_omap_reg*)*, i32 (%struct.clk_omap_reg*)** %26, align 8
  %28 = call i32 %27(%struct.clk_omap_reg* %3)
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %17
  br label %66

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %37 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.clk_hw_omap*, %struct.clk_omap_reg*, i32*, i32*)*, i32 (%struct.clk_hw_omap*, %struct.clk_omap_reg*, i32*, i32*)** %39, align 8
  %41 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %42 = call i32 %40(%struct.clk_hw_omap* %41, %struct.clk_omap_reg* %4, i32* %6, i32* %7)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ti_clk_ll_ops, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32 (%struct.clk_omap_reg*, i32*, i32*)*, i32 (%struct.clk_omap_reg*, i32*, i32*)** %44, align 8
  %46 = call i32 %45(%struct.clk_omap_reg* %4, i32* %9, i32* %8)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %35
  %50 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 1, %51
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %55 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %54, i32 0, i32 0
  %56 = call i32 @clk_hw_get_name(i32* %55)
  %57 = call i32 @_wait_idlest_generic(%struct.clk_hw_omap* %50, %struct.clk_omap_reg* %4, i32 %52, i32 %53, i32 %56)
  br label %66

58:                                               ; preds = %35
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ti_clk_ll_ops, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 %61(i32 0, i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %33, %58, %49
  ret void
}

declare dso_local i32 @_wait_idlest_generic(%struct.clk_hw_omap*, %struct.clk_omap_reg*, i32, i32, i32) #1

declare dso_local i32 @clk_hw_get_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
