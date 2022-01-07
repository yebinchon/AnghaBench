; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clkdev.c_clkdev_add_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clkdev.c_clkdev_add_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_lookup = type { i32, i32, i32 }

@clocks_mutex = common dso_local global i32 0, align 4
@clocks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clkdev_add_table(%struct.clk_lookup* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_lookup*, align 8
  %4 = alloca i64, align 8
  store %struct.clk_lookup* %0, %struct.clk_lookup** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = call i32 @mutex_lock(i32* @clocks_mutex)
  br label %6

6:                                                ; preds = %10, %2
  %7 = load i64, i64* %4, align 8
  %8 = add i64 %7, -1
  store i64 %8, i64* %4, align 8
  %9 = icmp ne i64 %7, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load %struct.clk_lookup*, %struct.clk_lookup** %3, align 8
  %12 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @__clk_get_hw(i32 %13)
  %15 = load %struct.clk_lookup*, %struct.clk_lookup** %3, align 8
  %16 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.clk_lookup*, %struct.clk_lookup** %3, align 8
  %18 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %17, i32 0, i32 0
  %19 = call i32 @list_add_tail(i32* %18, i32* @clocks)
  %20 = load %struct.clk_lookup*, %struct.clk_lookup** %3, align 8
  %21 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %20, i32 1
  store %struct.clk_lookup* %21, %struct.clk_lookup** %3, align 8
  br label %6

22:                                               ; preds = %6
  %23 = call i32 @mutex_unlock(i32* @clocks_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__clk_get_hw(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
