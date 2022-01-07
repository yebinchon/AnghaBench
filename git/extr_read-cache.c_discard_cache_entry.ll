; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_discard_cache_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_discard_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @discard_cache_entry(%struct.cache_entry* %0) #0 {
  %2 = alloca %struct.cache_entry*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %2, align 8
  %3 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  %4 = icmp ne %struct.cache_entry* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = call i64 (...) @should_validate_cache_entries()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  %10 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  %11 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @cache_entry_size(i32 %12)
  %14 = call i32 @memset(%struct.cache_entry* %9, i32 205, i32 %13)
  br label %15

15:                                               ; preds = %8, %5, %1
  %16 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  %17 = icmp ne %struct.cache_entry* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  %20 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %27

24:                                               ; preds = %18, %15
  %25 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  %26 = call i32 @free(%struct.cache_entry* %25)
  br label %27

27:                                               ; preds = %24, %23
  ret void
}

declare dso_local i64 @should_validate_cache_entries(...) #1

declare dso_local i32 @memset(%struct.cache_entry*, i32, i32) #1

declare dso_local i32 @cache_entry_size(i32) #1

declare dso_local i32 @free(%struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
