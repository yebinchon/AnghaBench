; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-config.c_cmd__config.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-config.c_cmd__config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.config_set = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"read_early_config\00", align 1
@early_config_cb = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Please, provide a command name on the command-line\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"get_value\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"(NULL)\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Value not found for \22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"get_value_multi\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"get_int\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"get_bool\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"get_string\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"configset_get_value\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Error (%d) reading configuration file %s.\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"configset_get_value_multi\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"iterate\00", align 1
@iterate_cb = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [50 x i8] c"%s: Please check the syntax and the function name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__config(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.string_list*, align 8
  %10 = alloca %struct.config_set, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @early_config_cb, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @read_early_config(i32 %22, i8* %25)
  store i32 0, i32* %3, align 4
  br label %334

27:                                               ; preds = %15, %2
  %28 = call i32 (...) @setup_git_directory()
  %29 = call i32 @git_configset_init(%struct.config_set* %10)
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %330

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %38
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @git_config_get_value(i8* %47, i8** %8)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %44
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %55, %53
  br label %328

59:                                               ; preds = %44
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 2
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %62)
  br label %330

64:                                               ; preds = %38, %35
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %113

67:                                               ; preds = %64
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %113, label %73

73:                                               ; preds = %67
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  %76 = load i8*, i8** %75, align 8
  %77 = call %struct.string_list* @git_config_get_value_multi(i8* %76)
  store %struct.string_list* %77, %struct.string_list** %9, align 8
  %78 = load %struct.string_list*, %struct.string_list** %9, align 8
  %79 = icmp ne %struct.string_list* %78, null
  br i1 %79, label %80, label %108

80:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %104, %80
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.string_list*, %struct.string_list** %9, align 8
  %84 = getelementptr inbounds %struct.string_list, %struct.string_list* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %107

87:                                               ; preds = %81
  %88 = load %struct.string_list*, %struct.string_list** %9, align 8
  %89 = getelementptr inbounds %struct.string_list, %struct.string_list* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %8, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %87
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %103

100:                                              ; preds = %87
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %100, %98
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %81

107:                                              ; preds = %81
  br label %328

108:                                              ; preds = %73
  %109 = load i8**, i8*** %5, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 2
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %111)
  br label %330

113:                                              ; preds = %67, %64
  %114 = load i32, i32* %4, align 4
  %115 = icmp eq i32 %114, 3
  br i1 %115, label %116, label %136

116:                                              ; preds = %113
  %117 = load i8**, i8*** %5, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %116
  %123 = load i8**, i8*** %5, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 2
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @git_config_get_int(i8* %125, i32* %7)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %122
  %129 = load i32, i32* %7, align 4
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %129)
  br label %328

131:                                              ; preds = %122
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 2
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %134)
  br label %330

136:                                              ; preds = %116, %113
  %137 = load i32, i32* %4, align 4
  %138 = icmp eq i32 %137, 3
  br i1 %138, label %139, label %159

139:                                              ; preds = %136
  %140 = load i8**, i8*** %5, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 1
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %159, label %145

145:                                              ; preds = %139
  %146 = load i8**, i8*** %5, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 2
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @git_config_get_bool(i8* %148, i32* %7)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* %7, align 4
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %152)
  br label %328

154:                                              ; preds = %145
  %155 = load i8**, i8*** %5, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 2
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %157)
  br label %330

159:                                              ; preds = %139, %136
  %160 = load i32, i32* %4, align 4
  %161 = icmp eq i32 %160, 3
  br i1 %161, label %162, label %182

162:                                              ; preds = %159
  %163 = load i8**, i8*** %5, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %182, label %168

168:                                              ; preds = %162
  %169 = load i8**, i8*** %5, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 2
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @git_config_get_string_const(i8* %171, i8** %8)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %168
  %175 = load i8*, i8** %8, align 8
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %175)
  br label %328

177:                                              ; preds = %168
  %178 = load i8**, i8*** %5, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 2
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %180)
  br label %330

182:                                              ; preds = %162, %159
  %183 = load i8**, i8*** %5, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 1
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %234, label %188

188:                                              ; preds = %182
  store i32 3, i32* %6, align 4
  br label %189

189:                                              ; preds = %211, %188
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* %4, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %214

193:                                              ; preds = %189
  %194 = load i8**, i8*** %5, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %194, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @git_configset_add_file(%struct.config_set* %10, i8* %198)
  store i32 %199, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %193
  %202 = load i32, i32* @stderr, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load i8**, i8*** %5, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %204, i64 %206
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 (i32, i8*, ...) @fprintf(i32 %202, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 %203, i8* %208)
  br label %332

210:                                              ; preds = %193
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %6, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %6, align 4
  br label %189

214:                                              ; preds = %189
  %215 = load i8**, i8*** %5, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 2
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @git_configset_get_value(%struct.config_set* %10, i8* %217, i8** %8)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %229, label %220

220:                                              ; preds = %214
  %221 = load i8*, i8** %8, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %225, label %223

223:                                              ; preds = %220
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %228

225:                                              ; preds = %220
  %226 = load i8*, i8** %8, align 8
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %226)
  br label %228

228:                                              ; preds = %225, %223
  br label %328

229:                                              ; preds = %214
  %230 = load i8**, i8*** %5, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i64 2
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %232)
  br label %330

