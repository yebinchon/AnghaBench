; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_BuildFindPlayerList.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_BuildFindPlayerList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i8*, i8**, i8**, i64, %struct.TYPE_10__, %struct.TYPE_15__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i8*, i32, i8* }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i8*** }

@UI_BuildFindPlayerList.numFound = internal global i32 0, align 4
@UI_BuildFindPlayerList.numTimeOuts = internal global i32 0, align 4
@MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@uiInfo = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"ui_findPlayer\00", align 1
@ui_serverStatusTimeOut = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cl_serverStatusResendTime\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"searching %d...\00", align 1
@MAX_SERVERSTATUSREQUESTS = common dso_local global i32 0, align 4
@MAX_FOUNDPLAYER_SERVERS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"searching %d/%d...\00", align 1
@qfalse = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@qtrue = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"no servers found\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%d server%s found with player %s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@FEEDER_FINDPLAYER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @UI_BuildFindPlayerList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_BuildFindPlayerList(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %13 = add nsw i32 %12, 2
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @MAX_STRING_CHARS, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 0), align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 0), align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 6, i32 0), align 8
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %22
  store i32 1, i32* %11, align 4
  br label %346

30:                                               ; preds = %25
  br label %63

31:                                               ; preds = %1
  %32 = call i32 @memset(%struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7), i32 0, i32 16)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 1), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 5), align 8
  %33 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 2), align 8
  %34 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %33, i32 8)
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 2), align 8
  %36 = call i32 @Q_CleanStr(i8* %35)
  %37 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 2), align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 0), align 8
  store i32 1, i32* %11, align 4
  br label %346

41:                                               ; preds = %31
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui_serverStatusTimeOut, i32 0, i32 0), align 4
  %43 = sdiv i32 %42, 2
  %44 = sub nsw i32 %43, 10
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 50
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 50, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = call i32 @trap_LAN_ServerStatus(i32* null, i32* null, i32 0)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 1), align 4
  %53 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 3), align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 1), align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 0), align 8
  %60 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %58, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  store i32 0, i32* @UI_BuildFindPlayerList.numFound, align 4
  %61 = load i32, i32* @UI_BuildFindPlayerList.numTimeOuts, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @UI_BuildFindPlayerList.numTimeOuts, align 4
  br label %63

63:                                               ; preds = %48, %30
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %290, %63
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @MAX_SERVERSTATUSREQUESTS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %293

68:                                               ; preds = %64
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %189

76:                                               ; preds = %68
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @UI_GetServerStatusInfo(i8* %82, %struct.TYPE_12__* %6)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %188

85:                                               ; preds = %76
  %86 = load i32, i32* @UI_BuildFindPlayerList.numFound, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @UI_BuildFindPlayerList.numFound, align 4
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %169, %85
  %89 = load i32, i32* %4, align 4
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %172

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %95 = load i8***, i8**** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8**, i8*** %95, i64 %97
  %99 = load i8**, i8*** %98, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 2
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %115

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %105 = load i8***, i8**** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8**, i8*** %105, i64 %107
  %109 = load i8**, i8*** %108, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 2
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = icmp ne i8 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %103, %93
  br label %169

116:                                              ; preds = %103
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %118 = load i8***, i8**** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8**, i8*** %118, i64 %120
  %122 = load i8**, i8*** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 3
  %124 = load i8*, i8** %123, align 8
  %125 = trunc i64 %14 to i32
  %126 = call i32 @Q_strncpyz(i8* %16, i8* %124, i32 %125)
  %127 = call i32 @Q_CleanStr(i8* %16)
  %128 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 2), align 8
  %129 = call i64 @stristr(i8* %16, i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %168

131:                                              ; preds = %116
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 1), align 4
  %133 = load i32, i32* @MAX_FOUNDPLAYER_SERVERS, align 4
  %134 = sub nsw i32 %133, 1
  %135 = icmp slt i32 %132, %134
  br i1 %135, label %136, label %165

136:                                              ; preds = %131
  %137 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 4), align 8
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 1), align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %137, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @Q_strncpyz(i8* %142, i8* %148, i32 8)
  %150 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 3), align 8
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 1), align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %150, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %157 = load i32, i32* %3, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @Q_strncpyz(i8* %155, i8* %161, i32 8)
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 1), align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 1), align 4
  br label %167

165:                                              ; preds = %131
  %166 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 8, i32 0), align 8
  store i64 %166, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 0), align 8
  br label %167

167:                                              ; preds = %165, %136
  br label %168

168:                                              ; preds = %167, %116
  br label %169

169:                                              ; preds = %168, %115
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %4, align 4
  br label %88

172:                                              ; preds = %88
  %173 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 3), align 8
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 1), align 4
  %175 = sub nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %173, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 0), align 8
  %180 = load i32, i32* @UI_BuildFindPlayerList.numFound, align 4
  %181 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %178, i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %179, i32 %180)
  %182 = load i8*, i8** @qfalse, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %184 = load i32, i32* %3, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 3
  store i8* %182, i8** %187, align 8
  br label %188

188:                                              ; preds = %172, %76
  br label %189

189:                                              ; preds = %188, %68
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %191 = load i32, i32* %3, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 3
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %208

197:                                              ; preds = %189
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %199 = load i32, i32* %3, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 6, i32 0), align 8
  %205 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui_serverStatusTimeOut, i32 0, i32 0), align 4
  %206 = sub nsw i32 %204, %205
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %208, label %289

208:                                              ; preds = %197, %189
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %210 = load i32, i32* %3, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 3
  %214 = load i8*, i8** %213, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %208
  %217 = load i32, i32* @UI_BuildFindPlayerList.numTimeOuts, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* @UI_BuildFindPlayerList.numTimeOuts, align 4
  br label %219

