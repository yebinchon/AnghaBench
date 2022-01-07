; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_openat.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_openat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"openat(%d, \22%s\22, 0x%x, 0x%x)\00", align 1
@O_CREAT_ = common dso_local global i32 0, align 4
@_EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_openat(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fd*, align 8
  %14 = alloca %struct.fd*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = trunc i64 %16 to i32
  %21 = call i64 @user_read_string(i32 %19, i8* %18, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @_EFAULT, align 4
  store i32 %24, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %58

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @STRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %18, i32 %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @O_CREAT_, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = call i32 @apply_umask(i32* %9)
  br label %36

36:                                               ; preds = %34, %25
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.fd* @at_fd(i32 %37)
  store %struct.fd* %38, %struct.fd** %13, align 8
  %39 = load %struct.fd*, %struct.fd** %13, align 8
  %40 = icmp eq %struct.fd* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @_EBADF, align 4
  store i32 %42, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %58

43:                                               ; preds = %36
  %44 = load %struct.fd*, %struct.fd** %13, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.fd* @generic_openat(%struct.fd* %44, i8* %18, i32 %45, i32 %46)
  store %struct.fd* %47, %struct.fd** %14, align 8
  %48 = load %struct.fd*, %struct.fd** %14, align 8
  %49 = call i64 @IS_ERR(%struct.fd* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.fd*, %struct.fd** %14, align 8
  %53 = call i32 @PTR_ERR(%struct.fd* %52)
  store i32 %53, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %58

54:                                               ; preds = %43
  %55 = load %struct.fd*, %struct.fd** %14, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @f_install(%struct.fd* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %58

58:                                               ; preds = %54, %51, %41, %23
  %59 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @user_read_string(i32, i8*, i32) #2

declare dso_local i32 @STRACE(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @apply_umask(i32*) #2

declare dso_local %struct.fd* @at_fd(i32) #2

declare dso_local %struct.fd* @generic_openat(%struct.fd*, i8*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.fd*) #2

declare dso_local i32 @PTR_ERR(%struct.fd*) #2

declare dso_local i32 @f_install(%struct.fd*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
