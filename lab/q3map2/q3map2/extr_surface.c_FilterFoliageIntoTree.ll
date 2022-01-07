; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_FilterFoliageIntoTree.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_FilterFoliageIntoTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i64*, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32* }

@.str = private unnamed_addr constant [38 x i8] c"Index %d greater than vertex count %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @FilterFoliageIntoTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FilterFoliageIntoTree(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %211, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %214

17:                                               ; preds = %11
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i64 %24
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i64 %27
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %8, align 8
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %167, %17
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %170

35:                                               ; preds = %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 3
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp uge i64 %42, %45
  br i1 %46, label %73, label %47

47:                                               ; preds = %35
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp uge i64 %55, %58
  br i1 %59, label %73, label %60

60:                                               ; preds = %47
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %63, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp uge i64 %68, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %60, %47, %35
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @Error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %80, i64 %83)
  br label %85

85:                                               ; preds = %73, %60
  %86 = call %struct.TYPE_11__* @AllocWinding(i32 3)
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %10, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i32 3, i32* %88, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 5
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 3
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @VectorAdd(i32 %91, i32 %104, i32 %109)
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 3
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %119, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @VectorAdd(i32 %113, i32 %127, i32 %132)
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 3
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %142, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @VectorAdd(i32 %136, i32 %150, i32 %155)
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @FilterWindingIntoTree_r(%struct.TYPE_11__* %157, %struct.TYPE_13__* %158, i32 %161)
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %85
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 3
  store i32 %169, i32* %6, align 4
  br label %29

170:                                              ; preds = %29
  store i32 0, i32* %6, align 4
  br label %171

171:                                              ; preds = %207, %170
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = sub i64 %176, %180
  %182 = icmp ult i64 %173, %181
  br i1 %182, label %183, label %210

183:                                              ; preds = %171
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 5
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @VectorAdd(i32 %186, i32 %194, i32 %195)
  %197 = load i32, i32* %9, align 4
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @FilterPointIntoTree_r(i32 %197, %struct.TYPE_13__* %198, i32 %201)
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %204, %202
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %7, align 4
  br label %207

207:                                              ; preds = %183
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %6, align 4
  br label %171

210:                                              ; preds = %171
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %5, align 4
  br label %11

214:                                              ; preds = %11
  %215 = load i32, i32* %7, align 4
  ret i32 %215
}

declare dso_local i32 @Error(i8*, i64, i64) #1

declare dso_local %struct.TYPE_11__* @AllocWinding(i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

declare dso_local i64 @FilterWindingIntoTree_r(%struct.TYPE_11__*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @FilterPointIntoTree_r(i32, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
