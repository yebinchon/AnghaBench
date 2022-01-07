; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_fill_parent_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_fill_parent_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { %struct.clk_parent_map* }
%struct.clk_parent_map = type { %struct.clk_core*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.clk_core* }

@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_core*, i64)* @clk_core_fill_parent_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_core_fill_parent_index(%struct.clk_core* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_core*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_parent_map*, align 8
  %6 = alloca %struct.clk_core*, align 8
  store %struct.clk_core* %0, %struct.clk_core** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %8 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %7, i32 0, i32 0
  %9 = load %struct.clk_parent_map*, %struct.clk_parent_map** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.clk_parent_map, %struct.clk_parent_map* %9, i64 %10
  store %struct.clk_parent_map* %11, %struct.clk_parent_map** %5, align 8
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.clk_core* @ERR_PTR(i32 %13)
  store %struct.clk_core* %14, %struct.clk_core** %6, align 8
  %15 = load %struct.clk_parent_map*, %struct.clk_parent_map** %5, align 8
  %16 = getelementptr inbounds %struct.clk_parent_map, %struct.clk_parent_map* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.clk_parent_map*, %struct.clk_parent_map** %5, align 8
  %21 = getelementptr inbounds %struct.clk_parent_map, %struct.clk_parent_map* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.clk_core*, %struct.clk_core** %23, align 8
  store %struct.clk_core* %24, %struct.clk_core** %6, align 8
  %25 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  %26 = icmp ne %struct.clk_core* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @EPROBE_DEFER, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.clk_core* @ERR_PTR(i32 %29)
  store %struct.clk_core* %30, %struct.clk_core** %6, align 8
  br label %31

31:                                               ; preds = %27, %19
  br label %56

32:                                               ; preds = %2
  %33 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call %struct.clk_core* @clk_core_get(%struct.clk_core* %33, i64 %34)
  store %struct.clk_core* %35, %struct.clk_core** %6, align 8
  %36 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  %37 = call i64 @IS_ERR(%struct.clk_core* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %32
  %40 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  %41 = call i32 @PTR_ERR(%struct.clk_core* %40)
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.clk_parent_map*, %struct.clk_parent_map** %5, align 8
  %47 = getelementptr inbounds %struct.clk_parent_map, %struct.clk_parent_map* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.clk_parent_map*, %struct.clk_parent_map** %5, align 8
  %52 = getelementptr inbounds %struct.clk_parent_map, %struct.clk_parent_map* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call %struct.clk_core* @clk_core_lookup(i64 %53)
  store %struct.clk_core* %54, %struct.clk_core** %6, align 8
  br label %55

55:                                               ; preds = %50, %45, %39, %32
  br label %56

56:                                               ; preds = %55, %31
  %57 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  %58 = call i64 @IS_ERR(%struct.clk_core* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  %62 = load %struct.clk_parent_map*, %struct.clk_parent_map** %5, align 8
  %63 = getelementptr inbounds %struct.clk_parent_map, %struct.clk_parent_map* %62, i32 0, i32 0
  store %struct.clk_core* %61, %struct.clk_core** %63, align 8
  br label %64

64:                                               ; preds = %60, %56
  ret void
}

declare dso_local %struct.clk_core* @ERR_PTR(i32) #1

declare dso_local %struct.clk_core* @clk_core_get(%struct.clk_core*, i64) #1

declare dso_local i64 @IS_ERR(%struct.clk_core*) #1

declare dso_local i32 @PTR_ERR(%struct.clk_core*) #1

declare dso_local %struct.clk_core* @clk_core_lookup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
