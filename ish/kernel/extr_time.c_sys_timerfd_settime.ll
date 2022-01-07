; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_time.c_sys_timerfd_settime.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_time.c_sys_timerfd_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.itimerspec_ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.timer_spec = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"timerfd_settime(%d, %d, %#x, %#x)\00", align 1
@_EBADF = common dso_local global i32 0, align 4
@timerfd_ops = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_timerfd_settime(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fd*, align 8
  %11 = alloca %struct.itimerspec_, align 4
  %12 = alloca %struct.timer_spec, align 4
  %13 = alloca %struct.timer_spec, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.itimerspec_, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @STRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i64 %18, i64 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.fd* @f_get(i32 %21)
  store %struct.fd* %22, %struct.fd** %10, align 8
  %23 = load %struct.fd*, %struct.fd** %10, align 8
  %24 = icmp eq %struct.fd* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @_EBADF, align 4
  store i32 %26, i32* %5, align 4
  br label %118

27:                                               ; preds = %4
  %28 = load %struct.fd*, %struct.fd** %10, align 8
  %29 = getelementptr inbounds %struct.fd, %struct.fd* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, @timerfd_ops
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @_EINVAL, align 4
  store i32 %33, i32* %5, align 4
  br label %118

34:                                               ; preds = %27
  %35 = load i64, i64* %8, align 8
  %36 = bitcast %struct.itimerspec_* %11 to { i64, i64 }*
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 4
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 1
  %40 = load i64, i64* %39, align 4
  %41 = call i64 @user_get(i64 %35, i64 %38, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @_EFAULT, align 4
  store i32 %44, i32* %5, align 4
  br label %118

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %12, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.itimerspec_, %struct.itimerspec_* %11, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %47, align 4
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %52 = getelementptr inbounds %struct.itimerspec_, %struct.itimerspec_* %11, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %51, align 4
  %55 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %12, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.itimerspec_, %struct.itimerspec_* %11, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %56, align 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %61 = getelementptr inbounds %struct.itimerspec_, %struct.itimerspec_* %11, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %60, align 4
  %64 = load %struct.fd*, %struct.fd** %10, align 8
  %65 = getelementptr inbounds %struct.fd, %struct.fd* %64, i32 0, i32 0
  %66 = call i32 @lock(i32* %65)
  %67 = load %struct.fd*, %struct.fd** %10, align 8
  %68 = getelementptr inbounds %struct.fd, %struct.fd* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = bitcast %struct.timer_spec* %12 to { i64, i64 }*
  %72 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 4
  %74 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %71, i32 0, i32 1
  %75 = load i64, i64* %74, align 4
  %76 = call i32 @timer_set(i32 %70, i64 %73, i64 %75, %struct.timer_spec* %13)
  store i32 %76, i32* %14, align 4
  %77 = load %struct.fd*, %struct.fd** %10, align 8
  %78 = getelementptr inbounds %struct.fd, %struct.fd* %77, i32 0, i32 0
  %79 = call i32 @unlock(i32* %78)
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %45
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %5, align 4
  br label %118

84:                                               ; preds = %45
  %85 = load i64, i64* %9, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.itimerspec_, %struct.itimerspec_* %15, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %13, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %89, align 4
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %94 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %13, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %93, align 4
  %97 = getelementptr inbounds %struct.itimerspec_, %struct.itimerspec_* %15, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %13, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %98, align 4
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %103 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %13, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %102, align 4
  %106 = load i64, i64* %9, align 8
  %107 = bitcast %struct.itimerspec_* %15 to { i64, i64 }*
  %108 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 4
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %107, i32 0, i32 1
  %111 = load i64, i64* %110, align 4
  %112 = call i64 @user_put(i64 %106, i64 %109, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %87
  %115 = load i32, i32* @_EFAULT, align 4
  store i32 %115, i32* %5, align 4
  br label %118

116:                                              ; preds = %87
  br label %117

117:                                              ; preds = %116, %84
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %114, %82, %43, %32, %25
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @STRACE(i8*, i32, i32, i64, i64) #1

declare dso_local %struct.fd* @f_get(i32) #1

declare dso_local i64 @user_get(i64, i64, i64) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @timer_set(i32, i64, i64, %struct.timer_spec*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i64 @user_put(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
