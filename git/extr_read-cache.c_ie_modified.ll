; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_ie_modified.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_ie_modified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.cache_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.stat = type { i32 }

@MODE_CHANGED = common dso_local global i32 0, align 4
@TYPE_CHANGED = common dso_local global i32 0, align 4
@DATA_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ie_modified(%struct.index_state* %0, %struct.cache_entry* %1, %struct.stat* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %6, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %7, align 8
  store %struct.stat* %2, %struct.stat** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.index_state*, %struct.index_state** %6, align 8
  %13 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %14 = load %struct.stat*, %struct.stat** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @ie_match_stat(%struct.index_state* %12, %struct.cache_entry* %13, %struct.stat* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %60

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @MODE_CHANGED, align 4
  %23 = load i32, i32* @TYPE_CHANGED, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %60

29:                                               ; preds = %20
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @DATA_CHANGED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %36 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @S_ISGITLINK(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %42 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40, %34
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %60

48:                                               ; preds = %40, %29
  %49 = load %struct.index_state*, %struct.index_state** %6, align 8
  %50 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %51 = load %struct.stat*, %struct.stat** %8, align 8
  %52 = call i32 @ce_modified_check_fs(%struct.index_state* %49, %struct.cache_entry* %50, %struct.stat* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %5, align 4
  br label %60

59:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %55, %46, %27, %19
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @ie_match_stat(%struct.index_state*, %struct.cache_entry*, %struct.stat*, i32) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i32 @ce_modified_check_fs(%struct.index_state*, %struct.cache_entry*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
