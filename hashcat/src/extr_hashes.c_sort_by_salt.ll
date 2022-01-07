; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hashes.c_sort_by_salt.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hashes.c_sort_by_salt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sort_by_salt(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %7, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = sub nsw i32 %19, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %128

29:                                               ; preds = %2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = sub nsw i32 %33, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %128

43:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %82, %43
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 64
  br i1 %46, label %47, label %85

47:                                               ; preds = %44
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %54, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %128

64:                                               ; preds = %47
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %71, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  store i32 -1, i32* %3, align 4
  br label %128

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %44

85:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %124, %85
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %87, 64
  br i1 %88, label %89, label %127

89:                                               ; preds = %86
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %96, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  store i32 1, i32* %3, align 4
  br label %128

106:                                              ; preds = %89
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %113, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %106
  store i32 -1, i32* %3, align 4
  br label %128

123:                                              ; preds = %106
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %86

127:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %122, %105, %80, %63, %41, %27
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
