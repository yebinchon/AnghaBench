; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_Console_Key.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_Console_Key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i8*, i8*, i32 }

@keys = common dso_local global %struct.TYPE_9__* null, align 8
@K_CTRL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"clear\0A\00", align 1
@K_ENTER = common dso_local global i32 0, align 4
@K_KP_ENTER = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@CA_ACTIVE = common dso_local global i64 0, align 8
@con_autochat = common dso_local global %struct.TYPE_11__* null, align 8
@g_consoleField = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@MAX_EDIT_LINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"\\%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"]%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"cmd say \00", align 1
@historyEditLines = common dso_local global %struct.TYPE_10__* null, align 8
@nextHistoryLine = common dso_local global i64 0, align 8
@COMMAND_HISTORY = common dso_local global i64 0, align 8
@historyLine = common dso_local global i64 0, align 8
@g_console_field_width = common dso_local global i8* null, align 8
@CA_DISCONNECTED = common dso_local global i64 0, align 8
@K_TAB = common dso_local global i32 0, align 4
@K_MWHEELUP = common dso_local global i32 0, align 4
@K_SHIFT = common dso_local global i64 0, align 8
@K_UPARROW = common dso_local global i32 0, align 4
@K_KP_UPARROW = common dso_local global i32 0, align 4
@K_MWHEELDOWN = common dso_local global i32 0, align 4
@K_DOWNARROW = common dso_local global i32 0, align 4
@K_KP_DOWNARROW = common dso_local global i32 0, align 4
@K_PGUP = common dso_local global i32 0, align 4
@K_PGDN = common dso_local global i32 0, align 4
@K_HOME = common dso_local global i32 0, align 4
@K_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Console_Key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 108
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** @keys, align 8
  %9 = load i64, i64* @K_CTRL, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %298

16:                                               ; preds = %7, %1
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @K_ENTER, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @K_KP_ENTER, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %121

24:                                               ; preds = %20, %16
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 0), align 8
  %26 = load i64, i64* @CA_ACTIVE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %24
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** @con_autochat, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %28
  %34 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_consoleField, i32 0, i32 0), align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %33
  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_consoleField, i32 0, i32 0), align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 92
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_consoleField, i32 0, i32 0), align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 47
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load i32, i32* @MAX_EDIT_LINE, align 4
  %53 = sub nsw i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %3, align 8
  %56 = alloca i8, i64 %54, align 16
  store i64 %54, i64* %4, align 8
  %57 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_consoleField, i32 0, i32 0), align 8
  %58 = trunc i64 %54 to i32
  %59 = call i32 @Q_strncpyz(i8* %56, i8* %57, i32 %58)
  %60 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_consoleField, i32 0, i32 0), align 8
  %61 = call i32 @Com_sprintf(i8* %60, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_consoleField, i32 0, i32 2), align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_consoleField, i32 0, i32 2), align 8
  %64 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %64)
  br label %65

65:                                               ; preds = %51, %45, %39, %33, %28, %24
  %66 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_consoleField, i32 0, i32 0), align 8
  %67 = call i32 @Com_Printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  %68 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_consoleField, i32 0, i32 0), align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 92
  br i1 %72, label %79, label %73

73:                                               ; preds = %65
  %74 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_consoleField, i32 0, i32 0), align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 47
  br i1 %78, label %79, label %84

79:                                               ; preds = %73, %65
  %80 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_consoleField, i32 0, i32 0), align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = call i32 @Cbuf_AddText(i8* %81)
  %83 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %102

84:                                               ; preds = %73
  %85 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_consoleField, i32 0, i32 0), align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  br label %298

