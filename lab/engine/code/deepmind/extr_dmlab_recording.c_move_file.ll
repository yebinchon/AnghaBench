; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_recording.c_move_file.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_recording.c_move_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EXDEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @move_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_file(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @rename(i8* %10, i8* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @EXDEV, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %55

22:                                               ; preds = %16
  %23 = load i8*, i8** %4, align 8
  %24 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %55

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = call i32* @fopen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @fclose(i32* %32)
  store i32 0, i32* %3, align 4
  br label %55

34:                                               ; preds = %27
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @copy_fp(i32* %35, i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @fclose(i32* %38)
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @fclose(i32* %40)
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i8*, i8** %4, align 8
  %46 = call i64 @unlink(i8* %45)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %55

49:                                               ; preds = %34
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @unlink(i8* %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %44, %31, %26, %20, %15
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @copy_fp(i32*, i32*) #1

declare dso_local i64 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
