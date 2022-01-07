; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_file.c_AAS_LoadAASFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_file.c_AAS_LoadAASFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32)*, i32 (%struct.TYPE_7__*, i32, i32)*, i32 (i8*, i32*, i32)*, i32 (i32, i8*, i8*)* }
%struct.TYPE_7__ = type { i64, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@botimport = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"trying to load %s\0A\00", align 1
@FS_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@BLERR_CANNOTOPENAASFILE = common dso_local global i32 0, align 4
@AASID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"%s is not an AAS file\0A\00", align 1
@BLERR_WRONGAASFILEID = common dso_local global i32 0, align 4
@AASVERSION_OLD = common dso_local global i64 0, align 8
@AASVERSION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"aas file %s is version %i, not %i\0A\00", align 1
@BLERR_WRONGAASFILEVERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"sv_mapChecksum\00", align 1
@aasworld = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"aas file %s is out of date\0A\00", align 1
@AASLUMP_BBOXES = common dso_local global i64 0, align 8
@BLERR_CANNOTREADAASLUMP = common dso_local global i32 0, align 4
@AASLUMP_VERTEXES = common dso_local global i64 0, align 8
@AASLUMP_PLANES = common dso_local global i64 0, align 8
@AASLUMP_EDGES = common dso_local global i64 0, align 8
@AASLUMP_EDGEINDEX = common dso_local global i64 0, align 8
@AASLUMP_FACES = common dso_local global i64 0, align 8
@AASLUMP_FACEINDEX = common dso_local global i64 0, align 8
@AASLUMP_AREAS = common dso_local global i64 0, align 8
@AASLUMP_AREASETTINGS = common dso_local global i64 0, align 8
@AASLUMP_REACHABILITY = common dso_local global i64 0, align 8
@AASLUMP_NODES = common dso_local global i64 0, align 8
@AASLUMP_PORTALS = common dso_local global i64 0, align 8
@AASLUMP_PORTALINDEX = common dso_local global i64 0, align 8
@AASLUMP_CLUSTERS = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@BLERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_LoadAASFile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @botimport, i32 0, i32 3), align 8
  %10 = load i32, i32* @PRT_MESSAGE, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 %9(i32 %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = call i32 (...) @AAS_DumpAASData()
  %14 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @botimport, i32 0, i32 2), align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @FS_READ, align 4
  %17 = call i32 %14(i8* %15, i32* %4, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 (i8*, i8*, ...) @AAS_Error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @BLERR_CANNOTOPENAASFILE, align 4
  store i32 %23, i32* %2, align 4
  br label %560

24:                                               ; preds = %1
  %25 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @botimport, i32 0, i32 1), align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 %25(%struct.TYPE_7__* %5, i32 32, i32 %26)
  store i32 32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @LittleLong(i64 %29)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AASID, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 (i8*, i8*, ...) @AAS_Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @botimport, i32 0, i32 0), align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 %39(i32 %40)
  %42 = load i32, i32* @BLERR_WRONGAASFILEID, align 4
  store i32 %42, i32* %2, align 4
  br label %560

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @LittleLong(i64 %45)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AASVERSION_OLD, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AASVERSION, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AASVERSION, align 8
  %62 = call i32 (i8*, i8*, ...) @AAS_Error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %58, i64 %60, i64 %61)
  %63 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @botimport, i32 0, i32 0), align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 %63(i32 %64)
  %66 = load i32, i32* @BLERR_WRONGAASFILEVERSION, align 4
  store i32 %66, i32* %2, align 4
  br label %560

67:                                               ; preds = %52, %43
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AASVERSION, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = bitcast %struct.TYPE_7__* %5 to i8*
  %74 = getelementptr inbounds i8, i8* %73, i64 8
  %75 = call i32 @AAS_DData(i8* %74, i32 24)
  br label %76

