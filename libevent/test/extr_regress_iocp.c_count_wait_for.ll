; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_iocp.c_count_wait_for.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_iocp.c_count_wait_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@count_lock = common dso_local global i32 0, align 4
@count = common dso_local global i32 0, align 4
@count_cond = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @count_wait_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_wait_for(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %7, align 4
  %8 = load i32, i32* @count_lock, align 4
  %9 = call i32 @EVLOCK_LOCK(i32 %8, i32 0)
  br label %10

10:                                               ; preds = %19, %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* @count, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %14, %15
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i1 [ false, %10 ], [ %16, %13 ]
  br i1 %18, label %19, label %36

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %21, 1000
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = call i64 (...) @GetTickCount()
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @count_cond, align 4
  %26 = load i32, i32* @count_lock, align 4
  %27 = call i32 @EVTHREAD_COND_WAIT_TIMED(i32 %25, i32 %26, %struct.timeval* %5)
  %28 = call i64 (...) @GetTickCount()
  %29 = load i64, i64* %6, align 8
  %30 = sub nsw i64 %28, %29
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %10

36:                                               ; preds = %17
  %37 = load i32, i32* @count, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i32, i32* @count_lock, align 4
  %43 = call i32 @EVLOCK_UNLOCK(i32 %42, i32 0)
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @EVLOCK_LOCK(i32, i32) #1

declare dso_local i64 @GetTickCount(...) #1

declare dso_local i32 @EVTHREAD_COND_WAIT_TIMED(i32, i32, %struct.timeval*) #1

declare dso_local i32 @EVLOCK_UNLOCK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
