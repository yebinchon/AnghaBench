; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_increase_rare_word_char_freq.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_increase_rare_word_char_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_5__*, i64* }

@PRIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @increase_rare_word_char_freq(i64* %0, i64* %1, %struct.TYPE_6__* %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca %struct.TYPE_5__**, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %102, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @PRIME, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %105

19:                                               ; preds = %15
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %22, i64 %24
  store %struct.TYPE_5__** %25, %struct.TYPE_5__*** %14, align 8
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %13, align 8
  br label %28

28:                                               ; preds = %98, %19
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %101

31:                                               ; preds = %28
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp sle i64 %35, %37
  br i1 %38, label %39, label %94

39:                                               ; preds = %31
  %40 = load i64, i64* %12, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %94

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %46, align 8
  %47 = load i64, i64* %12, align 8
  %48 = sub nsw i64 0, %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  %53 = load i64, i64* %12, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %53
  store i64 %60, i64* %58, align 8
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %83, %42
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %63, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %61
  %69 = load i64, i64* %12, align 8
  %70 = load i64*, i64** %5, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i8
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds i64, i64* %70, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, %69
  store i64 %82, i64* %80, align 8
  br label %83

83:                                               ; preds = %68
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %61

86:                                               ; preds = %61
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add i64 32, %90
  %92 = trunc i64 %91 to i32
  %93 = call i32 @zfree(%struct.TYPE_5__* %87, i32 %92)
  br label %97

94:                                               ; preds = %39, %31
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  store %struct.TYPE_5__** %96, %struct.TYPE_5__*** %14, align 8
  br label %97

97:                                               ; preds = %94, %86
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  store %struct.TYPE_5__* %100, %struct.TYPE_5__** %13, align 8
  br label %28

101:                                              ; preds = %28
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %15

105:                                              ; preds = %15
  %106 = load i32, i32* %11, align 4
  ret i32 %106
}

declare dso_local i32 @zfree(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
