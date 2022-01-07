; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_NewClientInfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_NewClientInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i32*, i32*, i32*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@cgs = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"c1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"c2\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"skill\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"hc\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"tl\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"g_redteam\00", align 1
@MAX_TEAMNAME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"g_blueteam\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@cg_forceModel = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@MAX_QPATH = common dso_local global i32 0, align 4
@GT_TEAM = common dso_local global i64 0, align 8
@DEFAULT_TEAM_MODEL = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"hmodel\00", align 1
@DEFAULT_TEAM_HEAD = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c"headmodel\00", align 1
@cg_deferPlayers = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@cg_buildScript = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@cg = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str.16 = private unnamed_addr constant [38 x i8] c"Memory is low. Using deferred model.\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_NewClientInfo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 1), align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i64 %17
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %3, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @CS_PLAYERS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i8* @CG_ConfigString(i64 %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = call i32 @memset(%struct.TYPE_11__* %29, i32 0, i32 152)
  br label %352

31:                                               ; preds = %1
  %32 = call i32 @memset(%struct.TYPE_11__* %4, i32 0, i32 152)
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @Info_ValueForKey(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @Q_strncpyz(i8* %36, i8* %37, i32 8)
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @Info_ValueForKey(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @CG_ColorFromString(i8* %41, i32* %43)
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 255, %48
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %49, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 255, %56
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %57, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 255, %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %65, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  store i32 255, i32* %71, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = call i8* @Info_ValueForKey(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %73, i8** %6, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @CG_ColorFromString(i8* %74, i32* %76)
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 255, %81
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %82, i32* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 255, %89
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 %90, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 255, %97
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 %98, i32* %101, align 4
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  store i32 255, i32* %104, align 4
  %105 = load i8*, i8** %5, align 8
  %106 = call i8* @Info_ValueForKey(i8* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %106, i8** %6, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = call i8* @atoi(i8* %107)
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 19
  store i8* %108, i8** %109, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = call i8* @Info_ValueForKey(i8* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i8* %111, i8** %6, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = call i8* @atoi(i8* %112)
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 18
  store i8* %113, i8** %114, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = call i8* @Info_ValueForKey(i8* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %116, i8** %6, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = call i8* @atoi(i8* %117)
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 17
  store i8* %118, i8** %119, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = call i8* @Info_ValueForKey(i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %121, i8** %6, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = call i8* @atoi(i8* %122)
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 16
  store i8* %123, i8** %124, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = call i8* @Info_ValueForKey(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i8* %126, i8** %6, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = call i8* @atoi(i8* %127)
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 15
  store i8* %128, i8** %129, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = call i8* @Info_ValueForKey(i8* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i8* %131, i8** %6, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = call i8* @atoi(i8* %132)
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 14
  store i8* %133, i8** %134, align 8
  %135 = load i8*, i8** %5, align 8
  %136 = call i8* @Info_ValueForKey(i8* %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i8* %136, i8** %6, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = call i8* @atoi(i8* %137)
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 13
  store i8* %138, i8** %139, align 8
  %140 = load i8*, i8** %5, align 8
  %141 = call i8* @Info_ValueForKey(i8* %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  store i8* %141, i8** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 5
  %143 = load i8*, i8** %142, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = load i32, i32* @MAX_TEAMNAME, align 4
  %146 = call i32 @Q_strncpyz(i8* %143, i8* %144, i32 %145)
  %147 = load i8*, i8** %5, align 8
  %148 = call i8* @Info_ValueForKey(i8* %147, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  store i8* %148, i8** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 6
  %150 = load i8*, i8** %149, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = load i32, i32* @MAX_TEAMNAME, align 4
  %153 = call i32 @Q_strncpyz(i8* %150, i8* %151, i32 %152)
  %154 = load i8*, i8** %5, align 8
  %155 = call i8* @Info_ValueForKey(i8* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  store i8* %155, i8** %6, align 8
  %156 = load i32, i32* %2, align 4
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = call i32 @dmlab_new_client_info(i32 %156, i8* %158, i8* %159)
  %161 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_forceModel, i32 0, i32 0), align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %214

163:                                              ; preds = %31
  %164 = load i32, i32* @MAX_QPATH, align 4
  %165 = zext i32 %164 to i64
  %166 = call i8* @llvm.stacksave()
  store i8* %166, i8** %8, align 8
  %167 = alloca i8, i64 %165, align 16
  store i64 %165, i64* %9, align 8
  %168 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 0), align 8
  %169 = load i64, i64* @GT_TEAM, align 8
  %170 = icmp sge i64 %168, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 7
  %173 = load i8*, i8** %172, align 8
  %174 = load i8*, i8** @DEFAULT_TEAM_MODEL, align 8
  %175 = call i32 @Q_strncpyz(i8* %173, i8* %174, i32 8)
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 8
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @Q_strncpyz(i8* %177, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 8)
  br label %196

179:                                              ; preds = %163
  %180 = trunc i64 %165 to i32
  %181 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %167, i32 %180)
  %182 = call i8* @strchr(i8* %167, i8 signext 47)
  store i8* %182, i8** %10, align 8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %10, align 8
  br label %188

185:                                              ; preds = %179
  %186 = load i8*, i8** %10, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %10, align 8
  store i8 0, i8* %186, align 1
  br label %188

188:                                              ; preds = %185, %184
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 8
  %190 = load i8*, i8** %189, align 8
  %191 = load i8*, i8** %10, align 8
  %192 = call i32 @Q_strncpyz(i8* %190, i8* %191, i32 8)
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 7
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @Q_strncpyz(i8* %194, i8* %167, i32 8)
  br label %196

196:                                              ; preds = %188, %171
  %197 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 0), align 8
  %198 = load i64, i64* @GT_TEAM, align 8
  %199 = icmp sge i64 %197, %198
  br i1 %199, label %200, label %212

200:                                              ; preds = %196
  %201 = load i8*, i8** %6, align 8
  %202 = call i8* @strchr(i8* %201, i8 signext 47)
  store i8* %202, i8** %7, align 8
  %203 = load i8*, i8** %7, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 8
  %207 = load i8*, i8** %206, align 8
  %208 = load i8*, i8** %7, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  %210 = call i32 @Q_strncpyz(i8* %207, i8* %209, i32 8)
  br label %211

211:                                              ; preds = %205, %200
  br label %212

212:                                              ; preds = %211, %196
  %213 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %213)
  br label %236

214:                                              ; preds = %31
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 7
  %216 = load i8*, i8** %215, align 8
  %217 = load i8*, i8** %6, align 8
  %218 = call i32 @Q_strncpyz(i8* %216, i8* %217, i32 8)
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 7
  %220 = load i8*, i8** %219, align 8
  %221 = call i8* @strchr(i8* %220, i8 signext 47)
  store i8* %221, i8** %7, align 8
  %222 = load i8*, i8** %7, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %228, label %224

224:                                              ; preds = %214
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 8
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @Q_strncpyz(i8* %226, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 8)
  br label %235

228:                                              ; preds = %214
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 8
  %230 = load i8*, i8** %229, align 8
  %231 = load i8*, i8** %7, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 1
  %233 = call i32 @Q_strncpyz(i8* %230, i8* %232, i32 8)
  %234 = load i8*, i8** %7, align 8
  store i8 0, i8* %234, align 1
  br label %235

235:                                              ; preds = %228, %224
  br label %236

236:                                              ; preds = %235, %212
  %237 = load i8*, i8** %5, align 8
  %238 = call i8* @Info_ValueForKey(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  store i8* %238, i8** %6, align 8
  %239 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_forceModel, i32 0, i32 0), align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %292

241:                                              ; preds = %236
  %242 = load i32, i32* @MAX_QPATH, align 4
  %243 = zext i32 %242 to i64
  %244 = call i8* @llvm.stacksave()
  store i8* %244, i8** %11, align 8
  %245 = alloca i8, i64 %243, align 16
  store i64 %243, i64* %12, align 8
  %246 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 0), align 8
  %247 = load i64, i64* @GT_TEAM, align 8
  %248 = icmp sge i64 %246, %247
  br i1 %248, label %249, label %257

249:                                              ; preds = %241
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 9
  %251 = load i8*, i8** %250, align 8
  %252 = load i8*, i8** @DEFAULT_TEAM_HEAD, align 8
  %253 = call i32 @Q_strncpyz(i8* %251, i8* %252, i32 8)
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 10
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @Q_strncpyz(i8* %255, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 8)
  br label %274

257:                                              ; preds = %241
  %258 = trunc i64 %243 to i32
  %259 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %245, i32 %258)
  %260 = call i8* @strchr(i8* %245, i8 signext 47)
  store i8* %260, i8** %13, align 8
  %261 = icmp eq i8* %260, null
  br i1 %261, label %262, label %263

262:                                              ; preds = %257
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %13, align 8
  br label %266

263:                                              ; preds = %257
  %264 = load i8*, i8** %13, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %13, align 8
  store i8 0, i8* %264, align 1
  br label %266

266:                                              ; preds = %263, %262
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 10
  %268 = load i8*, i8** %267, align 8
  %269 = load i8*, i8** %13, align 8
  %270 = call i32 @Q_strncpyz(i8* %268, i8* %269, i32 8)
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 9
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @Q_strncpyz(i8* %272, i8* %245, i32 8)
  br label %274

274:                                              ; preds = %266, %249
  %275 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 0), align 8
  %276 = load i64, i64* @GT_TEAM, align 8
  %277 = icmp sge i64 %275, %276
  br i1 %277, label %278, label %290

278:                                              ; preds = %274
  %279 = load i8*, i8** %6, align 8
  %280 = call i8* @strchr(i8* %279, i8 signext 47)
  store i8* %280, i8** %7, align 8
  %281 = load i8*, i8** %7, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %283, label %289

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 10
  %285 = load i8*, i8** %284, align 8
  %286 = load i8*, i8** %7, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 1
  %288 = call i32 @Q_strncpyz(i8* %285, i8* %287, i32 8)
  br label %289

289:                                              ; preds = %283, %278
  br label %290

290:                                              ; preds = %289, %274
  %291 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %291)
  br label %314

292:                                              ; preds = %236
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 9
  %294 = load i8*, i8** %293, align 8
  %295 = load i8*, i8** %6, align 8
  %296 = call i32 @Q_strncpyz(i8* %294, i8* %295, i32 8)
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 9
  %298 = load i8*, i8** %297, align 8
  %299 = call i8* @strchr(i8* %298, i8 signext 47)
  store i8* %299, i8** %7, align 8
  %300 = load i8*, i8** %7, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %306, label %302

302:                                              ; preds = %292
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 10
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 @Q_strncpyz(i8* %304, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 8)
  br label %313

306:                                              ; preds = %292
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 10
  %308 = load i8*, i8** %307, align 8
  %309 = load i8*, i8** %7, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 1
  %311 = call i32 @Q_strncpyz(i8* %308, i8* %310, i32 8)
  %312 = load i8*, i8** %7, align 8
  store i8 0, i8* %312, align 1
  br label %313

313:                                              ; preds = %306, %302
  br label %314

314:                                              ; preds = %313, %290
  %315 = call i32 @CG_ScanForExistingClientInfo(%struct.TYPE_11__* %4)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %346, label %317

317:                                              ; preds = %314
  %318 = call i32 (...) @trap_MemoryRemaining()
  %319 = icmp slt i32 %318, 4000000
  %320 = zext i1 %319 to i32
  store i32 %320, i32* %14, align 4
  %321 = load i32, i32* %14, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %332, label %323

323:                                              ; preds = %317
  %324 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg_deferPlayers, i32 0, i32 0), align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %342

326:                                              ; preds = %323
  %327 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg_buildScript, i32 0, i32 0), align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %342, label %329

329:                                              ; preds = %326
  %330 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 0), align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %342, label %332

332:                                              ; preds = %329, %317
  %333 = load i32, i32* %2, align 4
  %334 = call i32 @CG_SetDeferredClientInfo(i32 %333, %struct.TYPE_11__* %4)
  %335 = load i32, i32* %14, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %332
  %338 = call i32 @CG_Printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  %339 = load i32, i32* @qfalse, align 4
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 12
  store i32 %339, i32* %340, align 4
  br label %341

341:                                              ; preds = %337, %332
  br label %345

342:                                              ; preds = %329, %326, %323
  %343 = load i32, i32* %2, align 4
  %344 = call i32 @CG_LoadClientInfo(i32 %343, %struct.TYPE_11__* %4)
  br label %345

345:                                              ; preds = %342, %341
  br label %346

346:                                              ; preds = %345, %314
  %347 = load i32, i32* @qtrue, align 4
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 11
  store i32 %347, i32* %348, align 8
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %350 = bitcast %struct.TYPE_11__* %349 to i8*
  %351 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %350, i8* align 8 %351, i64 152, i1 false)
  br label %352

352:                                              ; preds = %346, %28
  ret void
}

declare dso_local i8* @CG_ConfigString(i64) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i32 @CG_ColorFromString(i8*, i32*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @dmlab_new_client_info(i32, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CG_ScanForExistingClientInfo(%struct.TYPE_11__*) #1

declare dso_local i32 @trap_MemoryRemaining(...) #1

declare dso_local i32 @CG_SetDeferredClientInfo(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @CG_Printf(i8*) #1

declare dso_local i32 @CG_LoadClientInfo(i32, %struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
