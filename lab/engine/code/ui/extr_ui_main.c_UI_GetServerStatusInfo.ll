; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_GetServerStatusInfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_GetServerStatusInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i64, i8***, i8* }

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Address\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MAX_SERVERSTATUS_LINES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"score\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_5__*)* @UI_GetServerStatusInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_GetServerStatusInfo(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = call i32 @memset(%struct.TYPE_5__* %15, i32 0, i32 40)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @qfalse, align 4
  store i32 %26, i32* %3, align 4
  br label %403

27:                                               ; preds = %20, %17
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @trap_LAN_ServerStatus(i8* %31, i8* null, i32 0)
  %33 = load i32, i32* @qfalse, align 4
  store i32 %33, i32* %3, align 4
  br label %403

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @trap_LAN_ServerStatus(i8* %35, i8* %38, i32 8)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %401

41:                                               ; preds = %34
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @Q_strncpyz(i8* %44, i8* %45, i32 8)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %6, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load i8***, i8**** %53, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i8**, i8*** %54, i64 %57
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %60, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = load i8***, i8**** %62, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i8**, i8*** %63, i64 %66
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %69, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  %72 = load i8***, i8**** %71, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i8**, i8*** %72, i64 %75
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %78, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load i8***, i8**** %83, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i8**, i8*** %84, i64 %87
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 3
  store i8* %81, i8** %90, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %92, align 8
  br label %95

95:                                               ; preds = %177, %41
  %96 = load i8*, i8** %6, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br label %103

103:                                              ; preds = %98, %95
  %104 = phi i1 [ false, %95 ], [ %102, %98 ]
  br i1 %104, label %105, label %178

105:                                              ; preds = %103
  %106 = load i8*, i8** %6, align 8
  %107 = call i8* @strchr(i8* %106, i8 signext 92)
  store i8* %107, i8** %6, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  br label %178

111:                                              ; preds = %105
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %6, align 8
  store i8 0, i8* %112, align 1
  %114 = load i8*, i8** %6, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 92
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %178

119:                                              ; preds = %111
  %120 = load i8*, i8** %6, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  %123 = load i8***, i8**** %122, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i8**, i8*** %123, i64 %126
  %128 = load i8**, i8*** %127, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 0
  store i8* %120, i8** %129, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  %132 = load i8***, i8**** %131, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i8**, i8*** %132, i64 %135
  %137 = load i8**, i8*** %136, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %138, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  %141 = load i8***, i8**** %140, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i8**, i8*** %141, i64 %144
  %146 = load i8**, i8*** %145, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %147, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = call i8* @strchr(i8* %148, i8 signext 92)
  store i8* %149, i8** %6, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %119
  br label %178

153:                                              ; preds = %119
  %154 = load i8*, i8** %6, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %6, align 8
  store i8 0, i8* %154, align 1
  %156 = load i8*, i8** %6, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 3
  %159 = load i8***, i8**** %158, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds i8**, i8*** %159, i64 %162
  %164 = load i8**, i8*** %163, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 3
  store i8* %156, i8** %165, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %167, align 8
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* @MAX_SERVERSTATUS_LINES, align 4
  %174 = sext i32 %173 to i64
  %175 = icmp uge i64 %172, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %153
  br label %178

177:                                              ; preds = %153
  br label %95

178:                                              ; preds = %176, %152, %118, %110, %103
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* @MAX_SERVERSTATUS_LINES, align 4
  %183 = sub nsw i32 %182, 3
  %184 = sext i32 %183 to i64
  %185 = icmp ult i64 %181, %184
  br i1 %185, label %186, label %397