90:                                               ; preds = %84
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** @con_autochat, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %90
  %98 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_consoleField, i32 0, i32 0), align 8
  %99 = call i32 @Cbuf_AddText(i8* %98)
  %100 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %101

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101, %79
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** @historyEditLines, align 8
  %104 = load i64, i64* @nextHistoryLine, align 8
  %105 = load i64, i64* @COMMAND_HISTORY, align 8
  %106 = urem i64 %104, %105
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 %106
  %108 = bitcast %struct.TYPE_10__* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 bitcast (%struct.TYPE_10__* @g_consoleField to i8*), i64 24, i1 false)
  %109 = load i64, i64* @nextHistoryLine, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* @nextHistoryLine, align 8
  %111 = load i64, i64* @nextHistoryLine, align 8
  store i64 %111, i64* @historyLine, align 8
  %112 = call i32 @Field_Clear(%struct.TYPE_10__* @g_consoleField)
  %113 = load i8*, i8** @g_console_field_width, align 8
  store i8* %113, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_consoleField, i32 0, i32 1), align 8
  %114 = call i32 (...) @CL_SaveConsoleHistory()
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 0), align 8
  %116 = load i64, i64* @CA_DISCONNECTED, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %102
  %119 = call i32 (...) @SCR_UpdateScreen()
  br label %120

120:                                              ; preds = %118, %102
  br label %298

121:                                              ; preds = %20
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* @K_TAB, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = call i32 @Field_AutoComplete(%struct.TYPE_10__* @g_consoleField)
  br label %298

127:                                              ; preds = %121
  %128 = load i32, i32* %2, align 4
  %129 = load i32, i32* @K_MWHEELUP, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** @keys, align 8
  %133 = load i64, i64* @K_SHIFT, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %158, label %138

138:                                              ; preds = %131, %127
  %139 = load i32, i32* %2, align 4
  %140 = load i32, i32* @K_UPARROW, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %158, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %2, align 4
  %144 = load i32, i32* @K_KP_UPARROW, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %158, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %2, align 4
  %148 = call signext i8 @tolower(i32 %147)
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 112
  br i1 %150, label %151, label %177

151:                                              ; preds = %146
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** @keys, align 8
  %153 = load i64, i64* @K_CTRL, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %177

158:                                              ; preds = %151, %142, %138, %131
  %159 = load i64, i64* @nextHistoryLine, align 8
  %160 = load i64, i64* @historyLine, align 8
  %161 = sub i64 %159, %160
  %162 = load i64, i64* @COMMAND_HISTORY, align 8
  %163 = icmp ult i64 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load i64, i64* @historyLine, align 8
  %166 = icmp ugt i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i64, i64* @historyLine, align 8
  %169 = add i64 %168, -1
  store i64 %169, i64* @historyLine, align 8
  br label %170

170:                                              ; preds = %167, %164, %158
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** @historyEditLines, align 8
  %172 = load i64, i64* @historyLine, align 8
  %173 = load i64, i64* @COMMAND_HISTORY, align 8
  %174 = urem i64 %172, %173
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i64 %174
  %176 = bitcast %struct.TYPE_10__* %175 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_10__* @g_consoleField to i8*), i8* align 8 %176, i64 24, i1 false)
  br label %298

177:                                              ; preds = %151, %146
  %178 = load i32, i32* %2, align 4
  %179 = load i32, i32* @K_MWHEELDOWN, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** @keys, align 8
  %183 = load i64, i64* @K_SHIFT, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %208, label %188

188:                                              ; preds = %181, %177
  %189 = load i32, i32* %2, align 4
  %190 = load i32, i32* @K_DOWNARROW, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %208, label %192

192:                                              ; preds = %188
  %193 = load i32, i32* %2, align 4
  %194 = load i32, i32* @K_KP_DOWNARROW, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %208, label %196

196:                                              ; preds = %192
  %197 = load i32, i32* %2, align 4
  %198 = call signext i8 @tolower(i32 %197)
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 110
  br i1 %200, label %201, label %225

201:                                              ; preds = %196
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** @keys, align 8
  %203 = load i64, i64* @K_CTRL, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %225

