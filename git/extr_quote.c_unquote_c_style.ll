; ModuleID = '/home/carl/AnghaBench/git/extr_quote.c_unquote_c_style.c'
source_filename = "/home/carl/AnghaBench/git/extr_quote.c_unquote_c_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"\22\\\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unquote_c_style(%struct.strbuf* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %6, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 34
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %101

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %93, %21
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @strcspn(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %24, i64* %9, align 8
  %25 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @strbuf_add(%struct.strbuf* %25, i8* %26, i64 %27)
  %29 = load i64, i64* %9, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 %29
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  %34 = load i8, i8* %32, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %44 [
    i32 34, label %36
    i32 92, label %43
  ]

36:                                               ; preds = %22
  %37 = load i8**, i8*** %7, align 8
  %38 = icmp ne i8** %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = load i8**, i8*** %7, align 8
  store i8* %40, i8** %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  store i32 0, i32* %4, align 4
  br label %101

43:                                               ; preds = %22
  br label %45

44:                                               ; preds = %22
  br label %97

45:                                               ; preds = %43
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  %48 = load i8, i8* %46, align 1
  %49 = sext i8 %48 to i32
  store i32 %49, i32* %10, align 4
  switch i32 %49, label %92 [
    i32 97, label %50
    i32 98, label %51
    i32 102, label %52
    i32 110, label %53
    i32 114, label %54
    i32 116, label %55
    i32 118, label %56
    i32 92, label %57
    i32 34, label %57
    i32 48, label %58
    i32 49, label %58
    i32 50, label %58
    i32 51, label %58
  ]

50:                                               ; preds = %45
  store i32 7, i32* %10, align 4
  br label %93

51:                                               ; preds = %45
  store i32 8, i32* %10, align 4
  br label %93

52:                                               ; preds = %45
  store i32 12, i32* %10, align 4
  br label %93

53:                                               ; preds = %45
  store i32 10, i32* %10, align 4
  br label %93

54:                                               ; preds = %45
  store i32 13, i32* %10, align 4
  br label %93

55:                                               ; preds = %45
  store i32 9, i32* %10, align 4
  br label %93

56:                                               ; preds = %45
  store i32 11, i32* %10, align 4
  br label %93

57:                                               ; preds = %45, %45
  br label %93

58:                                               ; preds = %45, %45, %45, %45
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %59, 48
  %61 = shl i32 %60, 6
  store i32 %61, i32* %11, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %6, align 8
  %64 = load i8, i8* %62, align 1
  %65 = sext i8 %64 to i32
  store i32 %65, i32* %10, align 4
  %66 = icmp slt i32 %65, 48
  br i1 %66, label %70, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 55, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %67, %58
  br label %97

71:                                               ; preds = %67
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %72, 48
  %74 = shl i32 %73, 3
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %11, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %6, align 8
  %79 = load i8, i8* %77, align 1
  %80 = sext i8 %79 to i32
  store i32 %80, i32* %10, align 4
  %81 = icmp slt i32 %80, 48
  br i1 %81, label %85, label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 55, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %82, %71
  br label %97

86:                                               ; preds = %82
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %87, 48
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %10, align 4
  br label %93

92:                                               ; preds = %45
  br label %97

93:                                               ; preds = %86, %57, %56, %55, %54, %53, %52, %51, %50
  %94 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @strbuf_addch(%struct.strbuf* %94, i32 %95)
  br label %22

97:                                               ; preds = %92, %85, %70, %44
  %98 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @strbuf_setlen(%struct.strbuf* %98, i64 %99)
  store i32 -1, i32* %4, align 4
  br label %101

101:                                              ; preds = %97, %42, %20
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
