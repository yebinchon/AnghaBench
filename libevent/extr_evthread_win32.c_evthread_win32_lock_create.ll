; ModuleID = '/home/carl/AnghaBench/libevent/extr_evthread_win32.c_evthread_win32_lock_create.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evthread_win32.c_evthread_win32_lock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPIN_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @evthread_win32_lock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @evthread_win32_lock_create(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i8* @mm_malloc(i32 1)
  store i8* %5, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %19

9:                                                ; preds = %1
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @SPIN_COUNT, align 4
  %12 = call i64 @InitializeCriticalSectionAndSpinCount(i8* %10, i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @mm_free(i8* %15)
  store i8* null, i8** %2, align 8
  br label %19

17:                                               ; preds = %9
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %2, align 8
  br label %19

19:                                               ; preds = %17, %14, %8
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

declare dso_local i8* @mm_malloc(i32) #1

declare dso_local i64 @InitializeCriticalSectionAndSpinCount(i8*, i32) #1

declare dso_local i32 @mm_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
