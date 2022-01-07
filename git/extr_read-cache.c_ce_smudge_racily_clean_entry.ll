; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_ce_smudge_racily_clean_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_ce_smudge_racily_clean_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.cache_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.stat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, %struct.cache_entry*)* @ce_smudge_racily_clean_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ce_smudge_racily_clean_entry(%struct.index_state* %0, %struct.cache_entry* %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca %struct.cache_entry*, align 8
  %5 = alloca %struct.stat, align 4
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %4, align 8
  %6 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %7 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @lstat(i32 %8, %struct.stat* %5)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %26

12:                                               ; preds = %2
  %13 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %14 = call i64 @ce_match_stat_basic(%struct.cache_entry* %13, %struct.stat* %5)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %26

17:                                               ; preds = %12
  %18 = load %struct.index_state*, %struct.index_state** %3, align 8
  %19 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %20 = call i64 @ce_modified_check_fs(%struct.index_state* %18, %struct.cache_entry* %19, %struct.stat* %5)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %24 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %11, %16, %22, %17
  ret void
}

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i64 @ce_match_stat_basic(%struct.cache_entry*, %struct.stat*) #1

declare dso_local i64 @ce_modified_check_fs(%struct.index_state*, %struct.cache_entry*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
