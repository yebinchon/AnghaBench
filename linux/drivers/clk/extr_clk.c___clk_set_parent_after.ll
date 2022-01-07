; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c___clk_set_parent_after.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c___clk_set_parent_after.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i32, i64 }

@CLK_OPS_PARENT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_core*, %struct.clk_core*, %struct.clk_core*)* @__clk_set_parent_after to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__clk_set_parent_after(%struct.clk_core* %0, %struct.clk_core* %1, %struct.clk_core* %2) #0 {
  %4 = alloca %struct.clk_core*, align 8
  %5 = alloca %struct.clk_core*, align 8
  %6 = alloca %struct.clk_core*, align 8
  store %struct.clk_core* %0, %struct.clk_core** %4, align 8
  store %struct.clk_core* %1, %struct.clk_core** %5, align 8
  store %struct.clk_core* %2, %struct.clk_core** %6, align 8
  %7 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %8 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %13 = call i32 @clk_core_disable_lock(%struct.clk_core* %12)
  %14 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  %15 = call i32 @clk_core_disable_unprepare(%struct.clk_core* %14)
  br label %16

16:                                               ; preds = %11, %3
  %17 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %18 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CLK_OPS_PARENT_ENABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %25 = call i32 @clk_core_disable_unprepare(%struct.clk_core* %24)
  %26 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  %27 = call i32 @clk_core_disable_unprepare(%struct.clk_core* %26)
  br label %28

28:                                               ; preds = %23, %16
  ret void
}

declare dso_local i32 @clk_core_disable_lock(%struct.clk_core*) #1

declare dso_local i32 @clk_core_disable_unprepare(%struct.clk_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