76:                                               ; preds = %72, %67
  %77 = call i32 @LibVarGetString(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %78 = call i64 @atoi(i32 %77)
  store i64 %78, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 0), align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @LittleLong(i64 %80)
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 0), align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %76
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 (i8*, i8*, ...) @AAS_Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %85)
  %87 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @botimport, i32 0, i32 0), align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 %87(i32 %88)
  %90 = load i32, i32* @BLERR_WRONGAASFILEVERSION, align 4
  store i32 %90, i32* %2, align 4
  br label %560

91:                                               ; preds = %76
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i64, i64* @AASLUMP_BBOXES, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @LittleLong(i64 %97)
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %6, align 4
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i64, i64* @AASLUMP_BBOXES, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @LittleLong(i64 %105)
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i64 @AAS_LoadAASLump(i32 %108, i32 %109, i32 %110, i32* %8, i32 4)
  %112 = inttoptr i64 %111 to i32*
  store i32* %112, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 29), align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = udiv i64 %114, 4
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 1), align 8
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 1), align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %91
  %120 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 29), align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* @BLERR_CANNOTREADAASLUMP, align 4
  store i32 %123, i32* %2, align 4
  br label %560

124:                                              ; preds = %119, %91
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i64, i64* @AASLUMP_VERTEXES, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @LittleLong(i64 %130)
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %6, align 4
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i64, i64* @AASLUMP_VERTEXES, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @LittleLong(i64 %138)
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i64 @AAS_LoadAASLump(i32 %141, i32 %142, i32 %143, i32* %8, i32 4)
  %145 = inttoptr i64 %144 to i32*
  store i32* %145, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 28), align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = udiv i64 %147, 4
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 2), align 4
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 2), align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %124
  %153 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 28), align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* @BLERR_CANNOTREADAASLUMP, align 4
  store i32 %156, i32* %2, align 4
  br label %560

157:                                              ; preds = %152, %124
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = load i64, i64* @AASLUMP_PLANES, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @LittleLong(i64 %163)
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %6, align 4
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = load i64, i64* @AASLUMP_PLANES, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @LittleLong(i64 %171)
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* %7, align 4
  %177 = call i64 @AAS_LoadAASLump(i32 %174, i32 %175, i32 %176, i32* %8, i32 4)
  %178 = inttoptr i64 %177 to i32*
  store i32* %178, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 27), align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = udiv i64 %180, 4
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 3), align 8
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 3), align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %157
  %186 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 27), align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* @BLERR_CANNOTREADAASLUMP, align 4
  store i32 %189, i32* %2, align 4
  br label %560

190:                                              ; preds = %185, %157
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = load i64, i64* @AASLUMP_EDGES, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = call i64 @LittleLong(i64 %196)
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %6, align 4
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = load i64, i64* @AASLUMP_EDGES, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = call i64 @LittleLong(i64 %204)
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %4, align 4
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* %7, align 4
  %210 = call i64 @AAS_LoadAASLump(i32 %207, i32 %208, i32 %209, i32* %8, i32 4)
  %211 = inttoptr i64 %210 to i32*
  store i32* %211, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 26), align 8
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = udiv i64 %213, 4
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 4), align 4
  %216 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 4), align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %190
  %219 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 26), align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %223, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* @BLERR_CANNOTREADAASLUMP, align 4
  store i32 %222, i32* %2, align 4
  br label %560

223:                                              ; preds = %218, %190
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %224, align 8
  %226 = load i64, i64* @AASLUMP_EDGEINDEX, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = call i64 @LittleLong(i64 %229)
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %6, align 4
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = load i64, i64* @AASLUMP_EDGEINDEX, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = call i64 @LittleLong(i64 %237)
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %7, align 4
  %240 = load i32, i32* %4, align 4
  %241 = load i32, i32* %6, align 4
  %242 = load i32, i32* %7, align 4
  %243 = call i64 @AAS_LoadAASLump(i32 %240, i32 %241, i32 %242, i32* %8, i32 4)
  %244 = inttoptr i64 %243 to i32*
  store i32* %244, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 25), align 8
  %245 = load i32, i32* %7, align 4
  %246 = sext i32 %245 to i64
  %247 = udiv i64 %246, 4
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 5), align 8
  %249 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 5), align 8
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %223
  %252 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 25), align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %256, label %254

