; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_symlinkat.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_symlinkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"symlinkat(\22%s\22, %d, \22%s\22)\00", align 1
@_EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_symlinkat(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.fd*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = trunc i64 %14 to i32
  %19 = call i64 @user_read_string(i32 %17, i8* %16, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @_EFAULT, align 4
  store i32 %22, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %45

23:                                               ; preds = %3
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %27 = load i32, i32* %7, align 4
  %28 = trunc i64 %25 to i32
  %29 = call i64 @user_read_string(i32 %27, i8* %26, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @_EFAULT, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %45

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @STRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %34, i8* %26)
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.fd* @at_fd(i32 %36)
  store %struct.fd* %37, %struct.fd** %12, align 8
  %38 = load %struct.fd*, %struct.fd** %12, align 8
  %39 = icmp eq %struct.fd* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @_EBADF, align 4
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %45

42:                                               ; preds = %33
  %43 = load %struct.fd*, %struct.fd** %12, align 8
  %44 = call i32 @generic_symlinkat(i8* %16, %struct.fd* %43, i8* %26)
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %42, %40, %31, %21
  %46 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @user_read_string(i32, i8*, i32) #2

declare dso_local i32 @STRACE(i8*, i8*, i32, i8*) #2

declare dso_local %struct.fd* @at_fd(i32) #2

declare dso_local i32 @generic_symlinkat(i8*, %struct.fd*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
