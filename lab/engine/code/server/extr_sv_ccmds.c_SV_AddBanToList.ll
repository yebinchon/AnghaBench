; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_AddBanToList.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_AddBanToList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__ }

@NET_ADDRSTRMAXLEN = common dso_local global i32 0, align 4
@com_sv_running = common dso_local global %struct.TYPE_17__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Server is not running.\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Usage: %s (ip[/subnet] | clientnum [subnet])\0A\00", align 1
@serverBansCount = common dso_local global i32 0, align 4
@serverBans = common dso_local global %struct.TYPE_14__* null, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"Error: Maximum number of bans/exceptions exceeded.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Error: Invalid address %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Error: Playernum %s does not exist.\0A\00", align 1
@NA_IP = common dso_local global i64 0, align 8
@NA_IP6 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [57 x i8] c"Error: Can ban players connected via the internet only.\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Error: %s %s/%d supersedes %s %s/%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Exception\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Ban\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"exception\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ban\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"Error: %s %s/%d supersedes already existing %s %s/%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Added %s: %s/%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"ban exception\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @SV_AddBanToList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_AddBanToList(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  store i64 %0, i64* %2, align 8
  %13 = load i32, i32* @NET_ADDRSTRMAXLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** @com_sv_running, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %305

23:                                               ; preds = %1
  %24 = call i32 (...) @Cmd_Argc()
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 3
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %23
  %31 = call i8* @Cmd_Argv(i32 0)
  %32 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  store i32 1, i32* %11, align 4
  br label %305

33:                                               ; preds = %27
  %34 = load i32, i32* @serverBansCount, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** @serverBans, align 8
  %36 = call i32 @ARRAY_LEN(%struct.TYPE_14__* %35)
  %37 = icmp sge i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %305

40:                                               ; preds = %33
  %41 = call i8* @Cmd_Argv(i32 1)
  store i8* %41, i8** %3, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = call i64 @strchr(i8* %42, i8 signext 46)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @strchr(i8* %46, i8 signext 58)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45, %40
  %50 = load i8*, i8** %3, align 8
  %51 = call i64 @SV_ParseCIDRNotation(%struct.TYPE_15__* %6, i32* %9, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  store i32 1, i32* %11, align 4
  br label %305

56:                                               ; preds = %49
  br label %104

57:                                               ; preds = %45
  %58 = call %struct.TYPE_16__* (...) @SV_GetPlayerByNum()
  store %struct.TYPE_16__* %58, %struct.TYPE_16__** %12, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %60 = icmp ne %struct.TYPE_16__* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = call i8* @Cmd_Argv(i32 1)
  %63 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  store i32 1, i32* %11, align 4
  br label %305

64:                                               ; preds = %57
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = bitcast %struct.TYPE_15__* %6 to i8*
  %69 = bitcast %struct.TYPE_15__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 8, i1 false)
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %72, label %96

72:                                               ; preds = %64
  %73 = call i8* @Cmd_Argv(i32 2)
  %74 = call i32 @atoi(i8* %73)
  store i32 %74, i32* %9, align 4
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @NA_IP, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = icmp sgt i32 %83, 32
  br i1 %84, label %85, label %86

85:                                               ; preds = %82, %79
  store i32 32, i32* %9, align 4
  br label %86

86:                                               ; preds = %85, %82
  br label %95

87:                                               ; preds = %72
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %9, align 4
  %92 = icmp sgt i32 %91, 128
  br i1 %92, label %93, label %94

93:                                               ; preds = %90, %87
  store i32 128, i32* %9, align 4
  br label %94

94:                                               ; preds = %93, %90
  br label %95

95:                                               ; preds = %94, %86
  br label %103

96:                                               ; preds = %64
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @NA_IP6, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 128, i32 32
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %96, %95
  br label %104

104:                                              ; preds = %103, %56
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @NA_IP, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @NA_IP6, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %305

116:                                              ; preds = %109, %104
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %230, %116
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @serverBansCount, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %233

121:                                              ; preds = %117
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** @serverBans, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i64 %124
  store %struct.TYPE_14__* %125, %struct.TYPE_14__** %10, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %131, label %178

131:                                              ; preds = %121
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %131
  %137 = load i64, i64* %2, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %177, label %139

139:                                              ; preds = %136, %131
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i64 @NET_CompareBaseAdrMask(i64 %146, i64 %148, i32 %144)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %177

151:                                              ; preds = %139
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @NET_AdrToString(i64 %153)
  %155 = trunc i64 %14 to i32
  %156 = call i32 @Q_strncpyz(i8* %16, i32 %154, i32 %155)
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @NET_AdrToString(i64 %166)
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i64, i64* %2, align 8
  %172 = icmp ne i64 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %175 = load i32, i32* %9, align 4
  %176 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %162, i32 %167, i32 %170, i8* %174, i8* %16, i32 %175)
  store i32 1, i32* %11, align 4
  br label %305

