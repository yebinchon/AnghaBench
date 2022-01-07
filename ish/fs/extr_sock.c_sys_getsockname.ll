; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_getsockname.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_getsockname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"getsockname(%d, 0x%x, 0x%x)\00", align 1
@_EBADF = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_getsockname(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @STRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.fd* @sock_getfd(i32 %19)
  store %struct.fd* %20, %struct.fd** %8, align 8
  %21 = load %struct.fd*, %struct.fd** %8, align 8
  %22 = icmp eq %struct.fd* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @_EBADF, align 4
  store i32 %24, i32* %4, align 4
  br label %64

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @user_get(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @_EFAULT, align 4
  store i32 %31, i32* %4, align 4
  br label %64

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %10, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %11, align 8
  %37 = load %struct.fd*, %struct.fd** %8, align 8
  %38 = getelementptr inbounds %struct.fd, %struct.fd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @getsockname(i32 %39, i8* %36, i32* %9)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = call i32 (...) @errno_map()
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %62

45:                                               ; preds = %32
  %46 = load i32, i32* %6, align 4
  %47 = trunc i64 %34 to i32
  %48 = call i32 @sockaddr_write(i32 %46, i8* %36, i32 %47, i32* %9)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %62

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @user_put(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @_EFAULT, align 4
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %62

62:                                               ; preds = %60, %58, %51, %43
  %63 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %63)
  br label %64

64:                                               ; preds = %62, %30, %23
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @STRACE(i8*, i32, i32, i32) #1

declare dso_local %struct.fd* @sock_getfd(i32) #1

declare dso_local i64 @user_get(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @getsockname(i32, i8*, i32*) #1

declare dso_local i32 @errno_map(...) #1

declare dso_local i32 @sockaddr_write(i32, i8*, i32, i32*) #1

declare dso_local i64 @user_put(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
