; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_thread.c_thread_stack_size.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_thread.c_thread_stack_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32 }

@RLIMIT_STACK = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i32 0, align 4
@PTHREAD_STACK_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @thread_stack_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @thread_stack_size() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.rlimit, align 4
  %3 = load i32, i32* @RLIMIT_STACK, align 4
  %4 = call i64 @getrlimit(i32 %3, %struct.rlimit* %2)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @abort() #3
  unreachable

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RLIM_INFINITY, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 (...) @getpagesize()
  %17 = trunc i64 %16 to i32
  %18 = srem i32 %15, %17
  %19 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, %18
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 8192
  br i1 %24, label %25, label %35

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PTHREAD_STACK_MIN, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %1, align 8
  br label %37

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %13
  br label %36

36:                                               ; preds = %35, %8
  store i64 2097152, i64* %1, align 8
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i64, i64* %1, align 8
  ret i64 %38
}

declare dso_local i64 @getrlimit(i32, %struct.rlimit*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @getpagesize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
