; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_fill_stat_cache_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_fill_stat_cache_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.cache_entry = type { i32, i32 }
%struct.stat = type { i32 }

@assume_unchanged = common dso_local global i64 0, align 8
@CE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_stat_cache_info(%struct.index_state* %0, %struct.cache_entry* %1, %struct.stat* %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca %struct.cache_entry*, align 8
  %6 = alloca %struct.stat*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %5, align 8
  store %struct.stat* %2, %struct.stat** %6, align 8
  %7 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %8 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %7, i32 0, i32 1
  %9 = load %struct.stat*, %struct.stat** %6, align 8
  %10 = call i32 @fill_stat_data(i32* %8, %struct.stat* %9)
  %11 = load i64, i64* @assume_unchanged, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* @CE_VALID, align 4
  %15 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %16 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %13, %3
  %20 = load %struct.stat*, %struct.stat** %6, align 8
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @S_ISREG(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %27 = call i32 @ce_mark_uptodate(%struct.cache_entry* %26)
  %28 = load %struct.index_state*, %struct.index_state** %4, align 8
  %29 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %30 = call i32 @mark_fsmonitor_valid(%struct.index_state* %28, %struct.cache_entry* %29)
  br label %31

31:                                               ; preds = %25, %19
  ret void
}

declare dso_local i32 @fill_stat_data(i32*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @ce_mark_uptodate(%struct.cache_entry*) #1

declare dso_local i32 @mark_fsmonitor_valid(%struct.index_state*, %struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
