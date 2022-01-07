; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_ctl.c_arena_i_index.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_ctl.c_arena_i_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@ctl_mtx = common dso_local global i32 0, align 4
@ctl_arenas = common dso_local global %struct.TYPE_2__* null, align 8
@super_arena_i_node = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64*, i64, i64)* @arena_i_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @arena_i_index(i32* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @malloc_mutex_lock(i32* %10, i32* @ctl_mtx)
  %12 = load i64, i64* %8, align 8
  switch i64 %12, label %14 [
    i64 129, label %13
    i64 128, label %13
  ]

13:                                               ; preds = %4, %4
  br label %22

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctl_arenas, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ugt i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32* null, i32** %9, align 8
  br label %24

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %13
  %23 = load i32*, i32** @super_arena_i_node, align 8
  store i32* %23, i32** %9, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @malloc_mutex_unlock(i32* %25, i32* @ctl_mtx)
  %27 = load i32*, i32** %9, align 8
  ret i32* %27
}

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