254:                                              ; preds = %251
  %255 = load i32, i32* @BLERR_CANNOTREADAASLUMP, align 4
  store i32 %255, i32* %2, align 4
  br label %560

256:                                              ; preds = %251, %223
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = load i64, i64* @AASLUMP_FACES, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = call i64 @LittleLong(i64 %262)
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %6, align 4
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = load i64, i64* @AASLUMP_FACES, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = call i64 @LittleLong(i64 %270)
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %7, align 4
  %273 = load i32, i32* %4, align 4
  %274 = load i32, i32* %6, align 4
  %275 = load i32, i32* %7, align 4
  %276 = call i64 @AAS_LoadAASLump(i32 %273, i32 %274, i32 %275, i32* %8, i32 4)
  %277 = inttoptr i64 %276 to i32*
  store i32* %277, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 24), align 8
  %278 = load i32, i32* %7, align 4
  %279 = sext i32 %278 to i64
  %280 = udiv i64 %279, 4
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 6), align 4
  %282 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 6), align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %256
  %285 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 24), align 8
  %286 = icmp ne i32* %285, null
  br i1 %286, label %289, label %287

287:                                              ; preds = %284
  %288 = load i32, i32* @BLERR_CANNOTREADAASLUMP, align 4
  store i32 %288, i32* %2, align 4
  br label %560

289:                                              ; preds = %284, %256
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %290, align 8
  %292 = load i64, i64* @AASLUMP_FACEINDEX, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = call i64 @LittleLong(i64 %295)
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %6, align 4
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %298, align 8
  %300 = load i64, i64* @AASLUMP_FACEINDEX, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = call i64 @LittleLong(i64 %303)
  %305 = trunc i64 %304 to i32
  store i32 %305, i32* %7, align 4
  %306 = load i32, i32* %4, align 4
  %307 = load i32, i32* %6, align 4
  %308 = load i32, i32* %7, align 4
  %309 = call i64 @AAS_LoadAASLump(i32 %306, i32 %307, i32 %308, i32* %8, i32 4)
  %310 = inttoptr i64 %309 to i32*
  store i32* %310, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 23), align 8
  %311 = load i32, i32* %7, align 4
  %312 = sext i32 %311 to i64
  %313 = udiv i64 %312, 4
  %314 = trunc i64 %313 to i32
  store i32 %314, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 7), align 8
  %315 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 7), align 8
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %289
  %318 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 23), align 8
  %319 = icmp ne i32* %318, null
  br i1 %319, label %322, label %320

320:                                              ; preds = %317
  %321 = load i32, i32* @BLERR_CANNOTREADAASLUMP, align 4
  store i32 %321, i32* %2, align 4
  br label %560

322:                                              ; preds = %317, %289
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %323, align 8
  %325 = load i64, i64* @AASLUMP_AREAS, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = call i64 @LittleLong(i64 %328)
  %330 = trunc i64 %329 to i32
  store i32 %330, i32* %6, align 4
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %331, align 8
  %333 = load i64, i64* @AASLUMP_AREAS, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = call i64 @LittleLong(i64 %336)
  %338 = trunc i64 %337 to i32
  store i32 %338, i32* %7, align 4
  %339 = load i32, i32* %4, align 4
  %340 = load i32, i32* %6, align 4
  %341 = load i32, i32* %7, align 4
  %342 = call i64 @AAS_LoadAASLump(i32 %339, i32 %340, i32 %341, i32* %8, i32 4)
  %343 = inttoptr i64 %342 to i32*
  store i32* %343, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 22), align 8
  %344 = load i32, i32* %7, align 4
  %345 = sext i32 %344 to i64
  %346 = udiv i64 %345, 4
  %347 = trunc i64 %346 to i32
  store i32 %347, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 8), align 4
  %348 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 8), align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %355

