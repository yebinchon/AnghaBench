; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_background_thread.c_background_thread_boot1.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_background_thread.c_background_thread_boot1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@CACHELINE = common dso_local global i32 0, align 4
@DEFAULT_NUM_BACKGROUND_THREAD = common dso_local global i32 0, align 4
@MAX_BACKGROUND_THREAD_LIMIT = common dso_local global i32 0, align 4
@WITNESS_RANK_BACKGROUND_THREAD = common dso_local global i32 0, align 4
@WITNESS_RANK_BACKGROUND_THREAD_GLOBAL = common dso_local global i32 0, align 4
@background_thread_info = common dso_local global %struct.TYPE_4__* null, align 8
@background_thread_lock = common dso_local global i32 0, align 4
@background_thread_stopped = common dso_local global i32 0, align 4
@have_background_thread = common dso_local global i32 0, align 4
@malloc_mutex_address_ordered = common dso_local global i32 0, align 4
@malloc_mutex_rank_exclusive = common dso_local global i32 0, align 4
@max_background_threads = common dso_local global i32 0, align 4
@opt_background_thread = common dso_local global i32 0, align 4
@opt_max_background_threads = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @background_thread_boot1(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
