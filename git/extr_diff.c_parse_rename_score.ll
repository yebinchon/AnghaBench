; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_parse_rename_score.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_parse_rename_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SCORE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_rename_score(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  %8 = load i8**, i8*** %2, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %7, align 8
  store i64 0, i64* %3, align 8
  store i64 1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %56, %1
  %11 = load i8*, i8** %7, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 46
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i64 1, i64* %4, align 8
  store i32 1, i32* %6, align 4
  br label %56

20:                                               ; preds = %16, %10
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8
  %28 = mul i64 %27, 100
  br label %30

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i64 [ %28, %26 ], [ 100, %29 ]
  store i64 %31, i64* %4, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %7, align 8
  br label %59

34:                                               ; preds = %20
  %35 = load i32, i32* %5, align 4
  %36 = icmp sge i32 %35, 48
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp sle i32 %38, 57
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i64, i64* %4, align 8
  %42 = icmp ult i64 %41, 100000
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i64, i64* %4, align 8
  %45 = mul i64 %44, 10
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %3, align 8
  %47 = mul i64 %46, 10
  %48 = load i32, i32* %5, align 4
  %49 = sub nsw i32 %48, 48
  %50 = sext i32 %49 to i64
  %51 = add i64 %47, %50
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %43, %40
  br label %54

53:                                               ; preds = %37, %34
  br label %59

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55, %19
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  br label %10

59:                                               ; preds = %53, %30
  %60 = load i8*, i8** %7, align 8
  %61 = load i8**, i8*** %2, align 8
  store i8* %60, i8** %61, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* %4, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i64, i64* @MAX_SCORE, align 8
  br label %73

67:                                               ; preds = %59
  %68 = load i64, i64* @MAX_SCORE, align 8
  %69 = load i64, i64* %3, align 8
  %70 = mul i64 %68, %69
  %71 = load i64, i64* %4, align 8
  %72 = udiv i64 %70, %71
  br label %73

73:                                               ; preds = %67, %65
  %74 = phi i64 [ %66, %65 ], [ %72, %67 ]
  %75 = trunc i64 %74 to i32
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