350:                                              ; preds = %322
  %351 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 22), align 8
  %352 = icmp ne i32* %351, null
  br i1 %352, label %355, label %353

353:                                              ; preds = %350
  %354 = load i32, i32* @BLERR_CANNOTREADAASLUMP, align 4
  store i32 %354, i32* %2, align 4
  br label %560

355:                                              ; preds = %350, %322
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %357 = load %struct.TYPE_6__*, %struct.TYPE_6__** %356, align 8
  %358 = load i64, i64* @AASLUMP_AREASETTINGS, align 8
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = call i64 @LittleLong(i64 %361)
  %363 = trunc i64 %362 to i32
  store i32 %363, i32* %6, align 4
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %364, align 8
  %366 = load i64, i64* @AASLUMP_AREASETTINGS, align 8
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = call i64 @LittleLong(i64 %369)
  %371 = trunc i64 %370 to i32
  store i32 %371, i32* %7, align 4
  %372 = load i32, i32* %4, align 4
  %373 = load i32, i32* %6, align 4
  %374 = load i32, i32* %7, align 4
  %375 = call i64 @AAS_LoadAASLump(i32 %372, i32 %373, i32 %374, i32* %8, i32 4)
  %376 = inttoptr i64 %375 to i32*
  store i32* %376, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 21), align 8
  %377 = load i32, i32* %7, align 4
  %378 = sext i32 %377 to i64
  %379 = udiv i64 %378, 4
  %380 = trunc i64 %379 to i32
  store i32 %380, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 9), align 8
  %381 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 9), align 8
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %388

383:                                              ; preds = %355
  %384 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 21), align 8
  %385 = icmp ne i32* %384, null
  br i1 %385, label %388, label %386

386:                                              ; preds = %383
  %387 = load i32, i32* @BLERR_CANNOTREADAASLUMP, align 4
  store i32 %387, i32* %2, align 4
  br label %560

388:                                              ; preds = %383, %355
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %390 = load %struct.TYPE_6__*, %struct.TYPE_6__** %389, align 8
  %391 = load i64, i64* @AASLUMP_REACHABILITY, align 8
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = call i64 @LittleLong(i64 %394)
  %396 = trunc i64 %395 to i32
  store i32 %396, i32* %6, align 4
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %398 = load %struct.TYPE_6__*, %struct.TYPE_6__** %397, align 8
  %399 = load i64, i64* @AASLUMP_REACHABILITY, align 8
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = call i64 @LittleLong(i64 %402)
  %404 = trunc i64 %403 to i32
  store i32 %404, i32* %7, align 4
  %405 = load i32, i32* %4, align 4
  %406 = load i32, i32* %6, align 4
  %407 = load i32, i32* %7, align 4
  %408 = call i64 @AAS_LoadAASLump(i32 %405, i32 %406, i32 %407, i32* %8, i32 4)
  %409 = inttoptr i64 %408 to i32*
  store i32* %409, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 20), align 8
  %410 = load i32, i32* %7, align 4
  %411 = sext i32 %410 to i64
  %412 = udiv i64 %411, 4
  %413 = trunc i64 %412 to i32
  store i32 %413, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 10), align 4
  %414 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 10), align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %421

416:                                              ; preds = %388
  %417 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 20), align 8
  %418 = icmp ne i32* %417, null
  br i1 %418, label %421, label %419

419:                                              ; preds = %416
  %420 = load i32, i32* @BLERR_CANNOTREADAASLUMP, align 4
  store i32 %420, i32* %2, align 4
  br label %560

