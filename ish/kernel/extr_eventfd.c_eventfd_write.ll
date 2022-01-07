; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_eventfd.c_eventfd_write.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_eventfd.c_eventfd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@_EINVAL = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@O_NONBLOCK_ = common dso_local global i32 0, align 4
@_EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, i8*, i64)* @eventfd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eventfd_write(%struct.fd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.fd* %0, %struct.fd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ult i64 %9, 8
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @_EINVAL, align 4
  store i32 %12, i32* %4, align 4
  br label %68

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @UINT64_MAX, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @_EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %68

22:                                               ; preds = %13
  %23 = load %struct.fd*, %struct.fd** %5, align 8
  %24 = getelementptr inbounds %struct.fd, %struct.fd* %23, i32 0, i32 1
  %25 = call i32 @lock(i32* %24)
  br label %26

26:                                               ; preds = %47, %22
  %27 = load %struct.fd*, %struct.fd** %5, align 8
  %28 = getelementptr inbounds %struct.fd, %struct.fd* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UINT64_MAX, align 8
  %32 = load i64, i64* %8, align 8
  %33 = sub nsw i64 %31, %32
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %26
  %36 = load %struct.fd*, %struct.fd** %5, align 8
  %37 = getelementptr inbounds %struct.fd, %struct.fd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @O_NONBLOCK_, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.fd*, %struct.fd** %5, align 8
  %44 = getelementptr inbounds %struct.fd, %struct.fd* %43, i32 0, i32 1
  %45 = call i32 @unlock(i32* %44)
  %46 = load i32, i32* @_EAGAIN, align 4
  store i32 %46, i32* %4, align 4
  br label %68

47:                                               ; preds = %35
  %48 = load %struct.fd*, %struct.fd** %5, align 8
  %49 = getelementptr inbounds %struct.fd, %struct.fd* %48, i32 0, i32 2
  %50 = load %struct.fd*, %struct.fd** %5, align 8
  %51 = getelementptr inbounds %struct.fd, %struct.fd* %50, i32 0, i32 1
  %52 = call i32 @wait_for(i32* %49, i32* %51, i32* null)
  br label %26

53:                                               ; preds = %26
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.fd*, %struct.fd** %5, align 8
  %56 = getelementptr inbounds %struct.fd, %struct.fd* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, %54
  store i64 %59, i64* %57, align 8
  %60 = load %struct.fd*, %struct.fd** %5, align 8
  %61 = getelementptr inbounds %struct.fd, %struct.fd* %60, i32 0, i32 2
  %62 = call i32 @notify(i32* %61)
  %63 = load %struct.fd*, %struct.fd** %5, align 8
  %64 = getelementptr inbounds %struct.fd, %struct.fd* %63, i32 0, i32 1
  %65 = call i32 @unlock(i32* %64)
  %66 = load %struct.fd*, %struct.fd** %5, align 8
  %67 = call i32 @poll_wakeup(%struct.fd* %66)
  store i32 8, i32* %4, align 4
  br label %68

68:                                               ; preds = %53, %42, %20, %11
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @wait_for(i32*, i32*, i32*) #1

declare dso_local i32 @notify(i32*) #1

declare dso_local i32 @poll_wakeup(%struct.fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