186:                                              ; preds = %178
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 3
  %189 = load i8***, i8**** %188, align 8
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds i8**, i8*** %189, i64 %192
  %194 = load i8**, i8*** %193, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %195, align 8
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 3
  %198 = load i8***, i8**** %197, align 8
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds i8**, i8*** %198, i64 %201
  %203 = load i8**, i8*** %202, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %204, align 8
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 3
  %207 = load i8***, i8**** %206, align 8
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds i8**, i8*** %207, i64 %210
  %212 = load i8**, i8*** %211, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %213, align 8
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 3
  %216 = load i8***, i8**** %215, align 8
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds i8**, i8*** %216, i64 %219
  %221 = load i8**, i8*** %220, align 8
  %222 = getelementptr inbounds i8*, i8** %221, i64 3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %222, align 8
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %224, align 8
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 3
  %229 = load i8***, i8**** %228, align 8
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds i8**, i8*** %229, i64 %232
  %234 = load i8**, i8*** %233, align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %235, align 8
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 3
  %238 = load i8***, i8**** %237, align 8
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds i8**, i8*** %238, i64 %241
  %243 = load i8**, i8*** %242, align 8
  %244 = getelementptr inbounds i8*, i8** %243, i64 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %244, align 8
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 3
  %247 = load i8***, i8**** %246, align 8
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds i8**, i8*** %247, i64 %250
  %252 = load i8**, i8*** %251, align 8
  %253 = getelementptr inbounds i8*, i8** %252, i64 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %253, align 8
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 3
  %256 = load i8***, i8**** %255, align 8
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds i8**, i8*** %256, i64 %259
  %261 = load i8**, i8*** %260, align 8
  %262 = getelementptr inbounds i8*, i8** %261, i64 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %262, align 8
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %264, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %267

267:                                              ; preds = %391, %186
  %268 = load i8*, i8** %6, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %270, label %275

270:                                              ; preds = %267
  %271 = load i8*, i8** %6, align 8
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp ne i32 %273, 0
  br label %275

275:                                              ; preds = %270, %267
  %276 = phi i1 [ false, %267 ], [ %274, %270 ]
  br i1 %276, label %277, label %396

277:                                              ; preds = %275
  %278 = load i8*, i8** %6, align 8
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp eq i32 %280, 92
  br i1 %281, label %282, label %285

282:                                              ; preds = %277
  %283 = load i8*, i8** %6, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %6, align 8
  store i8 0, i8* %283, align 1
  br label %285

285:                                              ; preds = %282, %277
  %286 = load i8*, i8** %6, align 8
  store i8* %286, i8** %7, align 8
  %287 = load i8*, i8** %6, align 8
  %288 = call i8* @strchr(i8* %287, i8 signext 32)
  store i8* %288, i8** %6, align 8
  %289 = load i8*, i8** %6, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %292, label %291

291:                                              ; preds = %285
  br label %396

292:                                              ; preds = %285
  %293 = load i8*, i8** %6, align 8
  %294 = getelementptr inbounds i8, i8* %293, i32 1
  store i8* %294, i8** %6, align 8
  store i8 0, i8* %293, align 1
  %295 = load i8*, i8** %6, align 8
  store i8* %295, i8** %8, align 8
  %296 = load i8*, i8** %6, align 8
  %297 = call i8* @strchr(i8* %296, i8 signext 32)
  store i8* %297, i8** %6, align 8
  %298 = load i8*, i8** %6, align 8
  %299 = icmp ne i8* %298, null
  br i1 %299, label %301, label %300

300:                                              ; preds = %292
  br label %396

