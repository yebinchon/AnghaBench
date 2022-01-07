; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_time.c_timerfd_read.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_time.c_timerfd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@_EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK_ = common dso_local global i32 0, align 4
@_EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, i8*, i64)* @timerfd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timerfd_read(%struct.fd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.fd* %0, %struct.fd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %8, 8
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @_EINVAL, align 4
  store i32 %11, i32* %4, align 4
  br label %53

12:                                               ; preds = %3
  %13 = load %struct.fd*, %struct.fd** %5, align 8
  %14 = getelementptr inbounds %struct.fd, %struct.fd* %13, i32 0, i32 1
  %15 = call i32 @lock(i32* %14)
  br label %16

16:                                               ; preds = %34, %12
  %17 = load %struct.fd*, %struct.fd** %5, align 8
  %18 = getelementptr inbounds %struct.fd, %struct.fd* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load %struct.fd*, %struct.fd** %5, align 8
  %24 = getelementptr inbounds %struct.fd, %struct.fd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @O_NONBLOCK_, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.fd*, %struct.fd** %5, align 8
  %31 = getelementptr inbounds %struct.fd, %struct.fd* %30, i32 0, i32 1
  %32 = call i32 @unlock(i32* %31)
  %33 = load i32, i32* @_EAGAIN, align 4
  store i32 %33, i32* %4, align 4
  br label %53

34:                                               ; preds = %22
  %35 = load %struct.fd*, %struct.fd** %5, align 8
  %36 = getelementptr inbounds %struct.fd, %struct.fd* %35, i32 0, i32 3
  %37 = load %struct.fd*, %struct.fd** %5, align 8
  %38 = getelementptr inbounds %struct.fd, %struct.fd* %37, i32 0, i32 1
  %39 = call i32 @wait_for(i32* %36, i32* %38, i32* null)
  br label %16

40:                                               ; preds = %16
  %41 = load %struct.fd*, %struct.fd** %5, align 8
  %42 = getelementptr inbounds %struct.fd, %struct.fd* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = bitcast i8* %45 to i64*
  store i64 %44, i64* %46, align 8
  %47 = load %struct.fd*, %struct.fd** %5, align 8
  %48 = getelementptr inbounds %struct.fd, %struct.fd* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.fd*, %struct.fd** %5, align 8
  %51 = getelementptr inbounds %struct.fd, %struct.fd* %50, i32 0, i32 1
  %52 = call i32 @unlock(i32* %51)
  store i32 8, i32* %4, align 4
  br label %53

53:                                               ; preds = %40, %29, %10
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @wait_for(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
