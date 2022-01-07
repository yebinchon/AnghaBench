; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_runner.c_log_tap_result.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_runner.c_log_tap_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" # SKIP \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"not ok\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"%s %d - %s%s%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_tap_result(i32 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %16 [
    i32 129, label %14
    i32 128, label %15
  ]

14:                                               ; preds = %4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %17

15:                                               ; preds = %4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %17

16:                                               ; preds = %4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %17

17:                                               ; preds = %16, %15, %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @process_output_size(i32* %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %27 = call i32 @process_read_last_line(i32* %25, i8* %26, i32 1024)
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = load i32, i32* %12, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i32, i32* %12, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %43
  store i8 0, i8* %44, align 1
  br label %45

45:                                               ; preds = %40, %32, %24
  br label %48

46:                                               ; preds = %20, %17
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %47, align 16
  br label %48

48:                                               ; preds = %46, %45
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %55 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %50, i32 %51, i8* %52, i8* %53, i8* %54)
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 @fflush(i32 %56)
  ret void
}

declare dso_local i64 @process_output_size(i32*) #1

declare dso_local i32 @process_read_last_line(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
