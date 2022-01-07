; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_thread.c_uv_mutex_init_recursive.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_thread.c_uv_mutex_init_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_mutex_init_recursive(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call i64 @pthread_mutexattr_init(i32* %3)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (...) @abort() #3
  unreachable

9:                                                ; preds = %1
  %10 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %11 = call i64 @pthread_mutexattr_settype(i32* %3, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 (...) @abort() #3
  unreachable

15:                                               ; preds = %9
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @pthread_mutex_init(i32* %16, i32* %3)
  store i32 %17, i32* %4, align 4
  %18 = call i64 @pthread_mutexattr_destroy(i32* %3)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 (...) @abort() #3
  unreachable

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @UV__ERR(i32 %23)
  ret i32 %24
}

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i64 @pthread_mutexattr_destroy(i32*) #1

declare dso_local i32 @UV__ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
