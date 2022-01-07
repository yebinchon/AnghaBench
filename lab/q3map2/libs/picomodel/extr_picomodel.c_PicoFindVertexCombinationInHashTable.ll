; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoFindVertexCombinationInHashTable.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoFindVertexCombinationInHashTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64*, i64*, i64*, i64 }

@HASH_NORMAL_EPSILON = common dso_local global i64 0, align 8
@HASH_ST_EPSILON = common dso_local global i64 0, align 8
@HASH_XYZ_EPSILON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @PicoFindVertexCombinationInHashTable(%struct.TYPE_6__** %0, i64* %1, i64* %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %15 = icmp eq %struct.TYPE_6__** %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %5
  %17 = load i64*, i64** %8, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = load i64*, i64** %9, align 8
  %21 = icmp eq i64* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i64*, i64** %10, align 8
  %24 = icmp eq i64* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32*, i32** %11, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %19, %16, %5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %149

29:                                               ; preds = %25
  %30 = load i64*, i64** %8, align 8
  %31 = call i32 @PicoVertexCoordGenerateHash(i64* %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %33 = load i32, i32* %12, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %32, i64 %34
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %13, align 8
  br label %37

37:                                               ; preds = %144, %29
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %148

40:                                               ; preds = %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %73, label %51

51:                                               ; preds = %40
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %73, label %62

62:                                               ; preds = %51
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %8, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %62, %51, %40
  br label %144

74:                                               ; preds = %62
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %9, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %107, label %85

85:                                               ; preds = %74
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %9, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %91, %94
  br i1 %95, label %107, label %96

96:                                               ; preds = %85
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %9, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %96, %85, %74
  br label %144

108:                                              ; preds = %96
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %10, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %130, label %119

119:                                              ; preds = %108
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** %10, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %125, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %119, %108
  br label %144

131:                                              ; preds = %119
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %137, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  br label %144

142:                                              ; preds = %131
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %143, %struct.TYPE_6__** %6, align 8
  br label %149

144:                                              ; preds = %141, %130, %107, %73
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  store %struct.TYPE_6__* %147, %struct.TYPE_6__** %13, align 8
  br label %37

148:                                              ; preds = %37
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %149

149:                                              ; preds = %148, %142, %28
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %150
}

declare dso_local i32 @PicoVertexCoordGenerateHash(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
