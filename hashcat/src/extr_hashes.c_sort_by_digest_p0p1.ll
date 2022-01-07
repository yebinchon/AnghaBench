; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hashes.c_sort_by_digest_p0p1.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hashes.c_sort_by_digest_p0p1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sort_by_digest_p0p1(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to i64*
  store i64* %18, i64** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %10, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %12, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %13, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %14, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = load i64, i64* %14, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %14, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ugt i64 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %121

43:                                               ; preds = %3
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %14, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  br label %121

54:                                               ; preds = %43
  %55 = load i64*, i64** %8, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %9, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ugt i64 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %121

65:                                               ; preds = %54
  %66 = load i64*, i64** %8, align 8
  %67 = load i64, i64* %13, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %9, align 8
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %69, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %121

76:                                               ; preds = %65
  %77 = load i64*, i64** %8, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %9, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp ugt i64 %80, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  store i32 1, i32* %4, align 4
  br label %121

87:                                               ; preds = %76
  %88 = load i64*, i64** %8, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %9, align 8
  %93 = load i64, i64* %12, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %91, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  store i32 -1, i32* %4, align 4
  br label %121

98:                                               ; preds = %87
  %99 = load i64*, i64** %8, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %9, align 8
  %104 = load i64, i64* %11, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ugt i64 %102, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  store i32 1, i32* %4, align 4
  br label %121

109:                                              ; preds = %98
  %110 = load i64*, i64** %8, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %9, align 8
  %115 = load i64, i64* %11, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp ult i64 %113, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %109
  store i32 -1, i32* %4, align 4
  br label %121

120:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %119, %108, %97, %86, %75, %64, %53, %42
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
