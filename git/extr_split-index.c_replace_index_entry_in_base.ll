; ModuleID = '/home/carl/AnghaBench/git/extr_split-index.c_replace_index_entry_in_base.c'
source_filename = "/home/carl/AnghaBench/git/extr_split-index.c_replace_index_entry_in_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.cache_entry** }
%struct.cache_entry = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replace_index_entry_in_base(%struct.index_state* %0, %struct.cache_entry* %1, %struct.cache_entry* %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca %struct.cache_entry*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %5, align 8
  store %struct.cache_entry* %2, %struct.cache_entry** %6, align 8
  %7 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %8 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %85

11:                                               ; preds = %3
  %12 = load %struct.index_state*, %struct.index_state** %4, align 8
  %13 = getelementptr inbounds %struct.index_state, %struct.index_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %85

16:                                               ; preds = %11
  %17 = load %struct.index_state*, %struct.index_state** %4, align 8
  %18 = getelementptr inbounds %struct.index_state, %struct.index_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %85

23:                                               ; preds = %16
  %24 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %25 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.index_state*, %struct.index_state** %4, align 8
  %28 = getelementptr inbounds %struct.index_state, %struct.index_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %26, %33
  br i1 %34, label %35, label %85

35:                                               ; preds = %23
  %36 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %37 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %40 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %42 = load %struct.index_state*, %struct.index_state** %4, align 8
  %43 = getelementptr inbounds %struct.index_state, %struct.index_state* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load %struct.cache_entry**, %struct.cache_entry*** %47, align 8
  %49 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %50 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 1
  %53 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %48, i64 %52
  %54 = load %struct.cache_entry*, %struct.cache_entry** %53, align 8
  %55 = icmp ne %struct.cache_entry* %41, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %35
  %57 = load %struct.index_state*, %struct.index_state** %4, align 8
  %58 = getelementptr inbounds %struct.index_state, %struct.index_state* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load %struct.cache_entry**, %struct.cache_entry*** %62, align 8
  %64 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %65 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, 1
  %68 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %63, i64 %67
  %69 = load %struct.cache_entry*, %struct.cache_entry** %68, align 8
  %70 = call i32 @discard_cache_entry(%struct.cache_entry* %69)
  br label %71

71:                                               ; preds = %56, %35
  %72 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %73 = load %struct.index_state*, %struct.index_state** %4, align 8
  %74 = getelementptr inbounds %struct.index_state, %struct.index_state* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load %struct.cache_entry**, %struct.cache_entry*** %78, align 8
  %80 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %81 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %82, 1
  %84 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %79, i64 %83
  store %struct.cache_entry* %72, %struct.cache_entry** %84, align 8
  br label %85

85:                                               ; preds = %71, %23, %16, %11, %3
  ret void
}

declare dso_local i32 @discard_cache_entry(%struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
