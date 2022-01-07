; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_add_index_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_add_index_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, i64, i32 }
%struct.cache_entry = type { i32 }

@ADD_CACHE_JUST_APPEND = common dso_local global i32 0, align 4
@CE_ENTRY_ADDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_index_entry(%struct.index_state* %0, %struct.cache_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @ADD_CACHE_JUST_APPEND, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.index_state*, %struct.index_state** %5, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  br label %30

18:                                               ; preds = %3
  %19 = load %struct.index_state*, %struct.index_state** %5, align 8
  %20 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @add_index_entry_with_check(%struct.index_state* %19, %struct.cache_entry* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %83

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %14
  %31 = load %struct.index_state*, %struct.index_state** %5, align 8
  %32 = getelementptr inbounds %struct.index_state, %struct.index_state* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.index_state*, %struct.index_state** %5, align 8
  %35 = getelementptr inbounds %struct.index_state, %struct.index_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = load %struct.index_state*, %struct.index_state** %5, align 8
  %39 = getelementptr inbounds %struct.index_state, %struct.index_state* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ALLOC_GROW(i64 %33, i32 %37, i32 %40)
  %42 = load %struct.index_state*, %struct.index_state** %5, align 8
  %43 = getelementptr inbounds %struct.index_state, %struct.index_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.index_state*, %struct.index_state** %5, align 8
  %47 = getelementptr inbounds %struct.index_state, %struct.index_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  %51 = icmp sgt i32 %48, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %30
  %53 = load %struct.index_state*, %struct.index_state** %5, align 8
  %54 = getelementptr inbounds %struct.index_state, %struct.index_state* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = add nsw i64 %58, 1
  %60 = load %struct.index_state*, %struct.index_state** %5, align 8
  %61 = getelementptr inbounds %struct.index_state, %struct.index_state* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = load %struct.index_state*, %struct.index_state** %5, align 8
  %67 = getelementptr inbounds %struct.index_state, %struct.index_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sub nsw i32 %70, 1
  %72 = call i32 @MOVE_ARRAY(i64 %59, i64 %65, i32 %71)
  br label %73

73:                                               ; preds = %52, %30
  %74 = load %struct.index_state*, %struct.index_state** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %77 = call i32 @set_index_entry(%struct.index_state* %74, i32 %75, %struct.cache_entry* %76)
  %78 = load i32, i32* @CE_ENTRY_ADDED, align 4
  %79 = load %struct.index_state*, %struct.index_state** %5, align 8
  %80 = getelementptr inbounds %struct.index_state, %struct.index_state* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %73, %25
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @add_index_entry_with_check(%struct.index_state*, %struct.cache_entry*, i32) #1

declare dso_local i32 @ALLOC_GROW(i64, i32, i32) #1

declare dso_local i32 @MOVE_ARRAY(i64, i64, i32) #1

declare dso_local i32 @set_index_entry(%struct.index_state*, i32, %struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
