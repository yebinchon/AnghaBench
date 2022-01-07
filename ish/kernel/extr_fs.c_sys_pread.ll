; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_pread.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_pread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.fd*, i32, i32)*, i64 (%struct.fd*, i8*, i64)* }

@.str = private unnamed_addr constant [24 x i8] c"pread(%d, 0x%x, %d, %d)\00", align 1
@_EBADF = common dso_local global i64 0, align 8
@_ENOMEM = common dso_local global i64 0, align 8
@LSEEK_SET = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sys_pread(i32 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fd*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @STRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i64 %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.fd* @f_get(i32 %18)
  store %struct.fd* %19, %struct.fd** %10, align 8
  %20 = load %struct.fd*, %struct.fd** %10, align 8
  %21 = icmp eq %struct.fd* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* @_EBADF, align 8
  store i64 %23, i64* %5, align 8
  br label %78

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  %26 = add nsw i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i8* @malloc(i32 %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i64, i64* @_ENOMEM, align 8
  store i64 %32, i64* %5, align 8
  br label %78

33:                                               ; preds = %24
  %34 = load %struct.fd*, %struct.fd** %10, align 8
  %35 = getelementptr inbounds %struct.fd, %struct.fd* %34, i32 0, i32 0
  %36 = call i32 @lock(i32* %35)
  %37 = load %struct.fd*, %struct.fd** %10, align 8
  %38 = getelementptr inbounds %struct.fd, %struct.fd* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64 (%struct.fd*, i32, i32)*, i64 (%struct.fd*, i32, i32)** %40, align 8
  %42 = load %struct.fd*, %struct.fd** %10, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @LSEEK_SET, align 4
  %45 = call i64 %41(%struct.fd* %42, i32 %43, i32 %44)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %71

49:                                               ; preds = %33
  %50 = load %struct.fd*, %struct.fd** %10, align 8
  %51 = getelementptr inbounds %struct.fd, %struct.fd* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64 (%struct.fd*, i8*, i64)*, i64 (%struct.fd*, i8*, i64)** %53, align 8
  %55 = load %struct.fd*, %struct.fd** %10, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i64 %54(%struct.fd* %55, i8* %56, i64 %57)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %49
  %62 = load i32, i32* %7, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i64 @user_write(i32 %62, i8* %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i64, i64* @_EFAULT, align 8
  store i64 %68, i64* %12, align 8
  br label %69

69:                                               ; preds = %67, %61
  br label %70

70:                                               ; preds = %69, %49
  br label %71

71:                                               ; preds = %70, %48
  %72 = load %struct.fd*, %struct.fd** %10, align 8
  %73 = getelementptr inbounds %struct.fd, %struct.fd* %72, i32 0, i32 0
  %74 = call i32 @unlock(i32* %73)
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i64, i64* %12, align 8
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %71, %31, %22
  %79 = load i64, i64* %5, align 8
  ret i64 %79
}

declare dso_local i32 @STRACE(i8*, i32, i32, i64, i32) #1

declare dso_local %struct.fd* @f_get(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local i64 @user_write(i32, i8*, i64) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
