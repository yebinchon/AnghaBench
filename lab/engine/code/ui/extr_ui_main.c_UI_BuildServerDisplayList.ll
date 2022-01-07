; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_BuildServerDisplayList.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_BuildServerDisplayList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@UI_BuildServerDisplayList.numinvisible = internal global i32 0, align 4
@uiInfo = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"cl_motdString\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Welcome to Team Arena!\00", align 1
@FEEDER_SERVERS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@ui_netSource = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@UIAS_LOCAL = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@UIAS_FAVORITES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"clients\00", align 1
@ui_browserShowEmpty = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@ui_browserShowFull = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@ui_joinGameType = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"gametype\00", align 1
@ui_serverFilterType = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"game\00", align 1
@serverFilters = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @UI_BuildServerDisplayList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_BuildServerDisplayList(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %15 = load i32, i32* @MAX_STRING_CHARS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 0), align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 1, i32* %14, align 4
  br label %220

26:                                               ; preds = %21, %1
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 6), align 8
  %32 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %31, i32 4)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 6), align 8
  %34 = call i32 @strlen(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 6), align 8
  %39 = call i32 @strcpy(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 6), align 8
  %41 = call i32 @strlen(i32 %40)
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %37, %30
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 1), align 8
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 1), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 2), align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = call i32 (...) @UI_SourceForLAN()
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %2, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  store i32 0, i32* @UI_BuildServerDisplayList.numinvisible, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 4), align 8
  %53 = load i32, i32* @FEEDER_SERVERS, align 4
  %54 = call i32 @Menu_SetFeederSelection(i32* null, i32 %53, i32 0, i32* null)
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @qtrue, align 4
  %57 = call i32 @trap_LAN_MarkServerVisible(i32 %55, i32 -1, i32 %56)
  br label %58

58:                                               ; preds = %52, %48
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @trap_LAN_GetServerCount(i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ui_netSource, i32 0, i32 0), align 8
  %65 = load i64, i64* @UIAS_LOCAL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67, %58
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 4), align 8
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %72 = add nsw i64 %71, 500
  store i64 %72, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 0), align 8
  store i32 1, i32* %14, align 4
  br label %220

73:                                               ; preds = %67, %63
  %74 = load i32, i32* @qfalse, align 4
  store i32 %74, i32* %10, align 4
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %211, %73
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %214

79:                                               ; preds = %75
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @trap_LAN_ServerIsVisible(i32 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  br label %211

85:                                               ; preds = %79
  %86 = load i32, i32* @qtrue, align 4
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @trap_LAN_GetServerPing(i32 %87, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ui_netSource, i32 0, i32 0), align 8
  %94 = load i64, i64* @UIAS_FAVORITES, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %210

96:                                               ; preds = %92, %85
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ui_netSource, i32 0, i32 0), align 8
  %98 = load i64, i64* @UIAS_FAVORITES, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @UI_RemoveServerFromDisplayList(i32 %101)
  br label %103

103:                                              ; preds = %100, %96
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @MAX_STRING_CHARS, align 4
  %107 = call i32 @trap_LAN_GetServerInfo(i32 %104, i32 %105, i8* %18, i32 %106)
  %108 = call i32 @Info_ValueForKey(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %109 = call i32 @atoi(i32 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ui_browserShowEmpty, i32 0, i32 0), align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %103
  %113 = load i32, i32* %5, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load i32, i32* %7, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @qfalse, align 4
  %122 = call i32 @trap_LAN_MarkServerVisible(i32 %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %115
  br label %211

124:                                              ; preds = %112
  br label %125

125:                                              ; preds = %124, %103
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ui_browserShowFull, i32 0, i32 0), align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %125
  %129 = call i32 @Info_ValueForKey(i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %130 = call i32 @atoi(i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %128
  %135 = load i32, i32* %7, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @qfalse, align 4
  %141 = call i32 @trap_LAN_MarkServerVisible(i32 %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %134
  br label %211

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %143, %125
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 2), align 8
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui_joinGameType, i32 0, i32 0), align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, -1
  br i1 %150, label %151, label %171

151:                                              ; preds = %144
  %152 = call i32 @Info_ValueForKey(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %153 = call i32 @atoi(i32 %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 2), align 8
  %156 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui_joinGameType, i32 0, i32 0), align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %154, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %151
  %162 = load i32, i32* %7, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* @qfalse, align 4
  %168 = call i32 @trap_LAN_MarkServerVisible(i32 %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %164, %161
  br label %211

170:                                              ; preds = %151
  br label %171

171:                                              ; preds = %170, %144
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ui_serverFilterType, i32 0, i32 0), align 8
  %173 = icmp ugt i64 %172, 0
  br i1 %173, label %174, label %193

174:                                              ; preds = %171
  %175 = call i32 @Info_ValueForKey(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** @serverFilters, align 8
  %177 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ui_serverFilterType, i32 0, i32 0), align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @Q_stricmp(i32 %175, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %174
  %184 = load i32, i32* %7, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %3, align 4
  %189 = load i32, i32* @qfalse, align 4
  %190 = call i32 @trap_LAN_MarkServerVisible(i32 %187, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %186, %183
  br label %211

192:                                              ; preds = %174
  br label %193

193:                                              ; preds = %192, %171
  %194 = load i32, i32* %3, align 4
  %195 = call i32 @UI_BinaryServerInsertion(i32 %194)
  %196 = load i32, i32* %7, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %209

198:                                              ; preds = %193
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* %3, align 4
  %201 = load i32, i32* @qfalse, align 4
  %202 = call i32 @trap_LAN_MarkServerVisible(i32 %199, i32 %200, i32 %201)
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 4), align 8
  %206 = add nsw i64 %205, %204
  store i64 %206, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 4), align 8
  %207 = load i32, i32* @UI_BuildServerDisplayList.numinvisible, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* @UI_BuildServerDisplayList.numinvisible, align 4
  br label %209

209:                                              ; preds = %198, %193
  br label %210

210:                                              ; preds = %209, %92
  br label %211

211:                                              ; preds = %210, %191, %169, %142, %123, %84
  %212 = load i32, i32* %3, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %3, align 4
  br label %75

214:                                              ; preds = %75
  %215 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 0, i32 0), align 8
  store i64 %215, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 3), align 8
  %216 = load i32, i32* %10, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %214
  br label %219

219:                                              ; preds = %218, %214
  store i32 0, i32* %14, align 4
  br label %220

220:                                              ; preds = %219, %70, %25
  %221 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %221)
  %222 = load i32, i32* %14, align 4
  switch i32 %222, label %224 [
    i32 0, label %223
    i32 1, label %223
  ]

223:                                              ; preds = %220, %220
  ret void

224:                                              ; preds = %220
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @UI_SourceForLAN(...) #2

declare dso_local i32 @Menu_SetFeederSelection(i32*, i32, i32, i32*) #2

declare dso_local i32 @trap_LAN_MarkServerVisible(i32, i32, i32) #2

declare dso_local i32 @trap_LAN_GetServerCount(i32) #2

declare dso_local i32 @trap_LAN_ServerIsVisible(i32, i32) #2

declare dso_local i32 @trap_LAN_GetServerPing(i32, i32) #2

declare dso_local i32 @UI_RemoveServerFromDisplayList(i32) #2

declare dso_local i32 @trap_LAN_GetServerInfo(i32, i32, i8*, i32) #2

declare dso_local i32 @atoi(i32) #2

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #2

declare dso_local i64 @Q_stricmp(i32, i32) #2

declare dso_local i32 @UI_BinaryServerInsertion(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
