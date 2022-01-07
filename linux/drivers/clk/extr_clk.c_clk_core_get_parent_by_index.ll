; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_get_parent_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_get_parent_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.clk_core* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_core* (%struct.clk_core*, i64)* @clk_core_get_parent_by_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_core* @clk_core_get_parent_by_index(%struct.clk_core* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_core*, align 8
  %4 = alloca %struct.clk_core*, align 8
  %5 = alloca i64, align 8
  store %struct.clk_core* %0, %struct.clk_core** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %7 = icmp ne %struct.clk_core* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %11 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %9, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %16 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %8, %2
  store %struct.clk_core* null, %struct.clk_core** %3, align 8
  br label %41

20:                                               ; preds = %14
  %21 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %22 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.clk_core*, %struct.clk_core** %26, align 8
  %28 = icmp ne %struct.clk_core* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @clk_core_fill_parent_index(%struct.clk_core* %30, i64 %31)
  br label %33

33:                                               ; preds = %29, %20
  %34 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %35 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.clk_core*, %struct.clk_core** %39, align 8
  store %struct.clk_core* %40, %struct.clk_core** %3, align 8
  br label %41

41:                                               ; preds = %33, %19
  %42 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  ret %struct.clk_core* %42
}

declare dso_local i32 @clk_core_fill_parent_index(%struct.clk_core*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