301:                                              ; preds = %292
  %302 = load i8*, i8** %6, align 8
  %303 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %303, i8** %6, align 8
  store i8 0, i8* %302, align 1
  %304 = load i8*, i8** %6, align 8
  store i8* %304, i8** %9, align 8
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 4
  %307 = load i8*, i8** %306, align 8
  %308 = load i32, i32* %11, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %307, i64 %309
  %311 = load i32, i32* %11, align 4
  %312 = sext i32 %311 to i64
  %313 = sub i64 8, %312
  %314 = trunc i64 %313 to i32
  %315 = load i32, i32* %10, align 4
  %316 = call i32 @Com_sprintf(i8* %310, i32 %314, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %315)
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 4
  %319 = load i8*, i8** %318, align 8
  %320 = load i32, i32* %11, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, i8* %319, i64 %321
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 3
  %325 = load i8***, i8**** %324, align 8
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = getelementptr inbounds i8**, i8*** %325, i64 %328
  %330 = load i8**, i8*** %329, align 8
  %331 = getelementptr inbounds i8*, i8** %330, i64 0
  store i8* %322, i8** %331, align 8
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 4
  %334 = load i8*, i8** %333, align 8
  %335 = load i32, i32* %11, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, i8* %334, i64 %336
  %338 = call i64 @strlen(i8* %337)
  %339 = add nsw i64 %338, 1
  %340 = load i32, i32* %11, align 4
  %341 = sext i32 %340 to i64
  %342 = add nsw i64 %341, %339
  %343 = trunc i64 %342 to i32
  store i32 %343, i32* %11, align 4
  %344 = load i8*, i8** %7, align 8
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 3
  %347 = load i8***, i8**** %346, align 8
  %348 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = getelementptr inbounds i8**, i8*** %347, i64 %350
  %352 = load i8**, i8*** %351, align 8
  %353 = getelementptr inbounds i8*, i8** %352, i64 1
  store i8* %344, i8** %353, align 8
  %354 = load i8*, i8** %8, align 8
  %355 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 3
  %357 = load i8***, i8**** %356, align 8
  %358 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = getelementptr inbounds i8**, i8*** %357, i64 %360
  %362 = load i8**, i8*** %361, align 8
  %363 = getelementptr inbounds i8*, i8** %362, i64 2
  store i8* %354, i8** %363, align 8
  %364 = load i8*, i8** %9, align 8
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 3
  %367 = load i8***, i8**** %366, align 8
  %368 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 2
  %370 = load i64, i64* %369, align 8
  %371 = getelementptr inbounds i8**, i8*** %367, i64 %370
  %372 = load i8**, i8*** %371, align 8
  %373 = getelementptr inbounds i8*, i8** %372, i64 3
  store i8* %364, i8** %373, align 8
  %374 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %374, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = add i64 %376, 1
  store i64 %377, i64* %375, align 8
  %378 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = load i32, i32* @MAX_SERVERSTATUS_LINES, align 4
  %382 = sext i32 %381 to i64
  %383 = icmp uge i64 %380, %382
  br i1 %383, label %384, label %385

384:                                              ; preds = %301
  br label %396

385:                                              ; preds = %301
  %386 = load i8*, i8** %6, align 8
  %387 = call i8* @strchr(i8* %386, i8 signext 92)
  store i8* %387, i8** %6, align 8
  %388 = load i8*, i8** %6, align 8
  %389 = icmp ne i8* %388, null
  br i1 %389, label %391, label %390

390:                                              ; preds = %385
  br label %396

391:                                              ; preds = %385
  %392 = load i8*, i8** %6, align 8
  %393 = getelementptr inbounds i8, i8* %392, i32 1
  store i8* %393, i8** %6, align 8
  store i8 0, i8* %392, align 1
  %394 = load i32, i32* %10, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %10, align 4
  br label %267

396:                                              ; preds = %390, %384, %300, %291, %275
  br label %397

397:                                              ; preds = %396, %178
  %398 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %399 = call i32 @UI_SortServerStatusInfo(%struct.TYPE_5__* %398)
  %400 = load i32, i32* @qtrue, align 4
  store i32 %400, i32* %3, align 4
  br label %403

401:                                              ; preds = %34
  %402 = load i32, i32* @qfalse, align 4
  store i32 %402, i32* %3, align 4
  br label %403

403:                                              ; preds = %401, %397, %30, %25
  %404 = load i32, i32* %3, align 4
  ret i32 %404
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @trap_LAN_ServerStatus(i8*, i8*, i32) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @UI_SortServerStatusInfo(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
