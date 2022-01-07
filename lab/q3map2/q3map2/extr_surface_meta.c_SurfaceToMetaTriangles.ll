; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_SurfaceToMetaTriangles.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_SurfaceToMetaTriangles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i64*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@SURFACE_FACE = common dso_local global i64 0, align 8
@SURFACE_META = common dso_local global i64 0, align 8
@SURFACE_FORCED_META = common dso_local global i64 0, align 8
@SURFACE_DECAL = common dso_local global i64 0, align 8
@numMetaVerts = common dso_local global i32 0, align 4
@firstSearchMetaVert = common dso_local global i32 0, align 4
@SURFACE_BAD = common dso_local global i64 0, align 8
@numMetaSurfaces = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @SurfaceToMetaTriangles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SurfaceToMetaTriangles(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SURFACE_FACE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SURFACE_META, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SURFACE_FORCED_META, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SURFACE_DECAL, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %213

32:                                               ; preds = %25, %19, %13, %1
  %33 = load i32, i32* @numMetaVerts, align 4
  store i32 %33, i32* @firstSearchMetaVert, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SURFACE_BAD, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %210

39:                                               ; preds = %32
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %42, 3
  br i1 %43, label %44, label %210

44:                                               ; preds = %39
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 3
  br i1 %48, label %49, label %210

49:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %204, %49
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %207

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %63, %71
  br i1 %72, label %108, label %73

73:                                               ; preds = %56
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %80, %88
  br i1 %89, label %108, label %90

90:                                               ; preds = %73
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %98, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %90, %73, %56
  br label %204

109:                                              ; preds = %90
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 14
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 9
  store i32 %112, i32* %113, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 13
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = icmp ne %struct.TYPE_7__* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %109
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 13
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  br label %125

124:                                              ; preds = %109
  br label %125

125:                                              ; preds = %124, %118
  %126 = phi i32* [ %123, %118 ], [ null, %124 ]
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 8
  store i32* %126, i32** %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 12
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 7
  store i32 %130, i32* %131, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 11
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 6
  store i32 %134, i32* %135, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 5
  store i32 %138, i32* %139, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 4
  store i32 %142, i32* %143, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  store i32 %146, i32* %147, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 8
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  store i32 %150, i32* %151, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i32 %154, i32* %155, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @VectorCopy(i32 %158, i32 %160)
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 5
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 3
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i32, i32* %164, i64 %171
  %173 = call i32 @memcpy(i32* %5, i32* %172, i32 4)
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 5
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 3
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* %3, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %179, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i32, i32* %176, i64 %184
  %186 = call i32 @memcpy(i32* %6, i32* %185, i32 4)
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 5
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 3
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* %3, align 4
  %194 = add nsw i32 %193, 2
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %192, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i32, i32* %189, i64 %197
  %199 = call i32 @memcpy(i32* %7, i32* %198, i32 4)
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @FindMetaTriangle(%struct.TYPE_8__* %4, i32* %5, i32* %6, i32* %7, i32 %202)
  br label %204

204:                                              ; preds = %125, %108
  %205 = load i32, i32* %3, align 4
  %206 = add nsw i32 %205, 3
  store i32 %206, i32* %3, align 4
  br label %50

207:                                              ; preds = %50
  %208 = load i32, i32* @numMetaSurfaces, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* @numMetaSurfaces, align 4
  br label %210

210:                                              ; preds = %207, %44, %39, %32
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %212 = call i32 @ClearSurface(%struct.TYPE_9__* %211)
  br label %213

213:                                              ; preds = %210, %31
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @FindMetaTriangle(%struct.TYPE_8__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ClearSurface(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
