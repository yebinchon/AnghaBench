; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_common.c_read_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_common.c_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i32 -1, i32* %6, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @open(i8* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @fstat(i32 %13, %struct.stat* %5)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %1
  br label %64

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i8* @malloc(i32 %20)
  store i8* %21, i8** %4, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %64

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %55, %51, %24
  %26 = load i32, i32* %3, align 4
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 %37, %38
  %40 = call i32 @read(i32 %31, i8* %35, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %30
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @EAGAIN, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* @errno, align 8
  %49 = load i64, i64* @EINTR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %43
  br label %25

52:                                               ; preds = %47
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @free(i8* %53)
  store i8* null, i8** %4, align 8
  br label %64

55:                                               ; preds = %30
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %25

59:                                               ; preds = %25
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %59, %52, %23, %16
  %65 = load i32, i32* %6, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @close(i32 %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i8*, i8** %4, align 8
  ret i8* %71
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
