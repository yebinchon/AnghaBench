; ModuleID = '/home/carl/AnghaBench/libevent/extr_evthread_pthread.c_evthread_posix_lock_alloc.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evthread_pthread.c_evthread_posix_lock_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVTHREAD_LOCKTYPE_RECURSIVE = common dso_local global i32 0, align 4
@attr_recursive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @evthread_posix_lock_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @evthread_posix_lock_alloc(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  %6 = call i8* @mm_malloc(i32 1)
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %26

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @EVTHREAD_LOCKTYPE_RECURSIVE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32* @attr_recursive, i32** %4, align 8
  br label %16

16:                                               ; preds = %15, %10
  %17 = load i8*, i8** %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @pthread_mutex_init(i8* %17, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @mm_free(i8* %22)
  store i8* null, i8** %2, align 8
  br label %26

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %2, align 8
  br label %26

26:                                               ; preds = %24, %21, %9
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

declare dso_local i8* @mm_malloc(i32) #1

declare dso_local i64 @pthread_mutex_init(i8*, i32*) #1

declare dso_local i32 @mm_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