234:                                              ; preds = %182
  %235 = load i8**, i8*** %5, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i64 1
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %306, label %240

240:                                              ; preds = %234
  store i32 3, i32* %6, align 4
  br label %241

241:                                              ; preds = %263, %240
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* %4, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %266

245:                                              ; preds = %241
  %246 = load i8**, i8*** %5, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8*, i8** %246, i64 %248
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @git_configset_add_file(%struct.config_set* %10, i8* %250)
  store i32 %251, i32* %12, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %245
  %254 = load i32, i32* @stderr, align 4
  %255 = load i32, i32* %12, align 4
  %256 = load i8**, i8*** %5, align 8
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8*, i8** %256, i64 %258
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 (i32, i8*, ...) @fprintf(i32 %254, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 %255, i8* %260)
  br label %332

262:                                              ; preds = %245
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %6, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %6, align 4
  br label %241

266:                                              ; preds = %241
  %267 = load i8**, i8*** %5, align 8
  %268 = getelementptr inbounds i8*, i8** %267, i64 2
  %269 = load i8*, i8** %268, align 8
  %270 = call %struct.string_list* @git_configset_get_value_multi(%struct.config_set* %10, i8* %269)
  store %struct.string_list* %270, %struct.string_list** %9, align 8
  %271 = load %struct.string_list*, %struct.string_list** %9, align 8
  %272 = icmp ne %struct.string_list* %271, null
  br i1 %272, label %273, label %301

273:                                              ; preds = %266
  store i32 0, i32* %6, align 4
  br label %274

274:                                              ; preds = %297, %273
  %275 = load i32, i32* %6, align 4
  %276 = load %struct.string_list*, %struct.string_list** %9, align 8
  %277 = getelementptr inbounds %struct.string_list, %struct.string_list* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp slt i32 %275, %278
  br i1 %279, label %280, label %300

280:                                              ; preds = %274
  %281 = load %struct.string_list*, %struct.string_list** %9, align 8
  %282 = getelementptr inbounds %struct.string_list, %struct.string_list* %281, i32 0, i32 1
  %283 = load %struct.TYPE_2__*, %struct.TYPE_2__** %282, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  store i8* %288, i8** %8, align 8
  %289 = load i8*, i8** %8, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %293, label %291

291:                                              ; preds = %280
  %292 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %296

293:                                              ; preds = %280
  %294 = load i8*, i8** %8, align 8
  %295 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %294)
  br label %296

296:                                              ; preds = %293, %291
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %6, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %6, align 4
  br label %274

300:                                              ; preds = %274
  br label %328

301:                                              ; preds = %266
  %302 = load i8**, i8*** %5, align 8
  %303 = getelementptr inbounds i8*, i8** %302, i64 2
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %304)
  br label %330

306:                                              ; preds = %234
  %307 = load i8**, i8*** %5, align 8
  %308 = getelementptr inbounds i8*, i8** %307, i64 1
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @strcmp(i8* %309, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %306
  %313 = load i32, i32* @iterate_cb, align 4
  %314 = call i32 @git_config(i32 %313, i32* null)
  br label %328

315:                                              ; preds = %306
  br label %316

316:                                              ; preds = %315
  br label %317

317:                                              ; preds = %316
  br label %318

318:                                              ; preds = %317
  br label %319

319:                                              ; preds = %318
  br label %320

320:                                              ; preds = %319
  br label %321

321:                                              ; preds = %320
  br label %322

322:                                              ; preds = %321
  br label %323

323:                                              ; preds = %322
  %324 = load i8**, i8*** %5, align 8
  %325 = getelementptr inbounds i8*, i8** %324, i64 0
  %326 = load i8*, i8** %325, align 8
  %327 = call i32 @die(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i8* %326)
  br label %328

328:                                              ; preds = %323, %312, %300, %228, %174, %151, %128, %107, %58
  %329 = call i32 @git_configset_clear(%struct.config_set* %10)
  store i32 0, i32* %3, align 4
  br label %334

330:                                              ; preds = %301, %229, %177, %154, %131, %108, %59, %32
  %331 = call i32 @git_configset_clear(%struct.config_set* %10)
  store i32 1, i32* %3, align 4
  br label %334

332:                                              ; preds = %253, %201
  %333 = call i32 @git_configset_clear(%struct.config_set* %10)
  store i32 2, i32* %3, align 4
  br label %334

334:                                              ; preds = %332, %330, %328, %21
  %335 = load i32, i32* %3, align 4
  ret i32 %335
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @read_early_config(i32, i8*) #1

declare dso_local i32 @setup_git_directory(...) #1

declare dso_local i32 @git_configset_init(%struct.config_set*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @git_config_get_value(i8*, i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.string_list* @git_config_get_value_multi(i8*) #1

declare dso_local i32 @git_config_get_int(i8*, i32*) #1

declare dso_local i32 @git_config_get_bool(i8*, i32*) #1

declare dso_local i32 @git_config_get_string_const(i8*, i8**) #1

declare dso_local i32 @git_configset_add_file(%struct.config_set*, i8*) #1

declare dso_local i32 @git_configset_get_value(%struct.config_set*, i8*, i8**) #1

declare dso_local %struct.string_list* @git_configset_get_value_multi(%struct.config_set*, i8*) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @git_configset_clear(%struct.config_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
