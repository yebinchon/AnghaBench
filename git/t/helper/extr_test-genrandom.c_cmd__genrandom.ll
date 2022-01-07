; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-genrandom.c_cmd__genrandom.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-genrandom.c_cmd__genrandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"usage: %s <seed_string> [<size>]\0A\00", align 1
@EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__genrandom(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 3
  br i1 %13, label %14, label %20

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 1, i32* %3, align 4
  br label %64

20:                                               ; preds = %11
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %8, align 8
  br label %24

24:                                               ; preds = %31, %20
  %25 = load i64, i64* %7, align 8
  %26 = mul i64 %25, 11
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i64
  %30 = add i64 %26, %29
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %24
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %8, align 8
  %34 = load i8, i8* %32, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %24, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strtoul(i8* %42, i32* null, i32 0)
  br label %45

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %39
  %46 = phi i64 [ %43, %39 ], [ -1, %44 ]
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %62, %45
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %6, align 8
  %50 = icmp ne i64 %48, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i64, i64* %7, align 8
  %53 = mul i64 %52, 1103515245
  %54 = add i64 %53, 12345
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = lshr i64 %55, 16
  %57 = and i64 %56, 255
  %58 = call i64 @putchar(i64 %57)
  %59 = load i64, i64* @EOF, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 -1, i32* %3, align 4
  br label %64

62:                                               ; preds = %51
  br label %47

63:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %61, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i64 @putchar(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
