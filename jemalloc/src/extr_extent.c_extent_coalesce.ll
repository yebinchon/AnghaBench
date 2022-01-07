; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_coalesce.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32**, %struct.TYPE_6__*, i32*, i32*, i32, i32)* @extent_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extent_coalesce(i32* %0, i32* %1, i32** %2, %struct.TYPE_6__* %3, i32* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32** %2, i32*** %11, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = call i32 @extent_can_coalesce(i32* %18, %struct.TYPE_6__* %19, i32* %20, i32* %21)
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = call i32 @extent_activate_locked(i32* %24, i32* %25, %struct.TYPE_6__* %26, i32* %27)
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = call i32 @malloc_mutex_unlock(i32* %29, i32* %31)
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32**, i32*** %11, align 8
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %8
  %39 = load i32*, i32** %13, align 8
  br label %42

40:                                               ; preds = %8
  %41 = load i32*, i32** %14, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32* [ %39, %38 ], [ %41, %40 ]
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32*, i32** %14, align 8
  br label %50

48:                                               ; preds = %42
  %49 = load i32*, i32** %13, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32* [ %47, %46 ], [ %49, %48 ]
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @extent_merge_impl(i32* %33, i32* %34, i32** %35, i32* %43, i32* %51, i32 %52)
  store i32 %53, i32* %17, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @malloc_mutex_lock(i32* %54, i32* %56)
  %58 = load i32, i32* %17, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @extent_deactivate_locked(i32* %61, i32* %62, %struct.TYPE_6__* %63, i32* %64)
  br label %66

66:                                               ; preds = %60, %50
  %67 = load i32, i32* %17, align 4
  ret i32 %67
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @extent_can_coalesce(i32*, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @extent_activate_locked(i32*, i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i32 @extent_merge_impl(i32*, i32*, i32**, i32*, i32*, i32) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32 @extent_deactivate_locked(i32*, i32*, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