421:                                              ; preds = %416, %388
  %422 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %423 = load %struct.TYPE_6__*, %struct.TYPE_6__** %422, align 8
  %424 = load i64, i64* @AASLUMP_NODES, align 8
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = call i64 @LittleLong(i64 %427)
  %429 = trunc i64 %428 to i32
  store i32 %429, i32* %6, align 4
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %431 = load %struct.TYPE_6__*, %struct.TYPE_6__** %430, align 8
  %432 = load i64, i64* @AASLUMP_NODES, align 8
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %431, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i32 0, i32 1
  %435 = load i64, i64* %434, align 8
  %436 = call i64 @LittleLong(i64 %435)
  %437 = trunc i64 %436 to i32
  store i32 %437, i32* %7, align 4
  %438 = load i32, i32* %4, align 4
  %439 = load i32, i32* %6, align 4
  %440 = load i32, i32* %7, align 4
  %441 = call i64 @AAS_LoadAASLump(i32 %438, i32 %439, i32 %440, i32* %8, i32 4)
  %442 = inttoptr i64 %441 to i32*
  store i32* %442, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 19), align 8
  %443 = load i32, i32* %7, align 4
  %444 = sext i32 %443 to i64
  %445 = udiv i64 %444, 4
  %446 = trunc i64 %445 to i32
  store i32 %446, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 11), align 8
  %447 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 11), align 8
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %454

449:                                              ; preds = %421
  %450 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 19), align 8
  %451 = icmp ne i32* %450, null
  br i1 %451, label %454, label %452

452:                                              ; preds = %449
  %453 = load i32, i32* @BLERR_CANNOTREADAASLUMP, align 4
  store i32 %453, i32* %2, align 4
  br label %560

454:                                              ; preds = %449, %421
  %455 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %456 = load %struct.TYPE_6__*, %struct.TYPE_6__** %455, align 8
  %457 = load i64, i64* @AASLUMP_PORTALS, align 8
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %456, i64 %457
  %459 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %458, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = call i64 @LittleLong(i64 %460)
  %462 = trunc i64 %461 to i32
  store i32 %462, i32* %6, align 4
  %463 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %464 = load %struct.TYPE_6__*, %struct.TYPE_6__** %463, align 8
  %465 = load i64, i64* @AASLUMP_PORTALS, align 8
  %466 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i64 %465
  %467 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %466, i32 0, i32 1
  %468 = load i64, i64* %467, align 8
  %469 = call i64 @LittleLong(i64 %468)
  %470 = trunc i64 %469 to i32
  store i32 %470, i32* %7, align 4
  %471 = load i32, i32* %4, align 4
  %472 = load i32, i32* %6, align 4
  %473 = load i32, i32* %7, align 4
  %474 = call i64 @AAS_LoadAASLump(i32 %471, i32 %472, i32 %473, i32* %8, i32 4)
  %475 = inttoptr i64 %474 to i32*
  store i32* %475, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 18), align 8
  %476 = load i32, i32* %7, align 4
  %477 = sext i32 %476 to i64
  %478 = udiv i64 %477, 4
  %479 = trunc i64 %478 to i32
  store i32 %479, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 12), align 4
  %480 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 12), align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %487

482:                                              ; preds = %454
  %483 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 18), align 8
  %484 = icmp ne i32* %483, null
  br i1 %484, label %487, label %485

485:                                              ; preds = %482
  %486 = load i32, i32* @BLERR_CANNOTREADAASLUMP, align 4
  store i32 %486, i32* %2, align 4
  br label %560

487:                                              ; preds = %482, %454
  %488 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %489 = load %struct.TYPE_6__*, %struct.TYPE_6__** %488, align 8
  %490 = load i64, i64* @AASLUMP_PORTALINDEX, align 8
  %491 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %489, i64 %490
  %492 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = call i64 @LittleLong(i64 %493)
  %495 = trunc i64 %494 to i32
  store i32 %495, i32* %6, align 4
  %496 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %497 = load %struct.TYPE_6__*, %struct.TYPE_6__** %496, align 8
  %498 = load i64, i64* @AASLUMP_PORTALINDEX, align 8
  %499 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %497, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %499, i32 0, i32 1
  %501 = load i64, i64* %500, align 8
  %502 = call i64 @LittleLong(i64 %501)
  %503 = trunc i64 %502 to i32
  store i32 %503, i32* %7, align 4
  %504 = load i32, i32* %4, align 4
  %505 = load i32, i32* %6, align 4
  %506 = load i32, i32* %7, align 4
  %507 = call i64 @AAS_LoadAASLump(i32 %504, i32 %505, i32 %506, i32* %8, i32 4)
  %508 = inttoptr i64 %507 to i32*
  store i32* %508, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 17), align 8
  %509 = load i32, i32* %7, align 4
  %510 = sext i32 %509 to i64
  %511 = udiv i64 %510, 4
  %512 = trunc i64 %511 to i32
  store i32 %512, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 13), align 8
  %513 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 13), align 8
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %520

