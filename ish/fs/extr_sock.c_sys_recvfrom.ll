; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_recvfrom.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_recvfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"recvfrom(%d, 0x%x, %d, %d, 0x%x, 0x%x)\00", align 1
@_EBADF = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_recvfrom(i32 %0, i64 %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.fd*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @STRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %24, i32 %25, i32 %26, i64 %27, i64 %28)
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.fd* @sock_getfd(i32 %30)
  store %struct.fd* %31, %struct.fd** %14, align 8
  %32 = load %struct.fd*, %struct.fd** %14, align 8
  %33 = icmp eq %struct.fd* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* @_EBADF, align 4
  store i32 %35, i32* %7, align 4
  br label %119

36:                                               ; preds = %6
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @sock_flags_to_real(i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @_EINVAL, align 4
  store i32 %42, i32* %7, align 4
  br label %119

43:                                               ; preds = %36
  store i32 0, i32* %16, align 4
  %44 = load i64, i64* %13, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i64, i64* %13, align 8
  %48 = load i32, i32* %16, align 4
  %49 = call i64 @user_get(i64 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @_EFAULT, align 4
  store i32 %52, i32* %7, align 4
  br label %119

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %43
  %55 = load i32, i32* %10, align 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %17, align 8
  %58 = alloca i8, i64 %56, align 16
  store i64 %56, i64* %18, align 8
  %59 = load i32, i32* %16, align 4
  %60 = zext i32 %59 to i64
  %61 = alloca i8, i64 %60, align 16
  store i64 %60, i64* %19, align 8
  %62 = load %struct.fd*, %struct.fd** %14, align 8
  %63 = getelementptr inbounds %struct.fd, %struct.fd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %71

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70, %69
  %72 = phi i8* [ %61, %69 ], [ null, %70 ]
  %73 = load i64, i64* %13, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %77

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %75
  %78 = phi i32* [ %16, %75 ], [ null, %76 ]
  %79 = call i64 @recvfrom(i32 %64, i8* %58, i32 %65, i32 %66, i8* %72, i32* %78)
  store i64 %79, i64* %20, align 8
  %80 = load i64, i64* %20, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 (...) @errno_map()
  store i32 %83, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %117

84:                                               ; preds = %77
  %85 = load i64, i64* %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i64 @user_write(i64 %85, i8* %58, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @_EFAULT, align 4
  store i32 %90, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %117

91:                                               ; preds = %84
  %92 = load i64, i64* %12, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i64, i64* %12, align 8
  %96 = trunc i64 %60 to i32
  %97 = call i32 @sockaddr_write(i64 %95, i8* %61, i32 %96, i32* %16)
  store i32 %97, i32* %22, align 4
  %98 = load i32, i32* %22, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %22, align 4
  store i32 %101, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %117

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %91
  %104 = load i64, i64* %13, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load i64, i64* %13, align 8
  %108 = load i32, i32* %16, align 4
  %109 = call i64 @user_put(i64 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* @_EFAULT, align 4
  store i32 %112, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %117

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %103
  %115 = load i64, i64* %20, align 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %117

117:                                              ; preds = %114, %111, %100, %89, %82
  %118 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %118)
  br label %119

119:                                              ; preds = %117, %51, %41, %34
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @STRACE(i8*, i32, i64, i32, i32, i64, i64) #1

declare dso_local %struct.fd* @sock_getfd(i32) #1

declare dso_local i32 @sock_flags_to_real(i32) #1

declare dso_local i64 @user_get(i64, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @recvfrom(i32, i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @errno_map(...) #1

declare dso_local i64 @user_write(i64, i8*, i32) #1

declare dso_local i32 @sockaddr_write(i64, i8*, i32, i32*) #1

declare dso_local i64 @user_put(i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
