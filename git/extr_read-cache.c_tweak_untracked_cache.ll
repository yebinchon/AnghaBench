; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_tweak_untracked_cache.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_tweak_untracked_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.index_state = type { i32 }

@the_repository = common dso_local global %struct.repository* null, align 8
@UNTRACKED_CACHE_REMOVE = common dso_local global i64 0, align 8
@UNTRACKED_CACHE_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*)* @tweak_untracked_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tweak_untracked_cache(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca %struct.repository*, align 8
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %4 = load %struct.repository*, %struct.repository** @the_repository, align 8
  store %struct.repository* %4, %struct.repository** %3, align 8
  %5 = load %struct.repository*, %struct.repository** %3, align 8
  %6 = call i32 @prepare_repo_settings(%struct.repository* %5)
  %7 = load %struct.repository*, %struct.repository** %3, align 8
  %8 = getelementptr inbounds %struct.repository, %struct.repository* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @UNTRACKED_CACHE_REMOVE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.index_state*, %struct.index_state** %2, align 8
  %15 = call i32 @remove_untracked_cache(%struct.index_state* %14)
  br label %26

16:                                               ; preds = %1
  %17 = load %struct.repository*, %struct.repository** %3, align 8
  %18 = getelementptr inbounds %struct.repository, %struct.repository* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UNTRACKED_CACHE_WRITE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.index_state*, %struct.index_state** %2, align 8
  %25 = call i32 @add_untracked_cache(%struct.index_state* %24)
  br label %26

26:                                               ; preds = %13, %23, %16
  ret void
}

declare dso_local i32 @prepare_repo_settings(%struct.repository*) #1

declare dso_local i32 @remove_untracked_cache(%struct.index_state*) #1

declare dso_local i32 @add_untracked_cache(%struct.index_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