515:                                              ; preds = %487
  %516 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 17), align 8
  %517 = icmp ne i32* %516, null
  br i1 %517, label %520, label %518

518:                                              ; preds = %515
  %519 = load i32, i32* @BLERR_CANNOTREADAASLUMP, align 4
  store i32 %519, i32* %2, align 4
  br label %560

520:                                              ; preds = %515, %487
  %521 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %522 = load %struct.TYPE_6__*, %struct.TYPE_6__** %521, align 8
  %523 = load i64, i64* @AASLUMP_CLUSTERS, align 8
  %524 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %522, i64 %523
  %525 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %524, i32 0, i32 0
  %526 = load i64, i64* %525, align 8
  %527 = call i64 @LittleLong(i64 %526)
  %528 = trunc i64 %527 to i32
  store i32 %528, i32* %6, align 4
  %529 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %530 = load %struct.TYPE_6__*, %struct.TYPE_6__** %529, align 8
  %531 = load i64, i64* @AASLUMP_CLUSTERS, align 8
  %532 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %530, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %532, i32 0, i32 1
  %534 = load i64, i64* %533, align 8
  %535 = call i64 @LittleLong(i64 %534)
  %536 = trunc i64 %535 to i32
  store i32 %536, i32* %7, align 4
  %537 = load i32, i32* %4, align 4
  %538 = load i32, i32* %6, align 4
  %539 = load i32, i32* %7, align 4
  %540 = call i64 @AAS_LoadAASLump(i32 %537, i32 %538, i32 %539, i32* %8, i32 4)
  %541 = inttoptr i64 %540 to i32*
  store i32* %541, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 16), align 8
  %542 = load i32, i32* %7, align 4
  %543 = sext i32 %542 to i64
  %544 = udiv i64 %543, 4
  %545 = trunc i64 %544 to i32
  store i32 %545, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 14), align 4
  %546 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 14), align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %553

548:                                              ; preds = %520
  %549 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 16), align 8
  %550 = icmp ne i32* %549, null
  br i1 %550, label %553, label %551

551:                                              ; preds = %548
  %552 = load i32, i32* @BLERR_CANNOTREADAASLUMP, align 4
  store i32 %552, i32* %2, align 4
  br label %560

553:                                              ; preds = %548, %520
  %554 = call i32 (...) @AAS_SwapAASData()
  %555 = load i32, i32* @qtrue, align 4
  store i32 %555, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 15), align 8
  %556 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @botimport, i32 0, i32 0), align 8
  %557 = load i32, i32* %4, align 4
  %558 = call i32 %556(i32 %557)
  %559 = load i32, i32* @BLERR_NOERROR, align 4
  store i32 %559, i32* %2, align 4
  br label %560

560:                                              ; preds = %553, %551, %518, %485, %452, %419, %386, %353, %320, %287, %254, %221, %188, %155, %122, %84, %57, %36, %20
  %561 = load i32, i32* %2, align 4
  ret i32 %561
}

declare dso_local i32 @AAS_DumpAASData(...) #1

declare dso_local i32 @AAS_Error(i8*, i8*, ...) #1

declare dso_local i64 @LittleLong(i64) #1

declare dso_local i32 @AAS_DData(i8*, i32) #1

declare dso_local i64 @atoi(i32) #1

declare dso_local i32 @LibVarGetString(i8*) #1

declare dso_local i64 @AAS_LoadAASLump(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @AAS_SwapAASData(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
