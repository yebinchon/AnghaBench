; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_sendto.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_sendto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }
%struct.sockaddr_max_ = type { i32 }

@_EBADF = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"sendto(%d, \22%.100s\22, %d, %d, 0x%x, %d)\00", align 1
@_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_sendto(i32 %0, i64 %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fd*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.sockaddr_max_, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.fd* @sock_getfd(i32 %22)
  store %struct.fd* %23, %struct.fd** %14, align 8
  %24 = load %struct.fd*, %struct.fd** %14, align 8
  %25 = icmp eq %struct.fd* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @_EBADF, align 4
  store i32 %27, i32* %7, align 4
  br label %91

28:                                               ; preds = %6
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %15, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %16, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @user_read(i64 %34, i8* %33, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @_EFAULT, align 4
  store i32 %39, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %89

40:                                               ; preds = %28
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %33, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i64, i64* %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @STRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %44, i8* %33, i32 %45, i32 %46, i64 %47, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @sock_flags_to_real(i32 %50)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i32, i32* @_EINVAL, align 4
  store i32 %55, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %89

56:                                               ; preds = %40
  %57 = load i64, i64* %12, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @sockaddr_read(i64 %60, %struct.sockaddr_max_* %19, i32* %13)
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %20, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %20, align 4
  store i32 %65, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %89

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %56
  %68 = load %struct.fd*, %struct.fd** %14, align 8
  %69 = getelementptr inbounds %struct.fd, %struct.fd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i64, i64* %12, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = bitcast %struct.sockaddr_max_* %19 to i8*
  br label %78

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %75
  %79 = phi i8* [ %76, %75 ], [ null, %77 ]
  %80 = load i32, i32* %13, align 4
  %81 = call i64 @sendto(i32 %70, i8* %33, i32 %71, i32 %72, i8* %79, i32 %80)
  store i64 %81, i64* %21, align 8
  %82 = load i64, i64* %21, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = call i32 (...) @errno_map()
  store i32 %85, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %89

86:                                               ; preds = %78
  %87 = load i64, i64* %21, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %89

89:                                               ; preds = %86, %84, %64, %54, %38
  %90 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %90)
  br label %91

91:                                               ; preds = %89, %26
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local %struct.fd* @sock_getfd(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @user_read(i64, i8*, i32) #1

declare dso_local i32 @STRACE(i8*, i32, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @sock_flags_to_real(i32) #1

declare dso_local i32 @sockaddr_read(i64, %struct.sockaddr_max_*, i32*) #1

declare dso_local i64 @sendto(i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @errno_map(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
