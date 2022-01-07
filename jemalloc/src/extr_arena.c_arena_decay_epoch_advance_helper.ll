; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_decay_epoch_advance_helper.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_decay_epoch_advance_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i64)* @arena_decay_epoch_advance_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arena_decay_epoch_advance_helper(%struct.TYPE_6__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @arena_decay_deadline_reached(%struct.TYPE_6__* %9, i32* %10)
  %12 = call i32 @assert(i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @nstime_copy(i32* %7, i32* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = call i32 @nstime_subtract(i32* %7, i32* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = call i64 @nstime_divide(i32* %7, i32* %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp sgt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = call i32 @nstime_copy(i32* %7, i32* %26)
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @nstime_imultiply(i32* %7, i64 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = call i32 @nstime_add(i32* %31, i32* %7)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = call i32 @arena_decay_deadline_init(%struct.TYPE_6__* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @arena_decay_backlog_update(%struct.TYPE_6__* %35, i64 %36, i64 %37)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @arena_decay_deadline_reached(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @nstime_copy(i32*, i32*) #1

declare dso_local i32 @nstime_subtract(i32*, i32*) #1

declare dso_local i64 @nstime_divide(i32*, i32*) #1

declare dso_local i32 @nstime_imultiply(i32*, i64) #1

declare dso_local i32 @nstime_add(i32*, i32*) #1

declare dso_local i32 @arena_decay_deadline_init(%struct.TYPE_6__*) #1

declare dso_local i32 @arena_decay_backlog_update(%struct.TYPE_6__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
