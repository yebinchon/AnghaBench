; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_signal.c_sys_rt_sigsuspend.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_signal.c_sys_rt_sigsuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@_EINVAL = common dso_local global i64 0, align 8
@_EFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"sigsuspend(0x%llx) = ...\0A\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@_EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"%d done sigsuspend\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sys_rt_sigsuspend(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp ne i64 %8, 8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @_EINVAL, align 8
  store i64 %11, i64* %3, align 8
  br label %51

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @user_get(i32 %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i64, i64* @_EFAULT, align 8
  store i64 %18, i64* %3, align 8
  br label %51

19:                                               ; preds = %12
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @STRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @lock(i32* %25)
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @sigmask_set_temp_unlocked(i64 %27)
  br label %29

29:                                               ; preds = %39, %19
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i64 @wait_for(i32* %31, i32* %35, i32* null)
  %37 = load i64, i64* @_EINTR, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %29

40:                                               ; preds = %29
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @unlock(i32* %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @STRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load i64, i64* @_EINTR, align 8
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %40, %17, %10
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

declare dso_local i64 @user_get(i32, i64) #1

declare dso_local i32 @STRACE(i8*, i64) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @sigmask_set_temp_unlocked(i64) #1

declare dso_local i64 @wait_for(i32*, i32*, i32*) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
