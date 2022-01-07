; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_time.c_sys_timerfd_create.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_time.c_sys_timerfd_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"timerfd_create(%d, %#x)\00", align 1
@ITIMER_REAL_ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"timerfd %d\00", align 1
@_EINVAL = common dso_local global i32 0, align 4
@timerfd_ops = common dso_local global i32 0, align 4
@_ENOMEM = common dso_local global i32 0, align 4
@timerfd_callback = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_timerfd_create(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fd*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @STRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %7, i64 %8)
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @ITIMER_REAL_, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @FIXME(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %14)
  %16 = load i32, i32* @_EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = call %struct.fd* @adhoc_fd_create(i32* @timerfd_ops)
  store %struct.fd* %18, %struct.fd** %6, align 8
  %19 = load %struct.fd*, %struct.fd** %6, align 8
  %20 = icmp eq %struct.fd* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @_ENOMEM, align 4
  store i32 %22, i32* %3, align 4
  br label %34

23:                                               ; preds = %17
  %24 = load i64, i64* @timerfd_callback, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.fd*, %struct.fd** %6, align 8
  %27 = call i32 @timer_new(i32 %25, %struct.fd* %26)
  %28 = load %struct.fd*, %struct.fd** %6, align 8
  %29 = getelementptr inbounds %struct.fd, %struct.fd* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.fd*, %struct.fd** %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @f_install(%struct.fd* %31, i64 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %23, %21, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @STRACE(i8*, i64, i64) #1

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local %struct.fd* @adhoc_fd_create(i32*) #1

declare dso_local i32 @timer_new(i32, %struct.fd*) #1

declare dso_local i32 @f_install(%struct.fd*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
