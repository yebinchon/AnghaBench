; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_can_coalesce.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_can_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@extent_state_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*, i32*)* @extent_can_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extent_can_coalesce(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = call i64 @extent_arena_ind_get(i32* %10)
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @arena_ind_get(i32* %12)
  %14 = icmp eq i64 %11, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** %9, align 8
  %18 = call i64 @extent_arena_ind_get(i32* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @arena_ind_get(i32* %19)
  %21 = icmp ne i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

23:                                               ; preds = %4
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @extent_state_get(i32* %24)
  %26 = load i64, i64* @extent_state_active, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @extent_state_get(i32* %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %45

37:                                               ; preds = %23
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @extent_committed_get(i32* %38)
  %40 = load i32*, i32** %9, align 8
  %41 = call i64 @extent_committed_get(i32* %40)
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %45

44:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %43, %36, %22
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @extent_arena_ind_get(i32*) #1

declare dso_local i64 @arena_ind_get(i32*) #1

declare dso_local i64 @extent_state_get(i32*) #1

declare dso_local i64 @extent_committed_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
