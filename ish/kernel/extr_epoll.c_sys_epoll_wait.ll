; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_epoll.c_sys_epoll_wait.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_epoll.c_sys_epoll_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.timespec = type { i32, i32 }
%struct.epoll_context = type { i32, i32, %struct.epoll_event_* }
%struct.epoll_event_ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"epoll_wait(%d, %#x, %d, %d)\00", align 1
@_EBADF = common dso_local global i32 0, align 4
@epoll_ops = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4
@epoll_callback = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_epoll_wait(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fd*, align 8
  %11 = alloca %struct.timespec, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.epoll_context, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @STRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.fd* @f_get(i32 %22)
  store %struct.fd* %23, %struct.fd** %10, align 8
  %24 = load %struct.fd*, %struct.fd** %10, align 8
  %25 = icmp eq %struct.fd* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @_EBADF, align 4
  store i32 %27, i32* %5, align 4
  br label %89

28:                                               ; preds = %4
  %29 = load %struct.fd*, %struct.fd** %10, align 8
  %30 = getelementptr inbounds %struct.fd, %struct.fd* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, @epoll_ops
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @_EINVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %89

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = sdiv i32 %39, 1000
  %41 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = srem i32 %42, 1000
  %44 = mul nsw i32 %43, 1000000
  %45 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %38, %35
  %47 = load i32, i32* %8, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @_EINVAL, align 4
  store i32 %50, i32* %5, align 4
  br label %89

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %12, align 8
  %55 = alloca %struct.epoll_event_, i64 %53, align 16
  store i64 %53, i64* %13, align 8
  %56 = getelementptr inbounds %struct.epoll_context, %struct.epoll_context* %14, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %56, align 8
  %58 = getelementptr inbounds %struct.epoll_context, %struct.epoll_context* %14, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.epoll_context, %struct.epoll_context* %14, i32 0, i32 2
  store %struct.epoll_event_* %55, %struct.epoll_event_** %59, align 8
  %60 = load %struct.fd*, %struct.fd** %10, align 8
  %61 = getelementptr inbounds %struct.fd, %struct.fd* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @epoll_callback, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %51
  br label %69

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68, %67
  %70 = phi %struct.timespec* [ null, %67 ], [ %11, %68 ]
  %71 = call i32 @poll_wait(i32 %63, i32 %64, %struct.epoll_context* %14, %struct.timespec* %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 4, %77
  %79 = trunc i64 %78 to i32
  %80 = call i64 @user_write(i32 %75, %struct.epoll_event_* %55, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* @_EFAULT, align 4
  store i32 %83, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %87

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %69
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %88)
  br label %89

89:                                               ; preds = %87, %49, %33, %26
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @STRACE(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.fd* @f_get(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @poll_wait(i32, i32, %struct.epoll_context*, %struct.timespec*) #1

declare dso_local i64 @user_write(i32, %struct.epoll_event_*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
