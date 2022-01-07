; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_readlinkat.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_readlinkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"readlinkat(%d, \22%s\22, %#x, %#x)\00", align 1
@_EBADF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" \22%.*s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_readlinkat(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fd*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
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
  br label %60

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 (i8*, i64, i8*, ...) @STRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %28, i8* %19, i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.fd* @at_fd(i32 %32)
  store %struct.fd* %33, %struct.fd** %13, align 8
  %34 = load %struct.fd*, %struct.fd** %13, align 8
  %35 = icmp eq %struct.fd* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @_EBADF, align 4
  store i32 %37, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %60

38:                                               ; preds = %26
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %14, align 8
  %42 = load %struct.fd*, %struct.fd** %13, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @generic_readlinkat(%struct.fd* %42, i8* %19, i8* %41, i32 %43)
  store i64 %44, i64* %15, align 8
  %45 = load i64, i64* %15, align 8
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load i64, i64* %15, align 8
  %49 = call i32 (i8*, i64, i8*, ...) @STRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %48, i8* %41)
  %50 = load i32, i32* %8, align 4
  %51 = load i64, i64* %15, align 8
  %52 = call i64 @user_write(i32 %50, i8* %41, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @_EFAULT, align 4
  store i32 %55, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %60

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %38
  %58 = load i64, i64* %15, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %60

60:                                               ; preds = %57, %54, %36, %24
  %61 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @user_read_string(i32, i8*, i32) #2

declare dso_local i32 @STRACE(i8*, i64, i8*, ...) #2

declare dso_local %struct.fd* @at_fd(i32) #2

declare dso_local i64 @generic_readlinkat(%struct.fd*, i8*, i8*, i32) #2

declare dso_local i64 @user_write(i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
