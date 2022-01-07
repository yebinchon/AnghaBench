; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_utime_common.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_utime_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.fd = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"utimensat(%d, %s, {{%d, %d}, {%d, %d}}, %d)\00", align 1
@_EBADF = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i32)* @sys_utime_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sys_utime_common(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca %struct.timespec, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.fd*, align 8
  %16 = alloca i32, align 4
  %17 = bitcast %struct.timespec* %7 to i64*
  store i64 %2, i64* %17, align 4
  %18 = bitcast %struct.timespec* %8 to i64*
  store i64 %3, i64* %18, align 4
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %5
  %26 = load i64, i64* %10, align 8
  %27 = trunc i64 %20 to i32
  %28 = call i64 @user_read_string(i64 %26, i8* %22, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @_EFAULT, align 4
  store i32 %31, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %71

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %5
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @STRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %22, i32 %36, i32 %38, i32 %40, i32 %42, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = call %struct.fd* @at_fd(i32 %45)
  store %struct.fd* %46, %struct.fd** %15, align 8
  %47 = load %struct.fd*, %struct.fd** %15, align 8
  %48 = icmp eq %struct.fd* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %33
  %50 = load i32, i32* @_EBADF, align 4
  store i32 %50, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %71

51:                                               ; preds = %33
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @AT_SYMLINK_NOFOLLOW_, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 0, i32 1
  store i32 %57, i32* %16, align 4
  %58 = load %struct.fd*, %struct.fd** %15, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %63

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %61
  %64 = phi i8* [ %22, %61 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %62 ]
  %65 = load i32, i32* %16, align 4
  %66 = bitcast %struct.timespec* %7 to i64*
  %67 = load i64, i64* %66, align 4
  %68 = bitcast %struct.timespec* %8 to i64*
  %69 = load i64, i64* %68, align 4
  %70 = call i32 @generic_utime(%struct.fd* %58, i8* %64, i64 %67, i64 %69, i32 %65)
  store i32 %70, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %71

71:                                               ; preds = %63, %49, %30
  %72 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @user_read_string(i64, i8*, i32) #2

declare dso_local i32 @STRACE(i8*, i32, i8*, i32, i32, i32, i32, i32) #2

declare dso_local %struct.fd* @at_fd(i32) #2

declare dso_local i32 @generic_utime(%struct.fd*, i8*, i64, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