208:                                              ; preds = %201, %192, %188, %181
  %209 = load i64, i64* @historyLine, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* @historyLine, align 8
  %211 = load i64, i64* @historyLine, align 8
  %212 = load i64, i64* @nextHistoryLine, align 8
  %213 = icmp uge i64 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = load i64, i64* @nextHistoryLine, align 8
  store i64 %215, i64* @historyLine, align 8
  %216 = call i32 @Field_Clear(%struct.TYPE_10__* @g_consoleField)
  %217 = load i8*, i8** @g_console_field_width, align 8
  store i8* %217, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_consoleField, i32 0, i32 1), align 8
  br label %298

218:                                              ; preds = %208
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** @historyEditLines, align 8
  %220 = load i64, i64* @historyLine, align 8
  %221 = load i64, i64* @COMMAND_HISTORY, align 8
  %222 = urem i64 %220, %221
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i64 %222
  %224 = bitcast %struct.TYPE_10__* %223 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_10__* @g_consoleField to i8*), i8* align 8 %224, i64 24, i1 false)
  br label %298

225:                                              ; preds = %201, %196
  %226 = load i32, i32* %2, align 4
  %227 = load i32, i32* @K_PGUP, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %225
  %230 = call i32 (...) @Con_PageUp()
  br label %298

231:                                              ; preds = %225
  %232 = load i32, i32* %2, align 4
  %233 = load i32, i32* @K_PGDN, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %231
  %236 = call i32 (...) @Con_PageDown()
  br label %298

237:                                              ; preds = %231
  %238 = load i32, i32* %2, align 4
  %239 = load i32, i32* @K_MWHEELUP, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %253

241:                                              ; preds = %237
  %242 = call i32 (...) @Con_PageUp()
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** @keys, align 8
  %244 = load i64, i64* @K_CTRL, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %241
  %250 = call i32 (...) @Con_PageUp()
  %251 = call i32 (...) @Con_PageUp()
  br label %252

252:                                              ; preds = %249, %241
  br label %298

253:                                              ; preds = %237
  %254 = load i32, i32* %2, align 4
  %255 = load i32, i32* @K_MWHEELDOWN, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %269

257:                                              ; preds = %253
  %258 = call i32 (...) @Con_PageDown()
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** @keys, align 8
  %260 = load i64, i64* @K_CTRL, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %257
  %266 = call i32 (...) @Con_PageDown()
  %267 = call i32 (...) @Con_PageDown()
  br label %268

268:                                              ; preds = %265, %257
  br label %298

269:                                              ; preds = %253
  %270 = load i32, i32* %2, align 4
  %271 = load i32, i32* @K_HOME, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %282

273:                                              ; preds = %269
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** @keys, align 8
  %275 = load i64, i64* @K_CTRL, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %273
  %281 = call i32 (...) @Con_Top()
  br label %298

282:                                              ; preds = %273, %269
  %283 = load i32, i32* %2, align 4
  %284 = load i32, i32* @K_END, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %295

286:                                              ; preds = %282
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** @keys, align 8
  %288 = load i64, i64* @K_CTRL, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %286
  %294 = call i32 (...) @Con_Bottom()
  br label %298

295:                                              ; preds = %286, %282
  %296 = load i32, i32* %2, align 4
  %297 = call i32 @Field_KeyDownEvent(%struct.TYPE_10__* @g_consoleField, i32 %296)
  br label %298

298:                                              ; preds = %295, %293, %280, %268, %252, %235, %229, %218, %214, %170, %125, %120, %89, %14
  ret void
}

declare dso_local i32 @Cbuf_AddText(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Com_Printf(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @Field_Clear(%struct.TYPE_10__*) #1

declare dso_local i32 @CL_SaveConsoleHistory(...) #1

declare dso_local i32 @SCR_UpdateScreen(...) #1

declare dso_local i32 @Field_AutoComplete(%struct.TYPE_10__*) #1

declare dso_local signext i8 @tolower(i32) #1

declare dso_local i32 @Con_PageUp(...) #1

declare dso_local i32 @Con_PageDown(...) #1

declare dso_local i32 @Con_Top(...) #1

declare dso_local i32 @Con_Bottom(...) #1

declare dso_local i32 @Field_KeyDownEvent(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
