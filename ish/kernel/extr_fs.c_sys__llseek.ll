; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys__llseek.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys__llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fd*, i32, i32)* }

@_EBADF = common dso_local global i32 0, align 4
@_ESPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"llseek(%d, %lu, %#x, %d)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" -> %lu\00", align 1
@_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys__llseek(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.fd* @f_get(i32 %15)
  store %struct.fd* %16, %struct.fd** %12, align 8
  %17 = load %struct.fd*, %struct.fd** %12, align 8
  %18 = icmp eq %struct.fd* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @_EBADF, align 4
  store i32 %20, i32* %6, align 4
  br label %69

21:                                               ; preds = %5
  %22 = load %struct.fd*, %struct.fd** %12, align 8
  %23 = getelementptr inbounds %struct.fd, %struct.fd* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.fd*, i32, i32)*, i32 (%struct.fd*, i32, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.fd*, i32, i32)* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @_ESPIPE, align 4
  store i32 %29, i32* %6, align 4
  br label %69

30:                                               ; preds = %21
  %31 = load %struct.fd*, %struct.fd** %12, align 8
  %32 = getelementptr inbounds %struct.fd, %struct.fd* %31, i32 0, i32 0
  %33 = call i32 @lock(i32* %32)
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 %34, 32
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 (i8*, i32, ...) @STRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.fd*, %struct.fd** %12, align 8
  %44 = getelementptr inbounds %struct.fd, %struct.fd* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.fd*, i32, i32)*, i32 (%struct.fd*, i32, i32)** %46, align 8
  %48 = load %struct.fd*, %struct.fd** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 %47(%struct.fd* %48, i32 %49, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 (i8*, i32, ...) @STRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.fd*, %struct.fd** %12, align 8
  %55 = getelementptr inbounds %struct.fd, %struct.fd* %54, i32 0, i32 0
  %56 = call i32 @unlock(i32* %55)
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %30
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %6, align 4
  br label %69

61:                                               ; preds = %30
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i64 @user_put(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @_EFAULT, align 4
  store i32 %67, i32* %6, align 4
  br label %69

68:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %66, %59, %28, %19
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local %struct.fd* @f_get(i32) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @STRACE(i8*, i32, ...) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i64 @user_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
