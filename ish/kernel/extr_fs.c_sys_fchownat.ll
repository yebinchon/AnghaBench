; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_fchownat.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_fchownat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"fchownat(%d, \22%s\22, %d, %d, %d)\00", align 1
@_EBADF = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW_ = common dso_local global i32 0, align 4
@uid = common dso_local global i32 0, align 4
@gid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_fchownat(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.fd*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i32, i32* %8, align 4
  %23 = trunc i64 %19 to i32
  %24 = call i64 @user_read_string(i32 %22, i8* %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @_EFAULT, align 4
  store i32 %27, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %77

28:                                               ; preds = %5
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @STRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29, i8* %21, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.fd* @at_fd(i32 %34)
  store %struct.fd* %35, %struct.fd** %15, align 8
  %36 = load %struct.fd*, %struct.fd** %15, align 8
  %37 = icmp eq %struct.fd* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @_EBADF, align 4
  store i32 %39, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %77

40:                                               ; preds = %28
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @AT_SYMLINK_NOFOLLOW_, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 1
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %61

49:                                               ; preds = %40
  %50 = load %struct.fd*, %struct.fd** %15, align 8
  %51 = load i32, i32* @uid, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @make_attr(i32 %51, i32 %52)
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @generic_setattrat(%struct.fd* %50, i8* %21, i32 %53, i32 %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %77

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load %struct.fd*, %struct.fd** %15, align 8
  %66 = load i32, i32* @gid, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @make_attr(i32 %66, i32 %67)
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @generic_setattrat(%struct.fd* %65, i8* %21, i32 %68, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %77

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %61
  store i32 0, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %77

77:                                               ; preds = %76, %73, %58, %38, %26
  %78 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @user_read_string(i32, i8*, i32) #2

declare dso_local i32 @STRACE(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local %struct.fd* @at_fd(i32) #2

declare dso_local i32 @generic_setattrat(%struct.fd*, i8*, i32, i32) #2

declare dso_local i32 @make_attr(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
