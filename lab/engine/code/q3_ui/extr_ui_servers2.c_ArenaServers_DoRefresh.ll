; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_DoRefresh.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_DoRefresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i8**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }

@MAX_ADDRESSLENGTH = common dso_local global i32 0, align 4
@MAX_INFO_STRING = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@g_arenaservers = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@g_servertype = common dso_local global i64 0, align 8
@UIAS_FAVORITES = common dso_local global i64 0, align 8
@UIAS_LOCAL = common dso_local global i64 0, align 8
@AS_LOCAL = common dso_local global i32 0, align 4
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"localservers\0A\00", align 1
@MAX_PINGREQUESTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"game\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@EXEC_NOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"ping %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ArenaServers_DoRefresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ArenaServers_DoRefresh() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAX_ADDRESSLENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @MAX_INFO_STRING, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 0), align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %0
  %20 = load i64, i64* @g_servertype, align 8
  %21 = load i64, i64* @UIAS_FAVORITES, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i64, i64* @g_servertype, align 8
  %25 = load i64, i64* @UIAS_LOCAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @AS_LOCAL, align 4
  %29 = call i64 @trap_LAN_GetServerCount(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 1, i32* %8, align 4
  br label %247

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %23
  %34 = call i32 (...) @ArenaServers_SourceForLAN()
  %35 = call i64 @trap_LAN_GetServerCount(i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  br label %247

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %19
  br label %55

40:                                               ; preds = %0
  %41 = load i64, i64* @g_servertype, align 8
  %42 = load i64, i64* @UIAS_LOCAL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i32, i32* @AS_LOCAL, align 4
  %46 = call i64 @trap_LAN_GetServerCount(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @EXEC_APPEND, align 4
  %50 = call i32 @trap_Cmd_ExecuteText(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  %52 = add nsw i64 %51, 5000
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 0), align 8
  store i32 1, i32* %8, align 4
  br label %247

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %40
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 1), align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %8, align 4
  br label %247

60:                                               ; preds = %55
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  %62 = add nsw i64 %61, 10
  store i64 %62, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 1), align 8
  %63 = call i32 (...) @ArenaServers_MaxPing()
  store i32 %63, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %64

64:                                               ; preds = %149, %60
  %65 = load i32, i32* %1, align 4
  %66 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %152

68:                                               ; preds = %64
  %69 = load i32, i32* %1, align 4
  %70 = load i32, i32* @MAX_ADDRESSLENGTH, align 4
  %71 = call i32 @trap_LAN_GetPing(i32 %69, i8* %12, i32 %70, i32* %3)
  %72 = getelementptr inbounds i8, i8* %12, i64 0
  %73 = load i8, i8* %72, align 16
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  br label %149

76:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %92, %76
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 6), align 8
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @Q_stricmp(i8* %12, i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %81
  br label %95

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %2, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %2, align 4
  br label %77

95:                                               ; preds = %90, %77
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %146

99:                                               ; preds = %95
  %100 = load i32, i32* %3, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %99
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 6), align 8
  %105 = load i32, i32* %2, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = sub nsw i64 %103, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %3, align 4
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %102
  br label %149

117:                                              ; preds = %102
  br label %118

118:                                              ; preds = %117, %99
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %123, align 16
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %3, align 4
  %125 = load i64, i64* @g_servertype, align 8
  %126 = load i64, i64* @UIAS_FAVORITES, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = call i32 @Info_SetValueForKey(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  %130 = call i32 @Info_SetValueForKey(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %122
  br label %136

132:                                              ; preds = %118
  %133 = load i32, i32* %1, align 4
  %134 = load i32, i32* @MAX_INFO_STRING, align 4
  %135 = call i32 @trap_LAN_GetPingInfo(i32 %133, i8* %15, i32 %134)
  br label %136

136:                                              ; preds = %132, %131
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @ArenaServers_Insert(i8* %12, i8* %15, i32 %137)
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 6), align 8
  %140 = load i32, i32* %2, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  store i8 0, i8* %145, align 1
  br label %146

146:                                              ; preds = %136, %95
  %147 = load i32, i32* %1, align 4
  %148 = call i32 @trap_LAN_ClearPing(i32 %147)
  br label %149

149:                                              ; preds = %146, %116, %75
  %150 = load i32, i32* %1, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %1, align 4
  br label %64

152:                                              ; preds = %64
  %153 = load i64, i64* @g_servertype, align 8
  %154 = load i64, i64* @UIAS_FAVORITES, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 3), align 8
  store i64 %157, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 2), align 8
  br label %161

