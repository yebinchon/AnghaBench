; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_renameat2.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_renameat2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }

@_EINVAL = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"renameat(%d, \22%s\22, %d, \22%s\22)\00", align 1
@_EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_renameat2(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.fd*, align 8
  %17 = alloca %struct.fd*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @_EINVAL, align 4
  store i32 %21, i32* %6, align 4
  br label %66

22:                                               ; preds = %5
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %27 = load i32, i32* %8, align 4
  %28 = trunc i64 %24 to i32
  %29 = call i64 @user_read_string(i32 %27, i8* %26, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @_EFAULT, align 4
  store i32 %32, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %64

33:                                               ; preds = %22
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %15, align 8
  %37 = load i32, i32* %10, align 4
  %38 = trunc i64 %35 to i32
  %39 = call i64 @user_read_string(i32 %37, i8* %36, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @_EFAULT, align 4
  store i32 %42, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %64

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @STRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %44, i8* %26, i32 %45, i8* %36)
  %47 = load i32, i32* %7, align 4
  %48 = call %struct.fd* @at_fd(i32 %47)
  store %struct.fd* %48, %struct.fd** %16, align 8
  %49 = load %struct.fd*, %struct.fd** %16, align 8
  %50 = icmp eq %struct.fd* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @_EBADF, align 4
  store i32 %52, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %64

53:                                               ; preds = %43
  %54 = load i32, i32* %9, align 4
  %55 = call %struct.fd* @at_fd(i32 %54)
  store %struct.fd* %55, %struct.fd** %17, align 8
  %56 = load %struct.fd*, %struct.fd** %17, align 8
  %57 = icmp eq %struct.fd* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @_EBADF, align 4
  store i32 %59, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %64

60:                                               ; preds = %53
  %61 = load %struct.fd*, %struct.fd** %16, align 8
  %62 = load %struct.fd*, %struct.fd** %17, align 8
  %63 = call i32 @generic_renameat(%struct.fd* %61, i8* %26, %struct.fd* %62, i8* %36)
  store i32 %63, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %64

64:                                               ; preds = %60, %58, %51, %41, %31
  %65 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %65)
  br label %66

66:                                               ; preds = %64, %20
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @user_read_string(i32, i8*, i32) #2

declare dso_local i32 @STRACE(i8*, i32, i8*, i32, i8*) #2

declare dso_local %struct.fd* @at_fd(i32) #2

declare dso_local i32 @generic_renameat(%struct.fd*, i8*, %struct.fd*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
