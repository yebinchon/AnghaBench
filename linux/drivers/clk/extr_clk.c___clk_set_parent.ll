; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c___clk_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c___clk_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_core*, %struct.clk_core*, i32)* @__clk_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clk_set_parent(%struct.clk_core* %0, %struct.clk_core* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_core*, align 8
  %6 = alloca %struct.clk_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.clk_core*, align 8
  store %struct.clk_core* %0, %struct.clk_core** %5, align 8
  store %struct.clk_core* %1, %struct.clk_core** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %12 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  %13 = call %struct.clk_core* @__clk_set_parent_before(%struct.clk_core* %11, %struct.clk_core* %12)
  store %struct.clk_core* %13, %struct.clk_core** %10, align 8
  %14 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %15 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  %16 = call i32 @trace_clk_set_parent(%struct.clk_core* %14, %struct.clk_core* %15)
  %17 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  %18 = icmp ne %struct.clk_core* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %3
  %20 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %21 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32, i32)*, i32 (i32, i32)** %23, align 8
  %25 = icmp ne i32 (i32, i32)* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %28 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (i32, i32)*, i32 (i32, i32)** %30, align 8
  %32 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %33 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 %31(i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %26, %19, %3
  %38 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %39 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  %40 = call i32 @trace_clk_set_parent_complete(%struct.clk_core* %38, %struct.clk_core* %39)
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = call i64 (...) @clk_enable_lock()
  store i64 %44, i64* %8, align 8
  %45 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %46 = load %struct.clk_core*, %struct.clk_core** %10, align 8
  %47 = call i32 @clk_reparent(%struct.clk_core* %45, %struct.clk_core* %46)
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @clk_enable_unlock(i64 %48)
  %50 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %51 = load %struct.clk_core*, %struct.clk_core** %10, align 8
  %52 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  %53 = call i32 @__clk_set_parent_after(%struct.clk_core* %50, %struct.clk_core* %51, %struct.clk_core* %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %60

55:                                               ; preds = %37
  %56 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %57 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  %58 = load %struct.clk_core*, %struct.clk_core** %10, align 8
  %59 = call i32 @__clk_set_parent_after(%struct.clk_core* %56, %struct.clk_core* %57, %struct.clk_core* %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %43
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.clk_core* @__clk_set_parent_before(%struct.clk_core*, %struct.clk_core*) #1

declare dso_local i32 @trace_clk_set_parent(%struct.clk_core*, %struct.clk_core*) #1

declare dso_local i32 @trace_clk_set_parent_complete(%struct.clk_core*, %struct.clk_core*) #1

declare dso_local i64 @clk_enable_lock(...) #1

declare dso_local i32 @clk_reparent(%struct.clk_core*, %struct.clk_core*) #1

declare dso_local i32 @clk_enable_unlock(i64) #1

declare dso_local i32 @__clk_set_parent_after(%struct.clk_core*, %struct.clk_core*, %struct.clk_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
