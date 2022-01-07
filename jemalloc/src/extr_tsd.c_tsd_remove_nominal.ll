; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_tsd.c_tsd_remove_nominal.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_tsd.c_tsd_remove_nominal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@tsd_state_nominal_max = common dso_local global i64 0, align 8
@tsd_nominal_tsds_lock = common dso_local global i32 0, align 4
@tsd_nominal_tsds = common dso_local global i32 0, align 4
@tcache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @tsd_remove_nominal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsd_remove_nominal(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_2__, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @tsd_in_nominal_list(i32* %4)
  %6 = call i32 @assert(i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @tsd_state_get(i32* %7)
  %9 = load i64, i64* @tsd_state_nominal_max, align 8
  %10 = icmp sle i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @tsd_tsdn(i32* %13)
  %15 = call i32 @malloc_mutex_lock(i32 %14, i32* @tsd_nominal_tsds_lock)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @tcache, align 4
  %18 = call i32 @TSD_MANGLE(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ql_remove(i32* @tsd_nominal_tsds, i32* %16, i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @tsd_tsdn(i32* %23)
  %25 = call i32 @malloc_mutex_unlock(i32 %24, i32* @tsd_nominal_tsds_lock)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tsd_in_nominal_list(i32*) #1

declare dso_local i64 @tsd_state_get(i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @ql_remove(i32*, i32*, i32) #1

declare dso_local i32 @TSD_MANGLE(i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
