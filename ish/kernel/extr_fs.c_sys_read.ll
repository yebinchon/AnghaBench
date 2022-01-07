; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_read.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 (%struct.fd*, i8*, i64)* }

@.str = private unnamed_addr constant [19 x i8] c"read(%d, 0x%x, %d)\00", align 1
@_ENOMEM = common dso_local global i64 0, align 8
@_EBADF = common dso_local global i64 0, align 8
@_EISDIR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c" \22%.99s\22\00", align 1
@_EFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sys_read(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fd*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = load i32, i32* %6, align 4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 (i8*, i8*, ...) @STRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %14, i64 %15)
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = call i64 @malloc(i32 %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i64, i64* @_ENOMEM, align 8
  store i64 %25, i64* %4, align 8
  br label %79

26:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.fd* @f_get(i32 %27)
  store %struct.fd* %28, %struct.fd** %10, align 8
  %29 = load %struct.fd*, %struct.fd** %10, align 8
  %30 = icmp eq %struct.fd* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load %struct.fd*, %struct.fd** %10, align 8
  %33 = getelementptr inbounds %struct.fd, %struct.fd* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64 (%struct.fd*, i8*, i64)*, i64 (%struct.fd*, i8*, i64)** %35, align 8
  %37 = icmp eq i64 (%struct.fd*, i8*, i64)* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31, %26
  %39 = load i64, i64* @_EBADF, align 8
  store i64 %39, i64* %9, align 8
  br label %75

40:                                               ; preds = %31
  %41 = load %struct.fd*, %struct.fd** %10, align 8
  %42 = getelementptr inbounds %struct.fd, %struct.fd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @S_ISDIR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* @_EISDIR, align 8
  store i64 %47, i64* %9, align 8
  br label %75

48:                                               ; preds = %40
  %49 = load %struct.fd*, %struct.fd** %10, align 8
  %50 = getelementptr inbounds %struct.fd, %struct.fd* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64 (%struct.fd*, i8*, i64)*, i64 (%struct.fd*, i8*, i64)** %52, align 8
  %54 = load %struct.fd*, %struct.fd** %10, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i64 %53(%struct.fd* %54, i8* %55, i64 %56)
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp uge i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %48
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 (i8*, i8*, ...) @STRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* %6, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @user_write(i32 %66, i8* %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i64, i64* @_EFAULT, align 8
  store i64 %72, i64* %9, align 8
  br label %73

73:                                               ; preds = %71, %60
  br label %74

74:                                               ; preds = %73, %48
  br label %75

75:                                               ; preds = %74, %46, %38
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i64, i64* %9, align 8
  store i64 %78, i64* %4, align 8
  br label %79

79:                                               ; preds = %75, %24
  %80 = load i64, i64* %4, align 8
  ret i64 %80
}

declare dso_local i32 @STRACE(i8*, i8*, ...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.fd* @f_get(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @user_write(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
