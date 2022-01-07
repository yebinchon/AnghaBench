; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_split.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @split(i8* %0, i8** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i8*, i8** %5, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %10, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8*, i8** %18, i64 %21
  store i8* %17, i8** %22, align 8
  br label %25

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  br label %98

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %92, %25
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %95

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 39
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  %37 = xor i32 %36, 1
  store i32 %37, i32* %11, align 4
  br label %92

38:                                               ; preds = %30
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 40
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %46, %43
  br label %91

50:                                               ; preds = %38
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 41
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %58, %55
  br label %90

62:                                               ; preds = %50
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 44
  br i1 %66, label %67, label %89

67:                                               ; preds = %62
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %70
  %74 = load i8*, i8** %5, align 8
  store i8 0, i8* %74, align 1
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8**, i8*** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8*, i8** %81, i64 %84
  store i8* %80, i8** %85, align 8
  br label %88

86:                                               ; preds = %73
  %87 = load i32*, i32** %7, align 8
  store i32 0, i32* %87, align 4
  br label %98

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %70, %67, %62
  br label %90

90:                                               ; preds = %89, %61
  br label %91

91:                                               ; preds = %90, %49
  br label %92

92:                                               ; preds = %91, %35
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %5, align 8
  br label %26

95:                                               ; preds = %26
  %96 = load i32, i32* %10, align 4
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %86, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
