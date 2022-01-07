; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_look_ahead.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_look_ahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { %struct.grep_pat* }
%struct.grep_pat = type { %struct.grep_pat* }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grep_opt*, i64*, i32*, i8**)* @look_ahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @look_ahead(%struct.grep_opt* %0, i64* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.grep_opt*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.grep_pat*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_3__, align 8
  store %struct.grep_opt* %0, %struct.grep_opt** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i8**, i8*** %9, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %11, align 8
  store i64 -1, i64* %15, align 8
  %22 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %23 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %22, i32 0, i32 0
  %24 = load %struct.grep_pat*, %struct.grep_pat** %23, align 8
  store %struct.grep_pat* %24, %struct.grep_pat** %12, align 8
  br label %25

25:                                               ; preds = %59, %4
  %26 = load %struct.grep_pat*, %struct.grep_pat** %12, align 8
  %27 = icmp ne %struct.grep_pat* %26, null
  br i1 %27, label %28, label %63

28:                                               ; preds = %25
  %29 = load %struct.grep_pat*, %struct.grep_pat** %12, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = call i32 @patmatch(%struct.grep_pat* %29, i8* %30, i8* %34, %struct.TYPE_3__* %17, i32 0)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38, %28
  br label %59

47:                                               ; preds = %42
  %48 = load i64, i64* %15, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %47
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %15, align 8
  br label %58

58:                                               ; preds = %55, %50
  br label %59

59:                                               ; preds = %58, %46
  %60 = load %struct.grep_pat*, %struct.grep_pat** %12, align 8
  %61 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %60, i32 0, i32 0
  %62 = load %struct.grep_pat*, %struct.grep_pat** %61, align 8
  store %struct.grep_pat* %62, %struct.grep_pat** %12, align 8
  br label %25

63:                                               ; preds = %25
  %64 = load i64, i64* %15, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i8*, i8** %11, align 8
  %68 = load i64*, i64** %7, align 8
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8**, i8*** %9, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i64*, i64** %7, align 8
  store i64 0, i64* %72, align 8
  store i32 1, i32* %5, align 4
  br label %125

73:                                               ; preds = %63
  %74 = load i8*, i8** %11, align 8
  %75 = load i64, i64* %15, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %13, align 8
  br label %77

77:                                               ; preds = %90, %73
  %78 = load i8*, i8** %11, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = icmp ult i8* %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i8*, i8** %13, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 -1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 10
  br label %87

87:                                               ; preds = %81, %77
  %88 = phi i1 [ false, %77 ], [ %86, %81 ]
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89
  %91 = load i8*, i8** %13, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %13, align 8
  br label %77

93:                                               ; preds = %87
  %94 = load i8*, i8** %13, align 8
  store i8* %94, i8** %14, align 8
  %95 = load i8*, i8** %11, align 8
  store i8* %95, i8** %13, align 8
  br label %96

96:                                               ; preds = %109, %93
  %97 = load i8*, i8** %13, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = icmp ult i8* %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %96
  %101 = load i8*, i8** %13, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 10
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* %10, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %105, %100
  br label %109

109:                                              ; preds = %108
  %110 = load i8*, i8** %13, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %13, align 8
  br label %96

112:                                              ; preds = %96
  %113 = load i8*, i8** %14, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = load i64*, i64** %7, align 8
  %119 = load i64, i64* %118, align 8
  %120 = sub i64 %119, %117
  store i64 %120, i64* %118, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = load i8**, i8*** %9, align 8
  store i8* %121, i8** %122, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load i32*, i32** %8, align 8
  store i32 %123, i32* %124, align 4
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %112, %66
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @patmatch(%struct.grep_pat*, i8*, i8*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
