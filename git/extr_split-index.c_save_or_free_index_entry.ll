; ModuleID = '/home/carl/AnghaBench/git/extr_split-index.c_save_or_free_index_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_split-index.c_save_or_free_index_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32 }

@CE_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_or_free_index_entry(%struct.index_state* %0, %struct.cache_entry* %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %4, align 8
  %5 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %6 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %56

9:                                                ; preds = %2
  %10 = load %struct.index_state*, %struct.index_state** %3, align 8
  %11 = getelementptr inbounds %struct.index_state, %struct.index_state* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %56

14:                                               ; preds = %9
  %15 = load %struct.index_state*, %struct.index_state** %3, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %56

21:                                               ; preds = %14
  %22 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %23 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.index_state*, %struct.index_state** %3, align 8
  %26 = getelementptr inbounds %struct.index_state, %struct.index_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sle i32 %24, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %21
  %34 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %35 = load %struct.index_state*, %struct.index_state** %3, align 8
  %36 = getelementptr inbounds %struct.index_state, %struct.index_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load %struct.cache_entry**, %struct.cache_entry*** %40, align 8
  %42 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %43 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %41, i64 %46
  %48 = load %struct.cache_entry*, %struct.cache_entry** %47, align 8
  %49 = icmp eq %struct.cache_entry* %34, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %33
  %51 = load i32, i32* @CE_REMOVE, align 4
  %52 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %53 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %59

56:                                               ; preds = %33, %21, %14, %9, %2
  %57 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %58 = call i32 @discard_cache_entry(%struct.cache_entry* %57)
  br label %59

59:                                               ; preds = %56, %50
  ret void
}

declare dso_local i32 @discard_cache_entry(%struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
