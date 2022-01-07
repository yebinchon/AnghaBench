; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_gdump_sub.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_gdump_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_prof = common dso_local global i32 0, align 4
@opt_prof = common dso_local global i64 0, align 8
@extent_state_active = common dso_local global i64 0, align 8
@LG_PAGE = common dso_local global i64 0, align 8
@curpages = common dso_local global i32 0, align 4
@ATOMIC_RELAXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @extent_gdump_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extent_gdump_sub(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @config_prof, align 4
  %7 = call i32 @cassert(i32 %6)
  %8 = load i64, i64* @opt_prof, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @extent_state_get(i32* %11)
  %13 = load i64, i64* @extent_state_active, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @extent_size_get(i32* %16)
  %18 = load i64, i64* @LG_PAGE, align 8
  %19 = lshr i64 %17, %18
  store i64 %19, i64* %5, align 8
  %20 = load i32, i32* @ATOMIC_RELAXED, align 4
  %21 = call i64 @atomic_load_zu(i32* @curpages, i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = icmp uge i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* @ATOMIC_RELAXED, align 4
  %28 = call i32 @atomic_fetch_sub_zu(i32* @curpages, i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %15, %10, %2
  ret void
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i64 @extent_state_get(i32*) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @atomic_load_zu(i32*, i32) #1

declare dso_local i32 @atomic_fetch_sub_zu(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
