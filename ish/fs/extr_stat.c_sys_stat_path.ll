; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_stat.c_sys_stat_path.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_stat.c_sys_stat_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }
%struct.statbuf = type { i32 }
%struct.newstat64 = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"stat(at=%d, path=\22%s\22, statbuf=0x%x, follow_links=%d)\00", align 1
@_EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @sys_stat_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sys_stat_path(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fd*, align 8
  %15 = alloca %struct.statbuf, align 4
  %16 = alloca %struct.newstat64, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = trunc i64 %18 to i32
  %23 = call i64 @user_read_string(i32 %21, i8* %20, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @_EFAULT, align 4
  store i32 %26, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %58

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @STRACE(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %20, i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.fd* @at_fd(i32 %32)
  store %struct.fd* %33, %struct.fd** %14, align 8
  %34 = load %struct.fd*, %struct.fd** %14, align 8
  %35 = icmp eq %struct.fd* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @_EBADF, align 4
  store i32 %37, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %58

38:                                               ; preds = %27
  %39 = load %struct.fd*, %struct.fd** %14, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @generic_statat(%struct.fd* %39, i8* %20, %struct.statbuf* %15, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %58

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %15, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @stat_convert_newstat64(i32 %47)
  %49 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %16, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %16, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @user_put(i32 %50, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @_EFAULT, align 4
  store i32 %56, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %58

57:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %58

58:                                               ; preds = %57, %55, %43, %36, %25
  %59 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @user_read_string(i32, i8*, i32) #2

declare dso_local i32 @STRACE(i8*, i32, i8*, i32, i32) #2

declare dso_local %struct.fd* @at_fd(i32) #2

declare dso_local i32 @generic_statat(%struct.fd*, i8*, %struct.statbuf*, i32) #2

declare dso_local i32 @stat_convert_newstat64(i32) #2

declare dso_local i64 @user_put(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