158:                                              ; preds = %152
  %159 = call i32 (...) @ArenaServers_SourceForLAN()
  %160 = call i64 @trap_LAN_GetServerCount(i32 %159)
  store i64 %160, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 2), align 8
  br label %161

161:                                              ; preds = %158, %156
  store i32 0, i32* %1, align 4
  br label %162

162:                                              ; preds = %237, %161
  %163 = load i32, i32* %1, align 4
  %164 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 4), align 8
  %168 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 2), align 8
  %169 = icmp ult i64 %167, %168
  br label %170

170:                                              ; preds = %166, %162
  %171 = phi i1 [ false, %162 ], [ %169, %166 ]
  br i1 %171, label %172, label %240

172:                                              ; preds = %170
  %173 = call i32 (...) @trap_LAN_GetPingQueueCount()
  %174 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %175 = icmp sge i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %240

177:                                              ; preds = %172
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %194, %177
  %179 = load i32, i32* %2, align 4
  %180 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %197

182:                                              ; preds = %178
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 6), align 8
  %184 = load i32, i32* %2, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 0
  %190 = load i8, i8* %189, align 1
  %191 = icmp ne i8 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %182
  br label %197

193:                                              ; preds = %182
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %2, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %2, align 4
  br label %178

197:                                              ; preds = %192, %178
  %198 = load i32, i32* %2, align 4
  %199 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %200 = icmp sge i32 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  br label %240

202:                                              ; preds = %197
  %203 = load i64, i64* @g_servertype, align 8
  %204 = load i64, i64* @UIAS_FAVORITES, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %202
  %207 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 5), align 8
  %208 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 4), align 8
  %209 = getelementptr inbounds i8*, i8** %207, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @strcpy(i8* %12, i8* %210)
  br label %217

212:                                              ; preds = %202
  %213 = call i32 (...) @ArenaServers_SourceForLAN()
  %214 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 4), align 8
  %215 = load i32, i32* @MAX_ADDRESSLENGTH, align 4
  %216 = call i32 @trap_LAN_GetServerAddressString(i32 %213, i64 %214, i8* %12, i32 %215)
  br label %217

217:                                              ; preds = %212, %206
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 6), align 8
  %219 = load i32, i32* %2, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 @strcpy(i8* %223, i8* %12)
  %225 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  %226 = trunc i64 %225 to i32
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 6), align 8
  %228 = load i32, i32* %2, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  store i32 %226, i32* %231, align 8
  %232 = load i32, i32* @EXEC_NOW, align 4
  %233 = call i8* @va(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %12)
  %234 = call i32 @trap_Cmd_ExecuteText(i32 %232, i8* %233)
  %235 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 4), align 8
  %236 = add i64 %235, 1
  store i64 %236, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 4), align 8
  br label %237

237:                                              ; preds = %217
  %238 = load i32, i32* %1, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %1, align 4
  br label %162

240:                                              ; preds = %201, %176, %170
  %241 = call i32 (...) @trap_LAN_GetPingQueueCount()
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %240
  %244 = call i32 (...) @ArenaServers_StopRefresh()
  store i32 1, i32* %8, align 4
  br label %247

245:                                              ; preds = %240
  %246 = call i32 (...) @ArenaServers_UpdateMenu()
  store i32 0, i32* %8, align 4
  br label %247

247:                                              ; preds = %245, %243, %59, %48, %37, %31
  %248 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %248)
  %249 = load i32, i32* %8, align 4
  switch i32 %249, label %251 [
    i32 0, label %250
    i32 1, label %250
  ]

250:                                              ; preds = %247, %247
  ret void

251:                                              ; preds = %247
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @trap_LAN_GetServerCount(i32) #2

declare dso_local i32 @ArenaServers_SourceForLAN(...) #2

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i8*) #2

declare dso_local i32 @ArenaServers_MaxPing(...) #2

declare dso_local i32 @trap_LAN_GetPing(i32, i8*, i32, i32*) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @Info_SetValueForKey(i8*, i8*, i8*) #2

declare dso_local i32 @trap_LAN_GetPingInfo(i32, i8*, i32) #2

declare dso_local i32 @ArenaServers_Insert(i8*, i8*, i32) #2

declare dso_local i32 @trap_LAN_ClearPing(i32) #2

declare dso_local i32 @trap_LAN_GetPingQueueCount(...) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @trap_LAN_GetServerAddressString(i32, i64, i8*, i32) #2

declare dso_local i8* @va(i8*, i8*) #2

declare dso_local i32 @ArenaServers_StopRefresh(...) #2

declare dso_local i32 @ArenaServers_UpdateMenu(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
