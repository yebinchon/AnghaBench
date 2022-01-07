; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_chan.c_Netchan_Process.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_chan.c_Netchan_Process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64 }

@FRAGMENT_BIT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@NS_SERVER = common dso_local global i64 0, align 8
@showpackets = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"%s recv %4i : s=%i fragment=%i,%i\0A\00", align 1
@netsrcString = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"%s recv %4i : s=%i\0A\00", align 1
@showdrop = common dso_local global %struct.TYPE_13__* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"%s:Out of order packet %i at %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s:Dropped %i packets at %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%s:Dropped a message fragment\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s:illegal fragment length\0A\00", align 1
@FRAGMENT_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"%s:fragmentLength %i > msg->maxsize\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Netchan_Process(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = call i32 @MSG_BeginReadingOOB(%struct.TYPE_11__* %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = call i32 @MSG_ReadLong(%struct.TYPE_11__* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @FRAGMENT_BIT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @FRAGMENT_BIT, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i64, i64* @qtrue, align 8
  store i64 %24, i64* %9, align 8
  br label %27

25:                                               ; preds = %2
  %26 = load i64, i64* @qfalse, align 8
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %25, %19
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NS_SERVER, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = call i32 @MSG_ReadShort(%struct.TYPE_11__* %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = call i32 @MSG_ReadLong(%struct.TYPE_11__* %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @NETCHAN_GENCHECKSUM(i32 %41, i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i64, i64* @qfalse, align 8
  store i64 %47, i64* %3, align 8
  br label %318

48:                                               ; preds = %36
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = call i32 @MSG_ReadShort(%struct.TYPE_11__* %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = call i32 @MSG_ReadShort(%struct.TYPE_11__* %54)
  store i32 %55, i32* %8, align 4
  br label %57

56:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %51
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** @showpackets, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %92

62:                                               ; preds = %57
  %63 = load i64, i64* %9, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load i32*, i32** @netsrcString, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74, i32 %75, i32 %76, i32 %77)
  br label %91

79:                                               ; preds = %62
  %80 = load i32*, i32** @netsrcString, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %79, %65
  br label %92

92:                                               ; preds = %91, %57
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp sle i32 %93, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %92
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** @showdrop, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** @showpackets, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %103, %98
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @NET_AdrToString(i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %108, %103
  %119 = load i64, i64* @qfalse, align 8
  store i64 %119, i64* %3, align 8
  br label %318

120:                                              ; preds = %92
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  %126 = sub nsw i32 %121, %125
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %120
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** @showdrop, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** @showpackets, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %138, %133
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @NET_AdrToString(i32 %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %147, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %143, %138
  br label %154

154:                                              ; preds = %153, %120
  %155 = load i64, i64* %9, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %313

157:                                              ; preds = %154
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %158, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 4
  store i32 0, i32* %168, align 4
  br label %169

169:                                              ; preds = %163, %157
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %170, %173
  br i1 %174, label %175, label %193

175:                                              ; preds = %169
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** @showdrop, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** @showpackets, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180, %175
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @NET_AdrToString(i32 %188)
  %190 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %189)
  br label %191

191:                                              ; preds = %185, %180
  %192 = load i64, i64* @qfalse, align 8
  store i64 %192, i64* %3, align 8
  br label %318

193:                                              ; preds = %169
  %194 = load i32, i32* %8, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %214, label %196

196:                                              ; preds = %193
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %199, %200
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp sgt i32 %201, %204
  br i1 %205, label %214, label %206

206:                                              ; preds = %196
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %209, %210
  %212 = sext i32 %211 to i64
  %213 = icmp ugt i64 %212, 8
  br i1 %213, label %214, label %232

214:                                              ; preds = %206, %196, %193
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** @showdrop, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %214
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** @showpackets, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %219, %214
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @NET_AdrToString(i32 %227)
  %229 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %228)
  br label %230

230:                                              ; preds = %224, %219
  %231 = load i64, i64* @qfalse, align 8
  store i64 %231, i64* %3, align 8
  br label %318

232:                                              ; preds = %206
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 5
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %235, %239
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 4
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %243, %247
  %249 = load i32, i32* %8, align 4
  %250 = call i32 @Com_Memcpy(i64 %240, i64 %248, i32 %249)
  %251 = load i32, i32* %8, align 4
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, %251
  store i32 %255, i32* %253, align 4
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* @FRAGMENT_SIZE, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %232
  %260 = load i64, i64* @qfalse, align 8
  store i64 %260, i64* %3, align 8
  br label %318

261:                                              ; preds = %232
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = icmp sgt i32 %264, %267
  br i1 %268, label %269, label %279

269:                                              ; preds = %261
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @NET_AdrToString(i32 %272)
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 4
  %277 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %273, i32 %276)
  %278 = load i64, i64* @qfalse, align 8
  store i64 %278, i64* %3, align 8
  br label %318

279:                                              ; preds = %261
  %280 = load i32, i32* %6, align 4
  %281 = call i32 @LittleLong(i32 %280)
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 4
  %284 = load i64, i64* %283, align 8
  %285 = inttoptr i64 %284 to i32*
  store i32 %281, i32* %285, align 4
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 4
  %288 = load i64, i64* %287, align 8
  %289 = add nsw i64 %288, 4
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 5
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @Com_Memcpy(i64 %289, i64 %292, i32 %295)
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, 4
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 0
  store i32 %300, i32* %302, align 8
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 4
  store i32 0, i32* %304, align 4
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 1
  store i32 4, i32* %306, align 4
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 3
  store i32 32, i32* %308, align 4
  %309 = load i32, i32* %6, align 4
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 8
  %312 = load i64, i64* @qtrue, align 8
  store i64 %312, i64* %3, align 8
  br label %318

313:                                              ; preds = %154
  %314 = load i32, i32* %6, align 4
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 1
  store i32 %314, i32* %316, align 8
  %317 = load i64, i64* @qtrue, align 8
  store i64 %317, i64* %3, align 8
  br label %318

318:                                              ; preds = %313, %279, %269, %259, %230, %191, %118, %46
  %319 = load i64, i64* %3, align 8
  ret i64 %319
}

declare dso_local i32 @MSG_BeginReadingOOB(%struct.TYPE_11__*) #1

declare dso_local i32 @MSG_ReadLong(%struct.TYPE_11__*) #1

declare dso_local i32 @MSG_ReadShort(%struct.TYPE_11__*) #1

declare dso_local i32 @NETCHAN_GENCHECKSUM(i32, i32) #1

declare dso_local i32 @Com_Printf(i8*, i32, ...) #1

declare dso_local i32 @NET_AdrToString(i32) #1

declare dso_local i32 @Com_Memcpy(i64, i64, i32) #1

declare dso_local i32 @LittleLong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
