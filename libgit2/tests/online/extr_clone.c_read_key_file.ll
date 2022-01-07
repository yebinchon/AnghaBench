; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_read_key_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_read_key_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @read_key_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_key_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %1
  store i8* null, i8** %2, align 8
  br label %52

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @SEEK_END, align 4
  %22 = call i32 @fseek(i32* %20, i32 0, i32 %21)
  %23 = icmp ne i32 %22, -1
  %24 = zext i1 %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @ftell(i32* %26)
  store i64 %27, i64* %6, align 8
  %28 = icmp ne i64 %27, -1
  %29 = zext i1 %28 to i32
  %30 = call i32 @cl_assert(i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @SEEK_SET, align 4
  %33 = call i32 @fseek(i32* %31, i32 0, i32 %32)
  %34 = icmp ne i32 %33, -1
  %35 = zext i1 %34 to i32
  %36 = call i32 @cl_assert(i32 %35)
  %37 = load i64, i64* %6, align 8
  %38 = call i8* @malloc(i64 %37)
  store i8* %38, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @cl_assert(i32 %40)
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @fread(i8* %42, i64 %43, i32 1, i32* %44)
  %46 = icmp eq i32 %45, 1
  %47 = zext i1 %46 to i32
  %48 = call i32 @cl_assert(i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @fclose(i32* %49)
  %51 = load i8*, i8** %5, align 8
  store i8* %51, i8** %2, align 8
  br label %52

52:                                               ; preds = %14, %13
  %53 = load i8*, i8** %2, align 8
  ret i8* %53
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
