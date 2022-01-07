; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_parse.c_CL_ParseSnapshot.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_parse.c_CL_ParseSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_14__, i8*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i64, i8*, %struct.TYPE_16__, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32, i32, i64, i32, %struct.TYPE_22__, i8*, i32, i8*, i32, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@clc = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@cl_paused = common dso_local global %struct.TYPE_20__* null, align 8
@qtrue = common dso_local global i8* null, align 8
@qfalse = common dso_local global i8* null, align 8
@cl = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@PACKET_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Delta from invalid frame (not supposed to happen!).\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Delta frame too old.\0A\00", align 1
@MAX_PARSE_ENTITIES = common dso_local global i64 0, align 8
@MAX_SNAPSHOT_ENTITIES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Delta parseEntitiesNum too old.\0A\00", align 1
@ERR_DROP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"CL_ParseSnapshot: Invalid size %d for areamask\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"playerstate\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"packet entities\00", align 1
@PACKET_BACKUP = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@cl_shownet = common dso_local global %struct.TYPE_19__* null, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"   snapshot:%i  delta:%i  ping:%i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ParseSnapshot(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = call i32 @Com_Memset(%struct.TYPE_16__* %5, i32 0, i32 64)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @clc, i32 0, i32 3), align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 9
  store i32 %11, i32* %12, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @MSG_ReadLong(i32* %13)
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 8
  store i32 %14, i32* %15, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cl_paused, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @clc, i32 0, i32 0), align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call i8* @MSG_ReadByte(i32* %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  store i32 -1, i32* %26, align 4
  br label %33

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %29, %30
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %25
  %34 = load i32*, i32** %2, align 8
  %35 = call i8* @MSG_ReadByte(i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 7
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i8*, i8** @qtrue, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 5
  store i8* %41, i8** %42, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  %43 = load i8*, i8** @qfalse, align 8
  store i8* %43, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @clc, i32 0, i32 2), align 8
  br label %85

44:                                               ; preds = %33
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cl, i32 0, i32 3), align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @PACKET_MASK, align 8
  %50 = and i64 %48, %49
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i64 %50
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %4, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 5
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %44
  %57 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %84

58:                                               ; preds = %44
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %83

67:                                               ; preds = %58
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cl, i32 0, i32 0), align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = load i64, i64* @MAX_PARSE_ENTITIES, align 8
  %74 = load i64, i64* @MAX_SNAPSHOT_ENTITIES, align 8
  %75 = sub nsw i64 %73, %74
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %82

79:                                               ; preds = %67
  %80 = load i8*, i8** @qtrue, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 5
  store i8* %80, i8** %81, align 8
  br label %82

82:                                               ; preds = %79, %77
  br label %83

83:                                               ; preds = %82, %65
  br label %84

84:                                               ; preds = %83, %56
  br label %85

85:                                               ; preds = %84, %40
  %86 = load i32*, i32** %2, align 8
  %87 = call i8* @MSG_ReadByte(i32* %86)
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ugt i64 %90, 4
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* @ERR_DROP, align 4
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @Com_Error(i32 %93, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %213

96:                                               ; preds = %85
  %97 = load i32*, i32** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 6
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @MSG_ReadData(i32* %97, i32* %98, i32 %99)
  %101 = load i32*, i32** %2, align 8
  %102 = call i32 @SHOWNET(i32* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = icmp ne %struct.TYPE_16__* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load i32*, i32** %2, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 4
  %110 = call i32 @MSG_ReadDeltaPlayerstate(i32* %106, %struct.TYPE_22__* %108, %struct.TYPE_22__* %109)
  br label %115

111:                                              ; preds = %96
  %112 = load i32*, i32** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 4
  %114 = call i32 @MSG_ReadDeltaPlayerstate(i32* %112, %struct.TYPE_22__* null, %struct.TYPE_22__* %113)
  br label %115

115:                                              ; preds = %111, %105
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @SHOWNET(i32* %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i32*, i32** %2, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %120 = call i32 @CL_ParsePacketEntities(i32* %118, %struct.TYPE_16__* %119, %struct.TYPE_16__* %5)
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 5
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %115
  br label %213

125:                                              ; preds = %115
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cl, i32 0, i32 2, i32 0), align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sub nsw i32 %129, %130
  %132 = load i32, i32* @PACKET_BACKUP, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @PACKET_BACKUP, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sub nsw i32 %136, %138
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %134, %125
  br label %141

141:                                              ; preds = %155, %140
  %142 = load i32, i32* %7, align 4
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %141
  %147 = load i8*, i8** @qfalse, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cl, i32 0, i32 3), align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* @PACKET_MASK, align 8
  %152 = and i64 %150, %151
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 5
  store i8* %147, i8** %154, align 8
  br label %155

155:                                              ; preds = %146
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %141

158:                                              ; preds = %141
  %159 = bitcast %struct.TYPE_16__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cl, i32 0, i32 2) to i8*), i8* align 8 %159, i64 64, i1 false)
  store i32 999, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cl, i32 0, i32 2, i32 3), align 8
  store i32 0, i32* %8, align 4
  br label %160

160:                                              ; preds = %191, %158
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @PACKET_BACKUP, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %194

164:                                              ; preds = %160
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @clc, i32 0, i32 1, i32 0), align 4
  %166 = sub nsw i32 %165, 1
  %167 = load i32, i32* %8, align 4
  %168 = sub nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* @PACKET_MASK, align 8
  %171 = and i64 %169, %170
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %9, align 4
  %173 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cl, i32 0, i32 2, i32 4, i32 0), align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cl, i32 0, i32 4), align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp sge i64 %173, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %164
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cls, i32 0, i32 0), align 4
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cl, i32 0, i32 4), align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %182, %188
  store i32 %189, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cl, i32 0, i32 2, i32 3), align 8
  br label %194

190:                                              ; preds = %164
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %8, align 4
  br label %160

194:                                              ; preds = %181, %160
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cl, i32 0, i32 3), align 8
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cl, i32 0, i32 2, i32 0), align 8
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* @PACKET_MASK, align 8
  %199 = and i64 %197, %198
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i64 %199
  %201 = bitcast %struct.TYPE_16__* %200 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %201, i8* align 8 bitcast (%struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cl, i32 0, i32 2) to i8*), i64 64, i1 false)
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** @cl_shownet, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 3
  br i1 %205, label %206, label %211

206:                                              ; preds = %194
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cl, i32 0, i32 2, i32 0), align 8
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cl, i32 0, i32 2, i32 1), align 4
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cl, i32 0, i32 2, i32 3), align 8
  %210 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %207, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %206, %194
  %212 = load i8*, i8** @qtrue, align 8
  store i8* %212, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cl, i32 0, i32 1), align 8
  br label %213

213:                                              ; preds = %211, %124, %92
  ret void
}

declare dso_local i32 @Com_Memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @MSG_ReadLong(i32*) #1

declare dso_local i8* @MSG_ReadByte(i32*) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

declare dso_local i32 @MSG_ReadData(i32*, i32*, i32) #1

declare dso_local i32 @SHOWNET(i32*, i8*) #1

declare dso_local i32 @MSG_ReadDeltaPlayerstate(i32*, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @CL_ParsePacketEntities(i32*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
