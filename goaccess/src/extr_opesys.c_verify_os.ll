; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_opesys.c_verify_os.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_opesys.c_verify_os.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@os = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@OPESYS_TYPE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @verify_os(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  store i8* null, i8** %3, align 8
  br label %47

16:                                               ; preds = %10
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %39, %16
  %18 = load i64, i64* %7, align 8
  %19 = load i32**, i32*** @os, align 8
  %20 = call i64 @ARRAY_SIZE(i32** %19)
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i32**, i32*** @os, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @strstr(i8* %23, i32 %29)
  store i8* %30, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i8* @parse_os(i8* %33, i8* %34, i8* %35, i64 %36)
  store i8* %37, i8** %3, align 8
  br label %47

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %17

42:                                               ; preds = %17
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* @OPESYS_TYPE_LEN, align 4
  %45 = call i32 @xstrncpy(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = call i8* @alloc_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %42, %32, %15
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

declare dso_local i64 @ARRAY_SIZE(i32**) #1

declare dso_local i8* @strstr(i8*, i32) #1

declare dso_local i8* @parse_os(i8*, i8*, i8*, i64) #1

declare dso_local i32 @xstrncpy(i8*, i8*, i32) #1

declare dso_local i8* @alloc_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
