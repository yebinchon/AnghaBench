; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_snapshot.c_SV_BuildClientSnapshot.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_snapshot.c_SV_BuildClientSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_23__ = type { i32, i64, i64, i32* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_16__, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_22__ = type { i64, i64, i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i64, i32 }
%struct.TYPE_18__ = type { i32, i32* }

@sv = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@PACKET_MASK = common dso_local global i64 0, align 8
@CS_ZOMBIE = common dso_local global i64 0, align 8
@svs = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@MAX_GENTITIES = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SV_SvEntityForGentity: bad gEnt\00", align 1
@qfalse = common dso_local global i32 0, align 4
@SV_QsortEntityNumbers = common dso_local global i32 0, align 4
@MAX_MAP_AREA_BYTES = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"svs.nextSnapshotEntities wrapped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @SV_BuildClientSnapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_BuildClientSnapshot(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_18__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @sv, i32 0, i32 0), align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @sv, i32 0, i32 0), align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PACKET_MASK, align 8
  %23 = and i64 %21, %22
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i64 %23
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @Com_Memset(i64 %28, i32 0, i32 8)
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %10, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %36 = icmp ne %struct.TYPE_19__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %1
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CS_ZOMBIE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %1
  br label %169

44:                                               ; preds = %37
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @svs, i32 0, i32 0), align 8
  %47 = sext i32 %46 to i64
  %48 = sub i64 0, %47
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i64 %48
  %50 = call %struct.TYPE_20__* @SV_GameClientNum(%struct.TYPE_21__* %49)
  store %struct.TYPE_20__* %50, %struct.TYPE_20__** %12, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %54 = bitcast %struct.TYPE_20__* %52 to i8*
  %55 = bitcast %struct.TYPE_20__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 24, i1 false)
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %44
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @MAX_GENTITIES, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62, %44
  %67 = load i32, i32* @ERR_DROP, align 4
  %68 = call i32 @Com_Error(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %62
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @sv, i32 0, i32 1), align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i64 %72
  store %struct.TYPE_17__* %73, %struct.TYPE_17__** %9, align 8
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @sv, i32 0, i32 0), align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @VectorCopy(i32 %79, i32* %80)
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i32*, i32** %3, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 4
  %91 = load i32*, i32** %3, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %93 = load i32, i32* @qfalse, align 4
  %94 = call i32 @SV_AddEntitiesVisibleFromPoint(i32* %91, %struct.TYPE_22__* %92, %struct.TYPE_18__* %5, i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SV_QsortEntityNumbers, align 4
  %100 = call i32 @qsort(i32* %96, i32 %98, i32 4, i32 %99)
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %123, %69
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @MAX_MAP_AREA_BYTES, align 4
  %104 = sdiv i32 %103, 4
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %126

106:                                              ; preds = %101
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i32*
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i32*
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %115, i32* %122, align 4
  br label %123

123:                                              ; preds = %106
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %101

126:                                              ; preds = %101
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 1
  store i64 0, i64* %128, align 8
  %129 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @svs, i32 0, i32 1), align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %166, %126
  %133 = load i32, i32* %6, align 4
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %169

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call %struct.TYPE_19__* @SV_GentityNum(i32 %143)
  store %struct.TYPE_19__* %144, %struct.TYPE_19__** %7, align 8
  %145 = load i32*, i32** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @svs, i32 0, i32 3), align 8
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @svs, i32 0, i32 1), align 8
  %147 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @svs, i32 0, i32 2), align 8
  %148 = urem i64 %146, %147
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  store i32* %149, i32** %8, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %8, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @svs, i32 0, i32 1), align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @svs, i32 0, i32 1), align 8
  %156 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @svs, i32 0, i32 1), align 8
  %157 = icmp uge i64 %156, 2147483646
  br i1 %157, label %158, label %161

158:                                              ; preds = %137
  %159 = load i32, i32* @ERR_FATAL, align 4
  %160 = call i32 @Com_Error(i32 %159, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %137
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %163, align 8
  br label %166

166:                                              ; preds = %161
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %132

169:                                              ; preds = %43, %132
  ret void
}

declare dso_local i32 @Com_Memset(i64, i32, i32) #1

declare dso_local %struct.TYPE_20__* @SV_GameClientNum(%struct.TYPE_21__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @SV_AddEntitiesVisibleFromPoint(i32*, %struct.TYPE_22__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_19__* @SV_GentityNum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
