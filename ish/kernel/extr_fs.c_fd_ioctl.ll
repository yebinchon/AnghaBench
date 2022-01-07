; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_fd_ioctl.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_fd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i64)*, i32 (%struct.fd*, i64, i8*)* }

@_ENOTTY = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, i64, i64)* @fd_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_ioctl(%struct.fd* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fd* %0, %struct.fd** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 -1, i64* %8, align 8
  %13 = load %struct.fd*, %struct.fd** %5, align 8
  %14 = getelementptr inbounds %struct.fd, %struct.fd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64 (i64)*, i64 (i64)** %16, align 8
  %18 = icmp ne i64 (i64)* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.fd*, %struct.fd** %5, align 8
  %21 = getelementptr inbounds %struct.fd, %struct.fd* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64 (i64)*, i64 (i64)** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 %24(i64 %25)
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %19, %3
  %28 = load i64, i64* %8, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @_ENOTTY, align 4
  store i32 %31, i32* %4, align 4
  br label %80

32:                                               ; preds = %27
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.fd*, %struct.fd** %5, align 8
  %37 = getelementptr inbounds %struct.fd, %struct.fd* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32 (%struct.fd*, i64, i8*)*, i32 (%struct.fd*, i64, i8*)** %39, align 8
  %41 = load %struct.fd*, %struct.fd** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 %40(%struct.fd* %41, i64 %42, i8* %44)
  store i32 %45, i32* %4, align 4
  br label %80

46:                                               ; preds = %32
  %47 = load i64, i64* %8, align 8
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %9, align 8
  %49 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %10, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @user_read(i64 %50, i8* %49, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @_EFAULT, align 4
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %78

56:                                               ; preds = %46
  %57 = load %struct.fd*, %struct.fd** %5, align 8
  %58 = getelementptr inbounds %struct.fd, %struct.fd* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32 (%struct.fd*, i64, i8*)*, i32 (%struct.fd*, i64, i8*)** %60, align 8
  %62 = load %struct.fd*, %struct.fd** %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 %61(%struct.fd* %62, i64 %63, i8* %49)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %78

69:                                               ; preds = %56
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i64 @user_write(i64 %70, i8* %49, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @_EFAULT, align 4
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %78

78:                                               ; preds = %76, %74, %67, %54
  %79 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %79)
  br label %80

80:                                               ; preds = %78, %35, %30
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @user_read(i64, i8*, i64) #2

declare dso_local i64 @user_write(i64, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
