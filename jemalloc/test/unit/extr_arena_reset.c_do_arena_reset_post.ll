; ModuleID = '/home/carl/AnghaBench/jemalloc/test/unit/extr_arena_reset.c_do_arena_reset_post.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/unit/extr_arena_reset.c_do_arena_reset_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@have_background_thread = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Allocation should no longer exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, i32)* @do_arena_reset_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_arena_reset_post(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32* (...) @tsdn_fetch()
  store i32* %9, i32** %7, align 8
  %10 = load i64, i64* @have_background_thread, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.TYPE_2__* @background_thread_info_get(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @malloc_mutex_lock(i32* %13, i32* %16)
  br label %18

18:                                               ; preds = %12, %3
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32*, i32** %7, align 8
  %25 = load i8**, i8*** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @vsalloc(i32* %24, i8* %29)
  %31 = call i32 @assert_zu_eq(i32 %30, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load i64, i64* @have_background_thread, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call %struct.TYPE_2__* @background_thread_info_get(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @malloc_mutex_unlock(i32* %39, i32* %42)
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i8**, i8*** %4, align 8
  %46 = call i32 @free(i8** %45)
  ret void
}

declare dso_local i32* @tsdn_fetch(...) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @background_thread_info_get(i32) #1

declare dso_local i32 @assert_zu_eq(i32, i32, i8*) #1

declare dso_local i32 @vsalloc(i32*, i8*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