177:                                              ; preds = %139, %136
  br label %178

178:                                              ; preds = %177, %121
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %229

184:                                              ; preds = %178
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %228, label %189

189:                                              ; preds = %184
  %190 = load i64, i64* %2, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %228

192:                                              ; preds = %189
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 2
  %195 = load i32, i32* %9, align 4
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call i64 @NET_CompareBaseAdrMask(i64 %197, i64 %199, i32 %195)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %228

202:                                              ; preds = %192
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @NET_AdrToString(i64 %206)
  %208 = trunc i64 %14 to i32
  %209 = call i32 @Q_strncpyz(i8* %16, i32 %207, i32 %208)
  %210 = load i64, i64* %2, align 8
  %211 = icmp ne i64 %210, 0
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @NET_AdrToString(i64 %215)
  %217 = load i32, i32* %9, align 4
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i8* %213, i32 %216, i32 %217, i8* %223, i8* %16, i32 %226)
  store i32 1, i32* %11, align 4
  br label %305

228:                                              ; preds = %192, %189, %184
  br label %229

229:                                              ; preds = %228, %178
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %7, align 4
  br label %117

233:                                              ; preds = %117
  store i32 0, i32* %7, align 4
  br label %234

234:                                              ; preds = %272, %233
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* @serverBansCount, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %273

238:                                              ; preds = %234
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** @serverBans, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i64 %241
  store %struct.TYPE_14__* %242, %struct.TYPE_14__** %10, align 8
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %9, align 4
  %247 = icmp sgt i32 %245, %246
  br i1 %247, label %248, label %269

248:                                              ; preds = %238
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %248
  %254 = load i64, i64* %2, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %253, %248
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 2
  %259 = load i32, i32* %9, align 4
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = call i64 @NET_CompareBaseAdrMask(i64 %261, i64 %263, i32 %259)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %256
  %267 = load i32, i32* %7, align 4
  %268 = call i32 @SV_DelBanEntryFromList(i32 %267)
  br label %272

269:                                              ; preds = %256, %253, %238
  %270 = load i32, i32* %7, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %7, align 4
  br label %272

272:                                              ; preds = %269, %266
  br label %234

273:                                              ; preds = %234
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** @serverBans, align 8
  %275 = load i32, i32* @serverBansCount, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 2
  %279 = bitcast %struct.TYPE_15__* %278 to i8*
  %280 = bitcast %struct.TYPE_15__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %279, i8* align 8 %280, i64 8, i1 false)
  %281 = load i32, i32* %9, align 4
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** @serverBans, align 8
  %283 = load i32, i32* @serverBansCount, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 0
  store i32 %281, i32* %286, align 8
  %287 = load i64, i64* %2, align 8
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** @serverBans, align 8
  %289 = load i32, i32* @serverBansCount, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 1
  store i64 %287, i64* %292, align 8
  %293 = load i32, i32* @serverBansCount, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* @serverBansCount, align 4
  %295 = call i32 (...) @SV_WriteBans()
  %296 = load i64, i64* %2, align 8
  %297 = icmp ne i64 %296, 0
  %298 = zext i1 %297 to i64
  %299 = select i1 %297, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = call i32 @NET_AdrToString(i64 %301)
  %303 = load i32, i32* %9, align 4
  %304 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %299, i32 %302, i32 %303)
  store i32 0, i32* %11, align 4
  br label %305

305:                                              ; preds = %273, %202, %151, %114, %61, %53, %38, %30, %21
  %306 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %306)
  %307 = load i32, i32* %11, align 4
  switch i32 %307, label %309 [
    i32 0, label %308
    i32 1, label %308
  ]

308:                                              ; preds = %305, %305
  ret void

309:                                              ; preds = %305
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Printf(i8*, ...) #2

declare dso_local i32 @Cmd_Argc(...) #2

declare dso_local i8* @Cmd_Argv(i32) #2

declare dso_local i32 @ARRAY_LEN(%struct.TYPE_14__*) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i64 @SV_ParseCIDRNotation(%struct.TYPE_15__*, i32*, i8*) #2

declare dso_local %struct.TYPE_16__* @SV_GetPlayerByNum(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @atoi(i8*) #2

declare dso_local i64 @NET_CompareBaseAdrMask(i64, i64, i32) #2

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i32 @NET_AdrToString(i64) #2

declare dso_local i32 @SV_DelBanEntryFromList(i32) #2

declare dso_local i32 @SV_WriteBans(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
