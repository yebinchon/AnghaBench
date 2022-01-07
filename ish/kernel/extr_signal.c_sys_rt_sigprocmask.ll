; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_signal.c_sys_rt_sigprocmask.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_signal.c_sys_rt_sigprocmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.sighand*, i32 }
%struct.sighand = type { i32 }

@_EINVAL = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"rt_sigprocmask(%s, %#llx, %#x, %d)\00", align 1
@SIG_BLOCK_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"SIG_BLOCK\00", align 1
@SIG_UNBLOCK_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"SIG_UNBLOCK\00", align 1
@SIG_SETMASK_ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"SIG_SETMASK\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_rt_sigprocmask(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.sighand*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @_EINVAL, align 4
  store i32 %17, i32* %5, align 4
  br label %93

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i64 @user_get(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @_EFAULT, align 4
  store i32 %27, i32* %5, align 4
  br label %93

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SIG_BLOCK_, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %47

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SIG_UNBLOCK_, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %45

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SIG_SETMASK_, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  br label %45

45:                                               ; preds = %39, %38
  %46 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %38 ], [ %44, %39 ]
  br label %47

47:                                               ; preds = %45, %33
  %48 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %33 ], [ %46, %45 ]
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* %10, align 8
  br label %54

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i64 [ %52, %51 ], [ -1, %53 ]
  %56 = load i64, i64* %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @STRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %48, i64 %55, i64 %56, i32 %57)
  %59 = load i64, i64* %8, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @user_put(i64 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @_EFAULT, align 4
  store i32 %69, i32* %5, align 4
  br label %93

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %54
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %struct.sighand*, %struct.sighand** %76, align 8
  store %struct.sighand* %77, %struct.sighand** %11, align 8
  %78 = load %struct.sighand*, %struct.sighand** %11, align 8
  %79 = getelementptr inbounds %struct.sighand, %struct.sighand* %78, i32 0, i32 0
  %80 = call i32 @lock(i32* %79)
  %81 = load i32, i32* %6, align 4
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @do_sigprocmask(i32 %81, i64 %82)
  store i32 %83, i32* %12, align 4
  %84 = load %struct.sighand*, %struct.sighand** %11, align 8
  %85 = getelementptr inbounds %struct.sighand, %struct.sighand* %84, i32 0, i32 0
  %86 = call i32 @unlock(i32* %85)
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %74
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %5, align 4
  br label %93

91:                                               ; preds = %74
  br label %92

92:                                               ; preds = %91, %71
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %89, %68, %26, %16
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @user_get(i64, i64) #1

declare dso_local i32 @STRACE(i8*, i8*, i64, i64, i32) #1

declare dso_local i64 @user_put(i64, i32) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @do_sigprocmask(i32, i64) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
