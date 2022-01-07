; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_decals.c_MakeEntityDecals.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_decals.c_MakeEntityDecals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64*, i64*, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64*, i64 }
%struct.TYPE_17__ = type { i32, i32, i32 }

@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"--- MakeEntityDecals ---\0A\00", align 1
@entityOrigin = common dso_local global i32 0, align 4
@numProjectors = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%d...\00", align 1
@projectors = common dso_local global i32* null, align 8
@numMapDrawSurfs = common dso_local global i32 0, align 4
@mapDrawSurfs = common dso_local global %struct.TYPE_18__* null, align 8
@C_NOMARKS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c" (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%9d decal surfaces\0A\00", align 1
@numDecalSurfaces = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MakeEntityDecals(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca [3 x %struct.TYPE_17__], align 16
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %12 = bitcast [3 x %struct.TYPE_17__]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 36, i1 false)
  %13 = bitcast i8* %12 to [3 x %struct.TYPE_17__]*
  %14 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 16
  %16 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %13, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %13, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* @SYS_VRB, align 4
  %21 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @entityOrigin, align 4
  %26 = call i32 @VectorCopy(i32 %24, i32 %25)
  %27 = load i32, i32* @entityOrigin, align 4
  %28 = call i32 @VectorClear(i32 %27)
  store i32 -1, i32* %7, align 4
  %29 = call i32 (...) @I_FloatTime()
  store i32 %29, i32* %8, align 4
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %159, %1
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @numProjectors, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %162

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = mul nsw i32 10, %35
  %37 = load i32, i32* @numProjectors, align 4
  %38 = sdiv i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @SYS_VRB, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %42, %34
  %48 = load i32*, i32** @projectors, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = getelementptr inbounds [3 x %struct.TYPE_17__], [3 x %struct.TYPE_17__]* %11, i64 0, i64 0
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @TransformDecalProjector(i32* %51, %struct.TYPE_17__* %52, i32 %55, %struct.TYPE_20__* %9)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %155, %47
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @numMapDrawSurfs, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %158

64:                                               ; preds = %60
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** @mapDrawSurfs, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i64 %67
  store %struct.TYPE_18__* %68, %struct.TYPE_18__** %10, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sle i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %155

74:                                               ; preds = %64
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %74
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @C_NOMARKS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81, %74
  br label %155

91:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %133, %91
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 3
  br i1 %94, label %95, label %136

95:                                               ; preds = %92
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %108, %110
  %112 = icmp sge i64 %102, %111
  br i1 %112, label %131, label %113

113:                                              ; preds = %95
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %126, %128
  %130 = icmp sle i64 %120, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %113, %95
  br label %136

132:                                              ; preds = %113
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %92

136:                                              ; preds = %131, %92
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %137, 3
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %155

140:                                              ; preds = %136
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  switch i32 %143, label %153 [
    i32 132, label %144
    i32 129, label %147
    i32 128, label %150
    i32 131, label %150
    i32 130, label %150
  ]

144:                                              ; preds = %140
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %146 = call i32 @ProjectDecalOntoFace(%struct.TYPE_20__* %9, %struct.TYPE_18__* %145)
  br label %154

147:                                              ; preds = %140
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %149 = call i32 @ProjectDecalOntoPatch(%struct.TYPE_20__* %9, %struct.TYPE_18__* %148)
  br label %154

150:                                              ; preds = %140, %140, %140
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %152 = call i32 @ProjectDecalOntoTriangles(%struct.TYPE_20__* %9, %struct.TYPE_18__* %151)
  br label %154

153:                                              ; preds = %140
  br label %154

154:                                              ; preds = %153, %150, %147, %144
  br label %155

155:                                              ; preds = %154, %139, %90, %73
  %156 = load i32, i32* %4, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %4, align 4
  br label %60

158:                                              ; preds = %60
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %3, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %3, align 4
  br label %30

162:                                              ; preds = %30
  %163 = load i32, i32* @SYS_VRB, align 4
  %164 = call i32 (...) @I_FloatTime()
  %165 = load i32, i32* %8, align 4
  %166 = sub nsw i32 %164, %165
  %167 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %163, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @SYS_VRB, align 4
  %169 = load i32, i32* @numDecalSurfaces, align 4
  %170 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %168, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %169)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #2

declare dso_local i32 @VectorCopy(i32, i32) #2

declare dso_local i32 @VectorClear(i32) #2

declare dso_local i32 @I_FloatTime(...) #2

declare dso_local i32 @TransformDecalProjector(i32*, %struct.TYPE_17__*, i32, %struct.TYPE_20__*) #2

declare dso_local i32 @ProjectDecalOntoFace(%struct.TYPE_20__*, %struct.TYPE_18__*) #2

declare dso_local i32 @ProjectDecalOntoPatch(%struct.TYPE_20__*, %struct.TYPE_18__*) #2

declare dso_local i32 @ProjectDecalOntoTriangles(%struct.TYPE_20__*, %struct.TYPE_18__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
