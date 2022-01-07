; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_CompareMetaTriangles.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_CompareMetaTriangles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i64, i64, i64*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@metaVerts = common dso_local global %struct.TYPE_6__* null, align 8
@npDegrees = common dso_local global float 0.000000e+00, align 4
@qfalse = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @CompareMetaTriangles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CompareMetaTriangles(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_5__*
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_5__*
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ult %struct.TYPE_4__* %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %194

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_5__*
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_5__*
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ugt %struct.TYPE_4__* %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %194

33:                                               ; preds = %22
  %34 = load i8*, i8** %4, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_5__*
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_5__*
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %194

44:                                               ; preds = %33
  %45 = load i8*, i8** %4, align 8
  %46 = bitcast i8* %45 to %struct.TYPE_5__*
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = bitcast i8* %49 to %struct.TYPE_5__*
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %48, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %194

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  %59 = load i64*, i64** %10, align 8
  %60 = call i32 @VectorSet(i64* %59, i32 999999, i32 999999, i32 999999)
  %61 = load i64*, i64** %11, align 8
  %62 = call i32 @VectorSet(i64* %61, i32 999999, i32 999999, i32 999999)
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %155, %58
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %158

66:                                               ; preds = %63
  %67 = load i8*, i8** %4, align 8
  %68 = bitcast i8* %67 to %struct.TYPE_5__*
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = bitcast i8* %75 to %struct.TYPE_5__*
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %151, %66
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 3
  br i1 %85, label %86, label %154

86:                                               ; preds = %83
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @metaVerts, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %10, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %96, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %86
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @metaVerts, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %10, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  store i64 %113, i64* %117, align 8
  br label %118

118:                                              ; preds = %103, %86
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** @metaVerts, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i64*, i64** %11, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = icmp slt i64 %128, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %118
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** @metaVerts, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %11, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  store i64 %145, i64* %149, align 8
  br label %150

150:                                              ; preds = %135, %118
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %83

154:                                              ; preds = %83
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %63

158:                                              ; preds = %63
  store i32 0, i32* %6, align 4
  br label %159

159:                                              ; preds = %190, %158
  %160 = load i32, i32* %6, align 4
  %161 = icmp slt i32 %160, 3
  br i1 %161, label %162, label %193

162:                                              ; preds = %159
  %163 = load i64*, i64** %10, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i64*, i64** %11, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = icmp slt i64 %167, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %162
  store i32 1, i32* %3, align 4
  br label %194

175:                                              ; preds = %162
  %176 = load i64*, i64** %10, align 8
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = load i64*, i64** %11, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = icmp sgt i64 %180, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %175
  store i32 -1, i32* %3, align 4
  br label %194

188:                                              ; preds = %175
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %6, align 4
  br label %159

193:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %193, %187, %174, %54, %43, %32, %21
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @VectorSet(i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
