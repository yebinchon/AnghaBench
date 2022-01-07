; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_resource.c_sys_sched_getaffinity.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_resource.c_sys_sched_getaffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"sched_getaffinity(%d, %d, %#x)\00", align 1
@pids_lock = common dso_local global i32 0, align 4
@_ESRCH = common dso_local global i32 0, align 4
@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_sched_getaffinity(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.task*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @STRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %14, i32 %15, i32 %16)
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = call i32 @lock(i32* @pids_lock)
  %22 = load i64, i64* %5, align 8
  %23 = call %struct.task* @pid_get_task(i64 %22)
  store %struct.task* %23, %struct.task** %8, align 8
  %24 = call i32 @unlock(i32* @pids_lock)
  %25 = load %struct.task*, %struct.task** %8, align 8
  %26 = icmp eq %struct.task* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @_ESRCH, align 4
  store i32 %28, i32* %4, align 4
  br label %67

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32, i32* @_SC_NPROCESSORS_ONLN, align 4
  %32 = call i32 @sysconf(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 %34, 8
  %36 = icmp ugt i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %38, 8
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %10, align 8
  %44 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %11, align 8
  %45 = trunc i64 %42 to i32
  %46 = call i32 @memset(i8* %44, i32 0, i32 %45)
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %54, %40
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @bit_set(i32 %52, i8* %44)
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %47

57:                                               ; preds = %47
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @user_write(i32 %58, i8* %44, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @_EFAULT, align 4
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %65

64:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %65

65:                                               ; preds = %64, %62
  %66 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %66)
  br label %67

67:                                               ; preds = %65, %27
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @STRACE(i8*, i64, i32, i32) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local %struct.task* @pid_get_task(i64) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @sysconf(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @bit_set(i32, i8*) #1

declare dso_local i64 @user_write(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
