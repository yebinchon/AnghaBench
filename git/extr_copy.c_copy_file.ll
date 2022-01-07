; ModuleID = '/home/carl/AnghaBench/git/extr_copy.c_copy_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_copy.c_copy_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"copy-fd: read returned\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"copy-fd: write returned\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s: close error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_file(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 73
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 511, i32 438
  store i32 %15, i32* %7, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = call i32 (i8*, i32, ...) @open(i8* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %64

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @O_WRONLY, align 4
  %25 = load i32, i32* @O_CREAT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @O_EXCL, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i8*, i32, ...) @open(i8* %23, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @close(i32 %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %64

36:                                               ; preds = %22
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @copy_fd(i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  switch i32 %40, label %45 [
    i32 129, label %41
    i32 128, label %43
  ]

41:                                               ; preds = %36
  %42 = call i32 (i8*, ...) @error_errno(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %45

43:                                               ; preds = %36
  %44 = call i32 (i8*, ...) @error_errno(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %36, %43, %41
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @close(i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @close(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 (i8*, ...) @error_errno(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  store i32 %53, i32* %4, align 4
  br label %64

54:                                               ; preds = %45
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @adjust_shared_perm(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 -1, i32* %4, align 4
  br label %64

62:                                               ; preds = %57, %54
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %61, %51, %32, %20
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @copy_fd(i32, i32) #1

declare dso_local i32 @error_errno(i8*, ...) #1

declare dso_local i64 @adjust_shared_perm(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
