; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c___clk_set_parent_before.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c___clk_set_parent_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i32, i64, %struct.clk_core* }

@CLK_OPS_PARENT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_core* (%struct.clk_core*, %struct.clk_core*)* @__clk_set_parent_before to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_core* @__clk_set_parent_before(%struct.clk_core* %0, %struct.clk_core* %1) #0 {
  %3 = alloca %struct.clk_core*, align 8
  %4 = alloca %struct.clk_core*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_core*, align 8
  store %struct.clk_core* %0, %struct.clk_core** %3, align 8
  store %struct.clk_core* %1, %struct.clk_core** %4, align 8
  %7 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %8 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %7, i32 0, i32 2
  %9 = load %struct.clk_core*, %struct.clk_core** %8, align 8
  store %struct.clk_core* %9, %struct.clk_core** %6, align 8
  %10 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %11 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CLK_OPS_PARENT_ENABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  %18 = call i32 @clk_core_prepare_enable(%struct.clk_core* %17)
  %19 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %20 = call i32 @clk_core_prepare_enable(%struct.clk_core* %19)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %23 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %28 = call i32 @clk_core_prepare_enable(%struct.clk_core* %27)
  %29 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %30 = call i32 @clk_core_enable_lock(%struct.clk_core* %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = call i64 (...) @clk_enable_lock()
  store i64 %32, i64* %5, align 8
  %33 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %34 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %35 = call i32 @clk_reparent(%struct.clk_core* %33, %struct.clk_core* %34)
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @clk_enable_unlock(i64 %36)
  %38 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  ret %struct.clk_core* %38
}

declare dso_local i32 @clk_core_prepare_enable(%struct.clk_core*) #1

declare dso_local i32 @clk_core_enable_lock(%struct.clk_core*) #1

declare dso_local i64 @clk_enable_lock(...) #1

declare dso_local i32 @clk_reparent(%struct.clk_core*, %struct.clk_core*) #1

declare dso_local i32 @clk_enable_unlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