219:                                              ; preds = %216, %208
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %221 = load i32, i32* %3, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i64 @UI_GetServerStatusInfo(i8* %225, %struct.TYPE_12__* null)
  %227 = load i8*, i8** @qfalse, align 8
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %229 = load i32, i32* %3, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 3
  store i8* %227, i8** %232, align 8
  %233 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 0), align 8
  %234 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 8, i32 0), align 8
  %235 = icmp ult i64 %233, %234
  br i1 %235, label %236, label %288

236:                                              ; preds = %219
  %237 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 6, i32 0), align 8
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %239 = load i32, i32* %3, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 2
  store i32 %237, i32* %242, align 8
  %243 = call i32 (...) @UI_SourceForLAN()
  store i32 %243, i32* %10, align 4
  %244 = load i32, i32* %10, align 4
  %245 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 8, i32 1), align 8
  %246 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 0), align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %250 = load i32, i32* %3, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @trap_LAN_GetServerAddressString(i32 %244, i32 %248, i8* %254, i32 8)
  %256 = load i32, i32* %10, align 4
  %257 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 8, i32 1), align 8
  %258 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 0), align 8
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = trunc i64 %18 to i32
  %262 = call i32 @trap_LAN_GetServerInfo(i32 %256, i32 %260, i8* %19, i32 %261)
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %264 = load i32, i32* %3, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 1
  %268 = load i8*, i8** %267, align 8
  %269 = call i8* @Info_ValueForKey(i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %270 = call i32 @Q_strncpyz(i8* %268, i8* %269, i32 8)
  %271 = load i8*, i8** @qtrue, align 8
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %273 = load i32, i32* %3, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 3
  store i8* %271, i8** %276, align 8
  %277 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 0), align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 0), align 8
  %279 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 3), align 8
  %280 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 1), align 4
  %281 = sub nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8*, i8** %279, i64 %282
  %284 = load i8*, i8** %283, align 8
  %285 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 0), align 8
  %286 = load i32, i32* @UI_BuildFindPlayerList.numFound, align 4
  %287 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %284, i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %285, i32 %286)
  br label %288

288:                                              ; preds = %236, %219
  br label %289

289:                                              ; preds = %288, %197
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %3, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %3, align 4
  br label %64

293:                                              ; preds = %64
  store i32 0, i32* %3, align 4
  br label %294

294:                                              ; preds = %308, %293
  %295 = load i32, i32* %3, align 4
  %296 = load i32, i32* @MAX_SERVERSTATUSREQUESTS, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %311

298:                                              ; preds = %294
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %300 = load i32, i32* %3, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 3
  %304 = load i8*, i8** %303, align 8
  %305 = icmp ne i8* %304, null
  br i1 %305, label %306, label %307

306:                                              ; preds = %298
  br label %311

307:                                              ; preds = %298
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %3, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %3, align 4
  br label %294

311:                                              ; preds = %306, %294
  %312 = load i32, i32* %3, align 4
  %313 = load i32, i32* @MAX_SERVERSTATUSREQUESTS, align 4
  %314 = icmp slt i32 %312, %313
  br i1 %314, label %315, label %318

315:                                              ; preds = %311
  %316 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 6, i32 0), align 8
  %317 = add nsw i32 %316, 25
  store i32 %317, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 0), align 8
  br label %345

318:                                              ; preds = %311
  %319 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 1), align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %326, label %321

321:                                              ; preds = %318
  %322 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 3), align 8
  %323 = getelementptr inbounds i8*, i8** %322, i64 0
  %324 = load i8*, i8** %323, align 8
  %325 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %324, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %341

326:                                              ; preds = %318
  %327 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 3), align 8
  %328 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 1), align 4
  %329 = sub nsw i32 %328, 1
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8*, i8** %327, i64 %330
  %332 = load i8*, i8** %331, align 8
  %333 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 1), align 4
  %334 = sub nsw i32 %333, 1
  %335 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 1), align 4
  %336 = icmp eq i32 %335, 2
  %337 = zext i1 %336 to i64
  %338 = select i1 %336, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)
  %339 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 2), align 8
  %340 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %332, i32 8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %334, i8* %338, i8* %339)
  br label %341

341:                                              ; preds = %326, %321
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 0), align 8
  %342 = load i32, i32* @FEEDER_FINDPLAYER, align 4
  %343 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 5), align 8
  %344 = call i32 @UI_FeederSelection(i32 %342, i64 %343)
  br label %345

345:                                              ; preds = %341, %315
  store i32 0, i32* %11, align 4
  br label %346

346:                                              ; preds = %345, %40, %29
  %347 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %347)
  %348 = load i32, i32* %11, align 4
  switch i32 %348, label %350 [
    i32 0, label %349
    i32 1, label %349
  ]

349:                                              ; preds = %346, %346
  ret void

350:                                              ; preds = %346
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #2

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #2

declare dso_local i32 @Q_CleanStr(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @trap_Cvar_Set(i8*, i32) #2

declare dso_local i32 @va(i8*, i32) #2

declare dso_local i32 @trap_LAN_ServerStatus(i32*, i32*, i32) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @UI_GetServerStatusInfo(i8*, %struct.TYPE_12__*) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i64 @stristr(i8*, i8*) #2

declare dso_local i32 @UI_SourceForLAN(...) #2

declare dso_local i32 @trap_LAN_GetServerAddressString(i32, i32, i8*, i32) #2

declare dso_local i32 @trap_LAN_GetServerInfo(i32, i32, i8*, i32) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @UI_FeederSelection(i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
