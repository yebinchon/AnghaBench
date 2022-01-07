; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_setsockopt.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_setsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"setsockopt(%d, %d, %d, 0x%x, %d)\00", align 1
@_EBADF = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@ICMP6_FILTER_ = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_MTU_DISCOVER_ = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_setsockopt(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fd*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @STRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.fd* @sock_getfd(i32 %25)
  store %struct.fd* %26, %struct.fd** %12, align 8
  %27 = load %struct.fd*, %struct.fd** %12, align 8
  %28 = icmp eq %struct.fd* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @_EBADF, align 4
  store i32 %30, i32* %6, align 4
  br label %94

31:                                               ; preds = %5
  %32 = load i32, i32* %11, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %13, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %14, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @user_read(i32 %36, i8* %35, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @_EFAULT, align 4
  store i32 %41, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %92

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @ICMP6_FILTER_, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %92

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @IPPROTO_IP, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @IP_MTU_DISCOVER_, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %92

60:                                               ; preds = %55, %51
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @sock_opt_to_real(i32 %61, i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @_EINVAL, align 4
  store i32 %67, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %92

68:                                               ; preds = %60
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @sock_level_to_real(i32 %69)
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @_EINVAL, align 4
  store i32 %74, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %92

75:                                               ; preds = %68
  %76 = load i32, i32* %16, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %92

79:                                               ; preds = %75
  %80 = load %struct.fd*, %struct.fd** %12, align 8
  %81 = getelementptr inbounds %struct.fd, %struct.fd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @setsockopt(i32 %82, i32 %83, i32 %84, i8* %35, i32 %85)
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = call i32 (...) @errno_map()
  store i32 %90, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %92

91:                                               ; preds = %79
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %92

92:                                               ; preds = %91, %89, %78, %73, %66, %59, %50, %40
  %93 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %93)
  br label %94

94:                                               ; preds = %92, %29
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @STRACE(i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.fd* @sock_getfd(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @user_read(i32, i8*, i32) #1

declare dso_local i32 @sock_opt_to_real(i32, i32) #1

declare dso_local i32 @sock_level_to_real(i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

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
