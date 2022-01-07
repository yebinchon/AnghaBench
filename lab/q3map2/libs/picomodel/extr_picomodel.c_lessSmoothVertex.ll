; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_lessSmoothVertex.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_lessSmoothVertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64**, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lessSmoothVertex(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %8, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64**, i64*** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i64*, i64** %13, i64 %14
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64**, i64*** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i64*, i64** %21, i64 %22
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %18, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64**, i64*** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i64*, i64** %31, i64 %32
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64**, i64*** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i64*, i64** %39, i64 %40
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %36, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %151

47:                                               ; preds = %3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64**, i64*** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i64*, i64** %50, i64 %51
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64**, i64*** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds i64*, i64** %58, i64 %59
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %55, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %47
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64**, i64*** %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds i64*, i64** %68, i64 %69
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64**, i64*** %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds i64*, i64** %76, i64 %77
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %73, %81
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %4, align 4
  br label %151

84:                                               ; preds = %47
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64**, i64*** %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds i64*, i64** %87, i64 %88
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64**, i64*** %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds i64*, i64** %95, i64 %96
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %92, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %84
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64**, i64*** %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds i64*, i64** %105, i64 %106
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64**, i64*** %112, align 8
  %114 = load i64, i64* %7, align 8
  %115 = getelementptr inbounds i64*, i64** %113, i64 %114
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp slt i64 %110, %118
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %4, align 4
  br label %151

121:                                              ; preds = %84
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* %6, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i64*, i64** %129, align 8
  %131 = load i64, i64* %7, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %127, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %121
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* %6, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* %7, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp slt i64 %141, %147
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %4, align 4
  br label %151

150:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %150, %135, %102, %65, %28
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
