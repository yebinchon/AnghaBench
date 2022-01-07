; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_linkat.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_linkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"linkat(%d, \22%s\22, %d, \22%s\22)\00", align 1
@_EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_linkat(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.fd*, align 8
  %15 = alloca %struct.fd*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = trunc i64 %17 to i32
  %22 = call i64 @user_read_string(i32 %20, i8* %19, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @_EFAULT, align 4
  store i32 %25, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %57

26:                                               ; preds = %4
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  %30 = load i32, i32* %9, align 4
  %31 = trunc i64 %28 to i32
  %32 = call i64 @user_read_string(i32 %30, i8* %29, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @_EFAULT, align 4
  store i32 %35, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %57

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @STRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %19, i32 %38, i8* %29)
  %40 = load i32, i32* %6, align 4
  %41 = call %struct.fd* @at_fd(i32 %40)
  store %struct.fd* %41, %struct.fd** %14, align 8
  %42 = load %struct.fd*, %struct.fd** %14, align 8
  %43 = icmp eq %struct.fd* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @_EBADF, align 4
  store i32 %45, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %57

46:                                               ; preds = %36
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.fd* @at_fd(i32 %47)
  store %struct.fd* %48, %struct.fd** %15, align 8
  %49 = load %struct.fd*, %struct.fd** %15, align 8
  %50 = icmp eq %struct.fd* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @_EBADF, align 4
  store i32 %52, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %57

53:                                               ; preds = %46
  %54 = load %struct.fd*, %struct.fd** %14, align 8
  %55 = load %struct.fd*, %struct.fd** %15, align 8
  %56 = call i32 @generic_linkat(%struct.fd* %54, i8* %19, %struct.fd* %55, i8* %29)
  store i32 %56, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %57

57:                                               ; preds = %53, %51, %44, %34, %24
  %58 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @user_read_string(i32, i8*, i32) #2

declare dso_local i32 @STRACE(i8*, i32, i8*, i32, i8*) #2

declare dso_local %struct.fd* @at_fd(i32) #2

declare dso_local i32 @generic_linkat(%struct.fd*, i8*, %struct.fd*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
