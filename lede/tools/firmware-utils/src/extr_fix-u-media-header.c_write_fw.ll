; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_fix-u-media-header.c_write_fw.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_fix-u-media-header.c_write_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@ofname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for writing\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"unable to write output file\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @write_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_fw(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* @ofname, align 4
  %9 = call i32* @fopen(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ofname, align 4
  %14 = call i32 (i8*, ...) @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  br label %38

15:                                               ; preds = %2
  store i64 0, i64* @errno, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @fwrite(i8* %16, i32 %17, i32 1, i32* %18)
  %20 = load i64, i64* @errno, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 (i8*, ...) @ERRS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @fflush(i32* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @fclose(i32* %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @EXIT_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @ofname, align 4
  %36 = call i32 @unlink(i32 %35)
  br label %37

37:                                               ; preds = %34, %26
  br label %38

38:                                               ; preds = %37, %12
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @ERRS(i8*, ...) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
