; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_faccessat.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_faccessat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.fd = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@_EBADF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"faccessat(%d, \22%s\22, 0x%x, %d)\00", align 1
@AT_EACCESS_ = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_faccessat(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fd*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = trunc i64 %18 to i32
  %23 = call i64 @user_read_string(i32 %21, i8* %20, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @_EFAULT, align 4
  store i32 %26, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %74

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.fd* @at_fd(i32 %28)
  store %struct.fd* %29, %struct.fd** %13, align 8
  %30 = load %struct.fd*, %struct.fd** %13, align 8
  %31 = icmp eq %struct.fd* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @_EBADF, align 4
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %74

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @STRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %20, i32 %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @AT_EACCESS_, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load %struct.fd*, %struct.fd** %13, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @generic_accessat(%struct.fd* %44, i8* %20, i32 %45)
  store i32 %46, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %74

47:                                               ; preds = %34
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %14, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %15, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.fd*, %struct.fd** %13, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @generic_accessat(%struct.fd* %64, i8* %20, i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i8*, i8** %14, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %47, %43, %32, %25
  %75 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @user_read_string(i32, i8*, i32) #2

declare dso_local %struct.fd* @at_fd(i32) #2

declare dso_local i32 @STRACE(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @generic_accessat(%struct.fd*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
