; ModuleID = '/home/carl/AnghaBench/lab/python/extr_dmlab_module.c_Lab_init.c'
source_filename = "/home/carl/AnghaBench/lab/python/extr_dmlab_module.c_Lab_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32, %struct.TYPE_11__*, i64, i32, i32* }
%struct.TYPE_11__ = type { i64 (i32, i8*, i8*)*, i8* (i32)*, i64 (i32)*, i32 (i32)*, i8* (i32, i32)* }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32*, i32* }
%struct.TYPE_10__ = type { i32 }

@Lab_init.kwlist = internal global [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"observations\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"renderer\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"level_cache\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"temp_folder\00", align 1
@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"RL API not setup\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"sO!|O!sOs\00", align 1
@PyList_Type = common dso_local global i32 0, align 4
@PyDict_Type = common dso_local global i32 0, align 4
@DeepMindLabRenderer_Software = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"hardware\00", align 1
@DeepMindLabRenderer_Hardware = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"software\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"Failed to set renderer must be \22hardware\22 or \22software\22 actual \22%s\22!\00", align 1
@Py_None = common dso_local global i32* null, align 8
@fetch_level_from_cache = common dso_local global i32 0, align 4
@write_level_to_cache = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"Failed to connect RL API\00", align 1
@ENV_STATUS_UNINITIALIZED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"levelName\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Invalid levelName flag '%s' - \22%s\22\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"60\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Failed to set fps - \22%s\22\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"Failed to apply setting '%s = %s' - \22%s\22\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Failed to init environment - \22%s\22\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [26 x i8] c"Unknown observation '%s'.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @Lab_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Lab_init(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = bitcast i32* %26 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %8, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = icmp eq %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @PyExc_RuntimeError, align 4
  %34 = call i32 @PyErr_SetString(i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %321

35:                                               ; preds = %3
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @PyArg_ParseTupleAndKeywords(i32* %36, i32* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @Lab_init.kwlist, i64 0, i64 0), i8** %9, i32* @PyList_Type, i32** %12, i32* @PyDict_Type, i32** %13, i8** %10, i32** %14, i8** %11)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %321

41:                                               ; preds = %35
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @PyList_Size(i32* %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32* @calloc(i32 %48, i32 4)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = call i32 (...) @PyErr_NoMemory()
  store i32 -1, i32* %4, align 4
  br label %321

58:                                               ; preds = %41
  store i32* null, i32** %15, align 8
  %59 = bitcast %struct.TYPE_9__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %59, i8 0, i64 40, i1 false)
  %60 = load i32*, i32** %15, align 8
  %61 = call %struct.TYPE_10__* @get_module_state(i32* %60)
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 3
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @DeepMindLabRenderer_Software, align 4
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %92

69:                                               ; preds = %58
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %69
  %76 = load i8*, i8** %10, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @DeepMindLabRenderer_Hardware, align 4
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  store i32 %80, i32* %81, align 8
  br label %91

82:                                               ; preds = %75
  %83 = load i8*, i8** %10, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* @PyExc_RuntimeError, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 (i32, i8*, i8*, ...) @PyErr_Format(i32 %87, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.10, i64 0, i64 0), i8* %88)
  store i32 -1, i32* %4, align 4
  br label %321

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %79
  br label %92

92:                                               ; preds = %91, %69, %58
  %93 = load i32*, i32** %14, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %92
  %96 = load i32*, i32** %14, align 8
  %97 = load i32*, i32** @Py_None, align 8
  %98 = icmp ne i32* %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = load i32*, i32** %14, align 8
  %101 = call i32 @Py_INCREF(i32* %100)
  %102 = load i32*, i32** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  store i32* %102, i32** %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i32* @fetch_level_from_cache, i32** %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i32* @write_level_to_cache, i32** %108, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 6
  store i32* %109, i32** %111, align 8
  br label %112

112:                                              ; preds = %99, %95, %92
  %113 = load i8*, i8** %11, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i8*, i8** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i8* %116, i8** %117, align 8
  br label %118

118:                                              ; preds = %115, %112
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = call i64 @dmlab_connect(%struct.TYPE_9__* %16, %struct.TYPE_11__* %121, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load i32, i32* @PyExc_RuntimeError, align 4
  %128 = call i32 @PyErr_SetString(i32 %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %321

129:                                              ; preds = %118
  %130 = load i32, i32* @ENV_STATUS_UNINITIALIZED, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 4
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i64 (i32, i8*, i8*)*, i64 (i32, i8*, i8*)** %138, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = call i64 %139(i32 %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %129
  %147 = load i32, i32* @PyExc_RuntimeError, align 4
  %148 = load i8*, i8** %9, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load i8* (i32)*, i8* (i32)** %152, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i8* %153(i32 %156)
  %158 = call i32 (i32, i8*, i8*, ...) @PyErr_Format(i32 %147, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i8* %148, i8* %157)
  store i32 -1, i32* %4, align 4
  br label %321

159:                                              ; preds = %129
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i64 (i32, i8*, i8*)*, i64 (i32, i8*, i8*)** %163, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i64 %164(i32 %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %159
  %171 = load i32, i32* @PyExc_RuntimeError, align 4
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = load i8* (i32)*, i8* (i32)** %175, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i8* %176(i32 %179)
  %181 = call i32 (i32, i8*, i8*, ...) @PyErr_Format(i32 %171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8* %180)
  store i32 -1, i32* %4, align 4
  br label %321

182:                                              ; preds = %159
  %183 = load i32*, i32** %13, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %230

185:                                              ; preds = %182
  store i32 0, i32* %19, align 4
  br label %186

186:                                              ; preds = %228, %185
  %187 = load i32*, i32** %13, align 8
  %188 = call i64 @PyDict_Next(i32* %187, i32* %19, i32** %17, i32** %18)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %229

190:                                              ; preds = %186
  %191 = load i32*, i32** %17, align 8
  %192 = call i8* @PyString_AsString(i32* %191)
  store i8* %192, i8** %20, align 8
  %193 = load i32*, i32** %18, align 8
  %194 = call i8* @PyString_AsString(i32* %193)
  store i8* %194, i8** %21, align 8
  %195 = load i8*, i8** %20, align 8
  %196 = icmp eq i8* %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %190
  %198 = load i8*, i8** %21, align 8
  %199 = icmp eq i8* %198, null
  br i1 %199, label %200, label %201

200:                                              ; preds = %197, %190
  store i32 -1, i32* %4, align 4
  br label %321

201:                                              ; preds = %197
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 3
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i64 (i32, i8*, i8*)*, i64 (i32, i8*, i8*)** %205, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i8*, i8** %20, align 8
  %211 = load i8*, i8** %21, align 8
  %212 = call i64 %206(i32 %209, i8* %210, i8* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %228

214:                                              ; preds = %201
  %215 = load i32, i32* @PyExc_RuntimeError, align 4
  %216 = load i8*, i8** %20, align 8
  %217 = load i8*, i8** %21, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 3
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  %222 = load i8* (i32)*, i8* (i32)** %221, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i8* %222(i32 %225)
  %227 = call i32 (i32, i8*, i8*, ...) @PyErr_Format(i32 %215, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* %216, i8* %217, i8* %226)
  store i32 -1, i32* %4, align 4
  br label %321

228:                                              ; preds = %201
  br label %186

229:                                              ; preds = %186
  br label %230

230:                                              ; preds = %229, %182
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 3
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 2
  %235 = load i64 (i32)*, i64 (i32)** %234, align 8
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i64 %235(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %253

241:                                              ; preds = %230
  %242 = load i32, i32* @PyExc_RuntimeError, align 4
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 3
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 1
  %247 = load i8* (i32)*, i8* (i32)** %246, align 8
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = call i8* %247(i32 %250)
  %252 = call i32 (i32, i8*, i8*, ...) @PyErr_Format(i32 %242, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i8* %251)
  store i32 -1, i32* %4, align 4
  br label %321

253:                                              ; preds = %230
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 3
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 3
  %258 = load i32 (i32)*, i32 (i32)** %257, align 8
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = call i32 %258(i32 %261)
  store i32 %262, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %263

263:                                              ; preds = %317, %253
  %264 = load i32, i32* %24, align 4
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp slt i32 %264, %267
  br i1 %268, label %269, label %320

269:                                              ; preds = %263
  %270 = load i32*, i32** %12, align 8
  %271 = load i32, i32* %24, align 4
  %272 = call i32* @PyList_GetItem(i32* %270, i32 %271)
  %273 = call i8* @PyString_AsString(i32* %272)
  store i8* %273, i8** %22, align 8
  %274 = load i8*, i8** %22, align 8
  %275 = icmp eq i8* %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %269
  store i32 -1, i32* %4, align 4
  br label %321

277:                                              ; preds = %269
  store i32 0, i32* %25, align 4
  br label %278

278:                                              ; preds = %305, %277
  %279 = load i32, i32* %25, align 4
  %280 = load i32, i32* %23, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %308

282:                                              ; preds = %278
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 3
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 4
  %287 = load i8* (i32, i32)*, i8* (i32, i32)** %286, align 8
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* %25, align 4
  %292 = call i8* %287(i32 %290, i32 %291)
  %293 = load i8*, i8** %22, align 8
  %294 = call i64 @strcmp(i8* %292, i8* %293)
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %296, label %304

296:                                              ; preds = %282
  %297 = load i32, i32* %25, align 4
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %24, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  store i32 %297, i32* %303, align 4
  br label %308

304:                                              ; preds = %282
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %25, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %25, align 4
  br label %278

308:                                              ; preds = %296, %278
  %309 = load i32, i32* %25, align 4
  %310 = load i32, i32* %23, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %316

312:                                              ; preds = %308
  %313 = load i32, i32* @PyExc_ValueError, align 4
  %314 = load i8*, i8** %22, align 8
  %315 = call i32 (i32, i8*, i8*, ...) @PyErr_Format(i32 %313, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i8* %314)
  store i32 -1, i32* %4, align 4
  br label %321

316:                                              ; preds = %308
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %24, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %24, align 4
  br label %263

320:                                              ; preds = %263
  store i32 0, i32* %4, align 4
  br label %321

321:                                              ; preds = %320, %312, %276, %241, %214, %200, %170, %146, %126, %86, %56, %40, %32
  %322 = load i32, i32* %4, align 4
  ret i32 %322
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i8**, i32*, i32**, i32*, i32**, i8**, i32**, i8**) #1

declare dso_local i32 @PyList_Size(i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_10__* @get_module_state(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i8*, ...) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i64 @dmlab_connect(%struct.TYPE_9__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i64 @PyDict_Next(i32*, i32*, i32**, i32**) #1

declare dso_local i8* @PyString_AsString(i32*) #1

declare dso_local i32* @PyList_GetItem(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
