; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_tsd.c_tsd_data_init_nocleanup.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_tsd.c_tsd_data_init_nocleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tsd_state_reincarnated = common dso_local global i64 0, align 8
@tsd_state_minimal_initialized = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tsd_data_init_nocleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsd_data_init_nocleanup(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i64 @tsd_state_get(i32* %3)
  %5 = load i64, i64* @tsd_state_reincarnated, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @tsd_state_get(i32* %8)
  %10 = load i64, i64* @tsd_state_minimal_initialized, align 8
  %11 = icmp eq i64 %9, %10
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i1 [ true, %1 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @tsd_rtree_ctxp_get_unsafe(i32* %16)
  %18 = call i32 @rtree_ctx_data_init(i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32* @tsd_arenas_tdata_bypassp_get(i32* %19)
  store i32 1, i32* %20, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = call i32* @tsd_tcache_enabledp_get_unsafe(i32* %21)
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = call i32* @tsd_reentrancy_levelp_get(i32* %23)
  store i32 1, i32* %24, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @assert_tsd_data_cleanup_done(i32* %25)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tsd_state_get(i32*) #1

declare dso_local i32 @rtree_ctx_data_init(i32) #1

declare dso_local i32 @tsd_rtree_ctxp_get_unsafe(i32*) #1

declare dso_local i32* @tsd_arenas_tdata_bypassp_get(i32*) #1

declare dso_local i32* @tsd_tcache_enabledp_get_unsafe(i32*) #1

declare dso_local i32* @tsd_reentrancy_levelp_get(i32*) #1

declare dso_local i32 @assert_tsd_data_cleanup_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
