; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_tsd.c_malloc_tsd_boot0.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_tsd.c_malloc_tsd_boot0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ncleanups = common dso_local global i64 0, align 8
@tsd_nominal_tsds_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"tsd_nominal_tsds_lock\00", align 1
@WITNESS_RANK_OMIT = common dso_local global i32 0, align 4
@malloc_mutex_rank_exclusive = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @malloc_tsd_boot0() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  store i64 0, i64* @ncleanups, align 8
  %3 = load i32, i32* @WITNESS_RANK_OMIT, align 4
  %4 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %5 = call i64 @malloc_mutex_init(i32* @tsd_nominal_tsds_lock, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %17

8:                                                ; preds = %0
  %9 = call i64 (...) @tsd_boot0()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32* null, i32** %1, align 8
  br label %17

12:                                               ; preds = %8
  %13 = call i32* (...) @tsd_fetch()
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32* @tsd_arenas_tdata_bypassp_get(i32* %14)
  store i32 1, i32* %15, align 4
  %16 = load i32*, i32** %2, align 8
  store i32* %16, i32** %1, align 8
  br label %17

17:                                               ; preds = %12, %11, %7
  %18 = load i32*, i32** %1, align 8
  ret i32* %18
}

declare dso_local i64 @malloc_mutex_init(i32*, i8*, i32, i32) #1

declare dso_local i64 @tsd_boot0(...) #1

declare dso_local i32* @tsd_fetch(...) #1

declare dso_local i32* @tsd_arenas_tdata_bypassp_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
