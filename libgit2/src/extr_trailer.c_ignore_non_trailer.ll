; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_trailer.c_ignore_non_trailer.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_trailer.c_ignore_non_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMMENT_LINE_CHAR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [12 x i8] c"Conflicts:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @ignore_non_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ignore_non_trailer(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i64, i64* %4, align 8
  store i64 %10, i64* %8, align 8
  br label %11

11:                                               ; preds = %84, %2
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %90

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %19, %20
  %22 = call i8* @memchr(i8* %18, i8 signext 10, i64 %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = load i8*, i8** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %9, align 8
  br label %32

29:                                               ; preds = %15
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i8*, i8** %3, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* @COMMENT_LINE_CHAR, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %32
  %42 = load i8*, i8** %3, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %48, label %54

48:                                               ; preds = %41, %32
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %51, %48
  br label %84

54:                                               ; preds = %41
  %55 = load i8*, i8** %3, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = call i64 @git__prefixcmp(i8* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  store i32 1, i32* %7, align 4
  %61 = load i64, i64* %5, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %63, %60
  br label %83

66:                                               ; preds = %54
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i8*, i8** %3, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 9
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %82

77:                                               ; preds = %69, %66
  %78 = load i64, i64* %5, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i64 0, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %77
  br label %82

82:                                               ; preds = %81, %76
  br label %83

83:                                               ; preds = %82, %65
  br label %84

84:                                               ; preds = %83, %53
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %3, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  store i64 %89, i64* %6, align 8
  br label %11

90:                                               ; preds = %11
  %91 = load i64, i64* %5, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* %5, align 8
  %96 = sub i64 %94, %95
  br label %101

97:                                               ; preds = %90
  %98 = load i64, i64* %4, align 8
  %99 = load i64, i64* %8, align 8
  %100 = sub i64 %98, %99
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi i64 [ %96, %93 ], [ %100, %97 ]
  ret i64 %102
}

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i64 @git__prefixcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
