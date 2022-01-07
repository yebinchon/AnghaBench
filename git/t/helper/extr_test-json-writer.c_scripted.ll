; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-json-writer.c_scripted.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-json-writer.c_scripted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_writer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@JSON_WRITER_INIT = common dso_local global %struct.json_writer zeroinitializer, align 8
@MAX_LINE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"object\00", align 1
@pretty = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"expected first line to be 'object' or 'array'\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"object-string\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"object-int\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"object-double\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"object-true\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"object-false\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"object-null\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"object-object\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"object-array\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"array-string\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"array-int\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"array-double\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"array-true\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"array-false\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"array-null\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"array-object\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"array-array\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"unrecognized token: '%s'\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"json not terminated: '%s'\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @scripted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scripted() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.json_writer, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = bitcast %struct.json_writer* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.json_writer* @JSON_WRITER_INIT to i8*), i64 8, i1 false)
  %14 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %3, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %18 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %19 = call i8* @get_trimmed_line(i8* %17, i32 %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %234

23:                                               ; preds = %0
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @pretty, align 4
  %29 = call i32 @jw_object_begin(%struct.json_writer* %2, i32 %28)
  br label %40

30:                                               ; preds = %23
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @pretty, align 4
  %36 = call i32 @jw_array_begin(%struct.json_writer* %2, i32 %35)
  br label %39

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %34
  br label %40

40:                                               ; preds = %39, %27
  br label %41

41:                                               ; preds = %218, %40
  %42 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %43 = call i8* @get_trimmed_line(i8* %17, i32 %42)
  store i8* %43, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %219

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = call i8* @strtok(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = call i32 @jw_end(%struct.json_writer* %2)
  br label %218

55:                                               ; preds = %45
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @get_s(i32 %60, i8** %9)
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @get_s(i32 %62, i8** %10)
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @jw_object_string(%struct.json_writer* %2, i8* %64, i8* %65)
  br label %217

67:                                               ; preds = %55
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @get_s(i32 %72, i8** %9)
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @get_i(i32 %74, i32* %11)
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @jw_object_intmax(%struct.json_writer* %2, i8* %76, i32 %77)
  br label %216

79:                                               ; preds = %67
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @get_s(i32 %84, i8** %9)
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @get_i(i32 %86, i32* %11)
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @get_d(i32 %88, double* %12)
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load double, double* %12, align 8
  %93 = call i32 @jw_object_double(%struct.json_writer* %2, i8* %90, i32 %91, double %92)
  br label %215

94:                                               ; preds = %79
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @get_s(i32 %99, i8** %9)
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @jw_object_true(%struct.json_writer* %2, i8* %101)
  br label %214

103:                                              ; preds = %94
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @get_s(i32 %108, i8** %9)
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @jw_object_false(%struct.json_writer* %2, i8* %110)
  br label %213

112:                                              ; preds = %103
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @get_s(i32 %117, i8** %9)
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 @jw_object_null(%struct.json_writer* %2, i8* %119)
  br label %212

121:                                              ; preds = %112
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @get_s(i32 %126, i8** %9)
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @jw_object_inline_begin_object(%struct.json_writer* %2, i8* %128)
  br label %211

130:                                              ; preds = %121
  %131 = load i8*, i8** %8, align 8
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @get_s(i32 %135, i8** %9)
  %137 = load i8*, i8** %9, align 8
  %138 = call i32 @jw_object_inline_begin_array(%struct.json_writer* %2, i8* %137)
  br label %210

139:                                              ; preds = %130
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 @strcmp(i8* %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @get_s(i32 %144, i8** %10)
  %146 = load i8*, i8** %10, align 8
  %147 = call i32 @jw_array_string(%struct.json_writer* %2, i8* %146)
  br label %209

148:                                              ; preds = %139
  %149 = load i8*, i8** %8, align 8
  %150 = call i32 @strcmp(i8* %149, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @get_i(i32 %153, i32* %11)
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @jw_array_intmax(%struct.json_writer* %2, i32 %155)
  br label %208

157:                                              ; preds = %148
  %158 = load i8*, i8** %8, align 8
  %159 = call i32 @strcmp(i8* %158, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %169, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @get_i(i32 %162, i32* %11)
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @get_d(i32 %164, double* %12)
  %166 = load i32, i32* %11, align 4
  %167 = load double, double* %12, align 8
  %168 = call i32 @jw_array_double(%struct.json_writer* %2, i32 %166, double %167)
  br label %207

169:                                              ; preds = %157
  %170 = load i8*, i8** %8, align 8
  %171 = call i32 @strcmp(i8* %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = call i32 @jw_array_true(%struct.json_writer* %2)
  br label %206

175:                                              ; preds = %169
  %176 = load i8*, i8** %8, align 8
  %177 = call i32 @strcmp(i8* %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = call i32 @jw_array_false(%struct.json_writer* %2)
  br label %205

181:                                              ; preds = %175
  %182 = load i8*, i8** %8, align 8
  %183 = call i32 @strcmp(i8* %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %181
  %186 = call i32 @jw_array_null(%struct.json_writer* %2)
  br label %204

187:                                              ; preds = %181
  %188 = load i8*, i8** %8, align 8
  %189 = call i32 @strcmp(i8* %188, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %187
  %192 = call i32 @jw_array_inline_begin_object(%struct.json_writer* %2)
  br label %203

193:                                              ; preds = %187
  %194 = load i8*, i8** %8, align 8
  %195 = call i32 @strcmp(i8* %194, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  %198 = call i32 @jw_array_inline_begin_array(%struct.json_writer* %2)
  br label %202

199:                                              ; preds = %193
  %200 = load i8*, i8** %8, align 8
  %201 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i8* %200)
  br label %202

202:                                              ; preds = %199, %197
  br label %203

203:                                              ; preds = %202, %191
  br label %204

204:                                              ; preds = %203, %185
  br label %205

205:                                              ; preds = %204, %179
  br label %206

206:                                              ; preds = %205, %173
  br label %207

207:                                              ; preds = %206, %161
  br label %208

208:                                              ; preds = %207, %152
  br label %209

209:                                              ; preds = %208, %143
  br label %210

210:                                              ; preds = %209, %134
  br label %211

211:                                              ; preds = %210, %125
  br label %212

212:                                              ; preds = %211, %116
  br label %213

213:                                              ; preds = %212, %107
  br label %214

214:                                              ; preds = %213, %98
  br label %215

215:                                              ; preds = %214, %83
  br label %216

216:                                              ; preds = %215, %71
  br label %217

217:                                              ; preds = %216, %59
  br label %218

218:                                              ; preds = %217, %53
  br label %41

219:                                              ; preds = %41
  %220 = call i32 @jw_is_terminated(%struct.json_writer* %2)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %2, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i8* %225)
  br label %227

227:                                              ; preds = %222, %219
  %228 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %2, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* %230)
  %232 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %2, i32 0, i32 0
  %233 = call i32 @strbuf_release(%struct.TYPE_2__* %232)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %234

234:                                              ; preds = %227, %22
  %235 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %235)
  %236 = load i32, i32* %1, align 4
  ret i32 %236
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @get_trimmed_line(i8*, i32) #3

declare dso_local i32 @strcmp(i8*, i8*) #3

declare dso_local i32 @jw_object_begin(%struct.json_writer*, i32) #3

declare dso_local i32 @jw_array_begin(%struct.json_writer*, i32) #3

declare dso_local i32 @die(i8*, ...) #3

declare dso_local i8* @strtok(i8*, i8*) #3

declare dso_local i32 @jw_end(%struct.json_writer*) #3

declare dso_local i32 @get_s(i32, i8**) #3

declare dso_local i32 @jw_object_string(%struct.json_writer*, i8*, i8*) #3

declare dso_local i32 @get_i(i32, i32*) #3

declare dso_local i32 @jw_object_intmax(%struct.json_writer*, i8*, i32) #3

declare dso_local i32 @get_d(i32, double*) #3

declare dso_local i32 @jw_object_double(%struct.json_writer*, i8*, i32, double) #3

declare dso_local i32 @jw_object_true(%struct.json_writer*, i8*) #3

declare dso_local i32 @jw_object_false(%struct.json_writer*, i8*) #3

declare dso_local i32 @jw_object_null(%struct.json_writer*, i8*) #3

declare dso_local i32 @jw_object_inline_begin_object(%struct.json_writer*, i8*) #3

declare dso_local i32 @jw_object_inline_begin_array(%struct.json_writer*, i8*) #3

declare dso_local i32 @jw_array_string(%struct.json_writer*, i8*) #3

declare dso_local i32 @jw_array_intmax(%struct.json_writer*, i32) #3

declare dso_local i32 @jw_array_double(%struct.json_writer*, i32, double) #3

declare dso_local i32 @jw_array_true(%struct.json_writer*) #3

declare dso_local i32 @jw_array_false(%struct.json_writer*) #3

declare dso_local i32 @jw_array_null(%struct.json_writer*) #3

declare dso_local i32 @jw_array_inline_begin_object(%struct.json_writer*) #3

declare dso_local i32 @jw_array_inline_begin_array(%struct.json_writer*) #3

declare dso_local i32 @jw_is_terminated(%struct.json_writer*) #3

declare dso_local i32 @printf(i8*, i8*) #3

declare dso_local i32 @strbuf_release(%struct.TYPE_2__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
