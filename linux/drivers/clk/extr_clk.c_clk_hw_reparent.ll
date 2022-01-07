; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_hw_reparent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_hw_reparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clk_hw_reparent(%struct.clk_hw* %0, %struct.clk_hw* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store %struct.clk_hw* %1, %struct.clk_hw** %4, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %6 = icmp ne %struct.clk_hw* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %22

8:                                                ; preds = %2
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = icmp ne %struct.clk_hw* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  br label %19

15:                                               ; preds = %8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %17 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi i32* [ null, %14 ], [ %18, %15 ]
  %21 = call i32 @clk_core_reparent(i32* %11, i32* %20)
  br label %22

22:                                               ; preds = %19, %7
  ret void
}

declare dso_local i32 @clk_core_reparent(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
