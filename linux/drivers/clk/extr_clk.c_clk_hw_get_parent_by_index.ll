; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_hw_get_parent_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_hw_get_parent_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_core = type { %struct.clk_hw* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_core*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.clk_core* @clk_core_get_parent_by_index(i32 %8, i32 %9)
  store %struct.clk_core* %10, %struct.clk_core** %5, align 8
  %11 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %12 = icmp ne %struct.clk_core* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %16 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %15, i32 0, i32 0
  %17 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  br label %18

18:                                               ; preds = %14, %13
  %19 = phi %struct.clk_hw* [ null, %13 ], [ %17, %14 ]
  ret %struct.clk_hw* %19
}

declare dso_local %struct.clk_core* @clk_core_get_parent_by_index(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
