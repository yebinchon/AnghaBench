; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_MakeDebugPortalSurfs_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_MakeDebugPortalSurfs_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_14__*, i64, %struct.TYPE_15__** }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i32, %struct.TYPE_15__**, %struct.TYPE_13__*, %struct.TYPE_14__** }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32**, i32, i32, %struct.TYPE_17__*, i32, i32, i32, i32* }
%struct.TYPE_17__ = type { i32*, i32*, i32**, i64* }

@PLANENUM_LEAF = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"MakePortalSurfs_r: w->numpoints = %d\00", align 1
@SURFACE_FACE = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@MAX_LIGHTMAPS = common dso_local global i32 0, align 4
@debugColors = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32*)* @MakeDebugPortalSurfs_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MakeDebugPortalSurfs_r(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PLANENUM_LEAF, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %21, i64 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = load i32*, i32** %4, align 8
  call void @MakeDebugPortalSurfs_r(%struct.TYPE_15__* %23, i32* %24)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %27, i64 1
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = load i32*, i32** %4, align 8
  call void @MakeDebugPortalSurfs_r(%struct.TYPE_15__* %29, i32* %30)
  br label %230

31:                                               ; preds = %2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %230

37:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %9, align 8
  br label %41

41:                                               ; preds = %220, %37
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %43 = icmp ne %struct.TYPE_14__* %42, null
  br i1 %43, label %44, label %230

44:                                               ; preds = %41
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %10, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %50, i64 1
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = icmp eq %struct.TYPE_15__* %52, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %57 = icmp ne %struct.TYPE_13__* %56, null
  br i1 %57, label %58, label %219

58:                                               ; preds = %44
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %61, i64 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %65 = icmp eq %struct.TYPE_15__* %63, %64
  br i1 %65, label %66, label %219

66:                                               ; preds = %58
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %68 = call i64 @PortalPassable(%struct.TYPE_14__* %67)
  %69 = load i64, i64* @qfalse, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %220

72:                                               ; preds = %66
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 64
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @Error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32, i32* @SURFACE_FACE, align 4
  %84 = call %struct.TYPE_16__* @AllocDrawSurface(i32 %83)
  store %struct.TYPE_16__* %84, %struct.TYPE_16__** %11, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 7
  store i32* %85, i32** %87, align 8
  %88 = load i32, i32* @qtrue, align 4
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @AllocSideRef(i32 %93, i32* null)
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @FindFloatPlane(i32 %100, i32 %104, i32 0, i32* null)
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32**, i32*** %113, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 2
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @VectorCopy(i32 %111, i32* %116)
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  store i32 -1, i32* %119, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 %128, 32
  %130 = trunc i64 %129 to i32
  %131 = call %struct.TYPE_17__* @safe_malloc(i32 %130)
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 3
  store %struct.TYPE_17__* %131, %struct.TYPE_17__** %133, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %135, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 32
  %142 = trunc i64 %141 to i32
  %143 = call i32 @memset(%struct.TYPE_17__* %136, i32 0, i32 %142)
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %215, %82
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %218

150:                                              ; preds = %144
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i64 %155
  store %struct.TYPE_17__* %156, %struct.TYPE_17__** %12, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @VectorCopy(i32 %163, i32* %166)
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @VectorCopy(i32 %171, i32* %174)
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 3
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 0
  store i64 0, i64* %179, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 3
  %182 = load i64*, i64** %181, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 1
  store i64 0, i64* %183, align 8
  store i32 0, i32* %6, align 4
  br label %184

184:                                              ; preds = %211, %150
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %214

188:                                              ; preds = %184
  %189 = load i32*, i32** @debugColors, align 8
  %190 = load i32, i32* %7, align 4
  %191 = srem i32 %190, 12
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 2
  %197 = load i32**, i32*** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32*, i32** %197, i64 %199
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @VectorCopy(i32 %194, i32* %201)
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 2
  %205 = load i32**, i32*** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %205, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 3
  store i32 32, i32* %210, align 4
  br label %211

211:                                              ; preds = %188
  %212 = load i32, i32* %6, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %6, align 4
  br label %184

214:                                              ; preds = %184
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %5, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %5, align 4
  br label %144

218:                                              ; preds = %144
  br label %219

219:                                              ; preds = %218, %58, %44
  br label %220

220:                                              ; preds = %219, %71
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %7, align 4
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 4
  %225 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %224, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %225, i64 %227
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %228, align 8
  store %struct.TYPE_14__* %229, %struct.TYPE_14__** %9, align 8
  br label %41

230:                                              ; preds = %18, %36, %41
  ret void
}

declare dso_local i64 @PortalPassable(%struct.TYPE_14__*) #1

declare dso_local i32 @Error(i8*, i32) #1

declare dso_local %struct.TYPE_16__* @AllocDrawSurface(i32) #1

declare dso_local i32 @AllocSideRef(i32, i32*) #1

declare dso_local i32 @FindFloatPlane(i32, i32, i32, i32*) #1

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local %struct.TYPE_17__* @safe_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
