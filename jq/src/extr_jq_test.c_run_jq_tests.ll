; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jq_test.c_run_jq_tests.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jq_test.c_run_jq_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.err_data = type { i8* }

@JV_KIND_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"JQ_LIBRARY_PATH\00", align 1
@test_err_cb = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Skipped %d tests\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Hit the number of tests limit (%d), breaking\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Test #%d: '%s' at line number %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"*** Test program compiled that should not have at line %u: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"*** Erroneous test program failed with wrong message (%s) at line %u: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"*** Test program failed to compile at line %u: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Disassembly:\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"*** Input is invalid on line %u: %s\0A\00", align 1
@JQ_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [47 x i8] c"*** Expected result is invalid on line %u: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"*** Insufficient results for test at line number %u: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"*** Expected \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c", but got \00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c" for test at line number %u: %s\0A\00", align 1
@JV_PRINT_COLOR = common dso_local global i32 0, align 4
@JV_PRINT_REFCOUNT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [25 x i8] c"*** Superfluous result: \00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c" for test at line number %u, %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"%d of %d tests passed (%d malformed, %d skipped)\0A\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"WARN: skipped past the end of file, exiting with status 2\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32, i32)* @run_jq_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_jq_tests(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4096 x i8], align 16
  %12 = alloca [4096 x i8], align 16
  %13 = alloca %struct.err_data, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32* null, i32** %20, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* %9, align 4
  br label %37

36:                                               ; preds = %5
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %22, align 4
  %40 = call i32* (...) @jq_init()
  store i32* %40, i32** %20, align 8
  %41 = load i32*, i32** %20, align 8
  %42 = call i32 @assert(i32* %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @jv_get_kind(i32 %43)
  %45 = load i64, i64* @JV_KIND_NULL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = call i32 (...) @jv_array()
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %37
  %50 = load i32*, i32** %20, align 8
  %51 = call i32 @jv_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @jq_set_attr(i32* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %66, %71, %122, %187, %213, %247, %272, %395
  %55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %56 = load i32*, i32** %8, align 8
  %57 = call i64 @fgets(i8* %55, i32 4096, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %399

60:                                               ; preds = %54
  %61 = load i32, i32* %17, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %17, align 4
  %63 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %64 = call i64 @skipline(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %54

67:                                               ; preds = %60
  %68 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %69 = call i64 @checkfail(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  store i32 1, i32* %18, align 4
  %72 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %73 = call i32 @checkerrormsg(i8* %72)
  store i32 %73, i32* %19, align 4
  %74 = load i32*, i32** %20, align 8
  %75 = load i32*, i32** @test_err_cb, align 8
  %76 = call i32 @jq_set_error_cb(i32* %74, i32* %75, %struct.err_data* %13)
  br label %54

77:                                               ; preds = %67
  %78 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %79 = call i32 @strlen(i8* %78)
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %88 = call i32 @strlen(i8* %87)
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 %90
  store i8 0, i8* %91, align 1
  br label %92

92:                                               ; preds = %86, %77
  %93 = load i32, i32* %9, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %123

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %121, %95
  %99 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %100 = load i32*, i32** %8, align 8
  %101 = call i64 @fgets(i8* %99, i32 4096, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %98
  %104 = load i32, i32* %17, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %17, align 4
  %106 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %107 = load i8, i8* %106, align 16
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 10
  br i1 %109, label %120, label %110

110:                                              ; preds = %103
  %111 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %112 = load i8, i8* %111, align 16
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 13
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 1
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 10
  br i1 %119, label %120, label %121

120:                                              ; preds = %115, %103
  br label %122

121:                                              ; preds = %115, %110
  br label %98

122:                                              ; preds = %120, %98
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %54

123:                                              ; preds = %92
  %124 = load i32, i32* %9, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* %21, align 4
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  store i32 -1, i32* %9, align 4
  br label %129

129:                                              ; preds = %126, %123
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %10, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %10, align 4
  br label %143

136:                                              ; preds = %130
  %137 = load i32, i32* %10, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %22, align 4
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  store i32 -1, i32* %10, align 4
  br label %399

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %142, %133
  store i32 1, i32* %23, align 4
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %21, align 4
  %148 = add nsw i32 %146, %147
  %149 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %150 = load i32, i32* %17, align 4
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %148, i8* %149, i32 %150)
  %152 = load i32*, i32** %20, align 8
  %153 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %154 = call i32 @jq_compile(i32* %152, i8* %153)
  store i32 %154, i32* %24, align 4
  %155 = load i32, i32* %18, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %214

157:                                              ; preds = %143
  %158 = load i32*, i32** %20, align 8
  %159 = call i32 @jq_set_error_cb(i32* %158, i32* null, %struct.err_data* null)
  %160 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %161 = load i32*, i32** %8, align 8
  %162 = call i64 @fgets(i8* %160, i32 4096, i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %157
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %16, align 4
  br label %399

167:                                              ; preds = %157
  %168 = load i32, i32* %17, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %17, align 4
  %170 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %171 = call i32 @strlen(i8* %170)
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 10
  br i1 %177, label %178, label %184

178:                                              ; preds = %167
  %179 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %180 = call i32 @strlen(i8* %179)
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 %182
  store i8 0, i8* %183, align 1
  br label %184

184:                                              ; preds = %178, %167
  %185 = load i32, i32* %24, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = load i32, i32* %17, align 4
  %189 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %188, i8* %189)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %191 = load i32, i32* %16, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %16, align 4
  br label %54

193:                                              ; preds = %184
  %194 = load i32, i32* %19, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %193
  %197 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %198 = getelementptr inbounds %struct.err_data, %struct.err_data* %13, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @strcmp(i8* %197, i8* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.err_data, %struct.err_data* %13, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load i32, i32* %17, align 4
  %206 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i8* %204, i32 %205, i8* %206)
  %208 = load i32, i32* %16, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %16, align 4
  br label %213

210:                                              ; preds = %196, %193
  %211 = load i32, i32* %15, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %15, align 4
  br label %213

213:                                              ; preds = %210, %202
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %54

214:                                              ; preds = %143
  %215 = load i32, i32* %24, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %248, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %17, align 4
  %219 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %218, i8* %219)
  %221 = load i32, i32* %16, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %16, align 4
  br label %223

223:                                              ; preds = %246, %217
  %224 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %225 = load i32*, i32** %8, align 8
  %226 = call i64 @fgets(i8* %224, i32 4096, i32* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %247

228:                                              ; preds = %223
  %229 = load i32, i32* %17, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %17, align 4
  %231 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %232 = load i8, i8* %231, align 16
  %233 = sext i8 %232 to i32
  %234 = icmp eq i32 %233, 10
  br i1 %234, label %245, label %235

235:                                              ; preds = %228
  %236 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %237 = load i8, i8* %236, align 16
  %238 = sext i8 %237 to i32
  %239 = icmp eq i32 %238, 13
  br i1 %239, label %240, label %246

240:                                              ; preds = %235
  %241 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 1
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 10
  br i1 %244, label %245, label %246

245:                                              ; preds = %240, %228
  br label %247

246:                                              ; preds = %240, %235
  br label %223

247:                                              ; preds = %245, %223
  br label %54

248:                                              ; preds = %214
  %249 = load i32, i32* %7, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %253 = load i32*, i32** %20, align 8
  %254 = call i32 @jq_dump_disassembly(i32* %253, i32 2)
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %256

256:                                              ; preds = %251, %248
  %257 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %258 = load i32*, i32** %8, align 8
  %259 = call i64 @fgets(i8* %257, i32 4096, i32* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %256
  %262 = load i32, i32* %16, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %16, align 4
  br label %399

264:                                              ; preds = %256
  %265 = load i32, i32* %17, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %17, align 4
  %267 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %268 = call i32 @jv_parse(i8* %267)
  store i32 %268, i32* %25, align 4
  %269 = load i32, i32* %25, align 4
  %270 = call i64 @jv_is_valid(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %278, label %272

272:                                              ; preds = %264
  %273 = load i32, i32* %17, align 4
  %274 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %273, i8* %274)
  %276 = load i32, i32* %16, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %16, align 4
  br label %54

278:                                              ; preds = %264
  %279 = load i32*, i32** %20, align 8
  %280 = load i32, i32* %25, align 4
  %281 = load i32, i32* %7, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %278
  %284 = load i32, i32* @JQ_DEBUG_TRACE, align 4
  br label %286

285:                                              ; preds = %278
  br label %286

286:                                              ; preds = %285, %283
  %287 = phi i32 [ %284, %283 ], [ 0, %285 ]
  %288 = call i32 @jq_start(i32* %279, i32 %280, i32 %287)
  br label %289

289:                                              ; preds = %345, %307, %286
  %290 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %291 = load i32*, i32** %8, align 8
  %292 = call i64 @fgets(i8* %290, i32 4096, i32* %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %375

294:                                              ; preds = %289
  %295 = load i32, i32* %17, align 4
  %296 = add i32 %295, 1
  store i32 %296, i32* %17, align 4
  %297 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %298 = call i64 @skipline(i8* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %294
  br label %375

301:                                              ; preds = %294
  %302 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %303 = call i32 @jv_parse(i8* %302)
  store i32 %303, i32* %26, align 4
  %304 = load i32, i32* %26, align 4
  %305 = call i64 @jv_is_valid(i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %313, label %307

307:                                              ; preds = %301
  %308 = load i32, i32* %17, align 4
  %309 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i32 %308, i8* %309)
  %311 = load i32, i32* %16, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %16, align 4
  br label %289

313:                                              ; preds = %301
  %314 = load i32*, i32** %20, align 8
  %315 = call i32 @jq_next(i32* %314)
  store i32 %315, i32* %27, align 4
  %316 = load i32, i32* %27, align 4
  %317 = call i64 @jv_is_valid(i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %325, label %319

319:                                              ; preds = %313
  %320 = load i32, i32* %27, align 4
  %321 = call i32 @jv_free(i32 %320)
  %322 = load i32, i32* %17, align 4
  %323 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i32 %322, i8* %323)
  store i32 0, i32* %23, align 4
  br label %375

325:                                              ; preds = %313
  %326 = load i32, i32* %26, align 4
  %327 = call i32 @jv_copy(i32 %326)
  %328 = load i32, i32* %27, align 4
  %329 = call i32 @jv_copy(i32 %328)
  %330 = call i32* @jv_equal(i32 %327, i32 %329)
  %331 = icmp ne i32* %330, null
  br i1 %331, label %344, label %332

332:                                              ; preds = %325
  %333 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %334 = load i32, i32* %26, align 4
  %335 = call i32 @jv_copy(i32 %334)
  %336 = call i32 @jv_dump(i32 %335, i32 0)
  %337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %338 = load i32, i32* %27, align 4
  %339 = call i32 @jv_copy(i32 %338)
  %340 = call i32 @jv_dump(i32 %339, i32 0)
  %341 = load i32, i32* %17, align 4
  %342 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %343 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %341, i8* %342)
  store i32 0, i32* %23, align 4
  br label %344

344:                                              ; preds = %332, %325
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %26, align 4
  %347 = call i32 @jv_copy(i32 %346)
  %348 = call i32 (...) @rand()
  %349 = load i32, i32* @JV_PRINT_COLOR, align 4
  %350 = load i32, i32* @JV_PRINT_REFCOUNT, align 4
  %351 = or i32 %349, %350
  %352 = xor i32 %351, -1
  %353 = and i32 %348, %352
  %354 = call i32 @jv_dump_string(i32 %347, i32 %353)
  store i32 %354, i32* %28, align 4
  %355 = load i32, i32* %28, align 4
  %356 = call i32 @jv_string_value(i32 %355)
  %357 = load i32, i32* %28, align 4
  %358 = call i32 @jv_copy(i32 %357)
  %359 = call i32 @jv_string_length_bytes(i32 %358)
  %360 = call i32 @jv_parse_sized(i32 %356, i32 %359)
  store i32 %360, i32* %29, align 4
  %361 = load i32, i32* %26, align 4
  %362 = call i32 @jv_copy(i32 %361)
  %363 = load i32, i32* %29, align 4
  %364 = call i32 @jv_copy(i32 %363)
  %365 = call i32* @jv_equal(i32 %362, i32 %364)
  %366 = call i32 @assert(i32* %365)
  %367 = load i32, i32* %28, align 4
  %368 = call i32 @jv_free(i32 %367)
  %369 = load i32, i32* %29, align 4
  %370 = call i32 @jv_free(i32 %369)
  %371 = load i32, i32* %26, align 4
  %372 = call i32 @jv_free(i32 %371)
  %373 = load i32, i32* %27, align 4
  %374 = call i32 @jv_free(i32 %373)
  br label %289

375:                                              ; preds = %319, %300, %289
  %376 = load i32, i32* %23, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %395

378:                                              ; preds = %375
  %379 = load i32*, i32** %20, align 8
  %380 = call i32 @jq_next(i32* %379)
  store i32 %380, i32* %30, align 4
  %381 = load i32, i32* %30, align 4
  %382 = call i64 @jv_is_valid(i32 %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %391

384:                                              ; preds = %378
  %385 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %386 = load i32, i32* %30, align 4
  %387 = call i32 @jv_dump(i32 %386, i32 0)
  %388 = load i32, i32* %17, align 4
  %389 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %390 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 %388, i8* %389)
  store i32 0, i32* %23, align 4
  br label %394

391:                                              ; preds = %378
  %392 = load i32, i32* %30, align 4
  %393 = call i32 @jv_free(i32 %392)
  br label %394

394:                                              ; preds = %391, %384
  br label %395

395:                                              ; preds = %394, %375
  %396 = load i32, i32* %23, align 4
  %397 = load i32, i32* %15, align 4
  %398 = add nsw i32 %397, %396
  store i32 %398, i32* %15, align 4
  br label %54

399:                                              ; preds = %261, %164, %139, %59
  %400 = call i32 @jq_teardown(i32** %20)
  %401 = load i32, i32* %21, align 4
  store i32 %401, i32* %31, align 4
  %402 = load i32, i32* %9, align 4
  %403 = icmp sgt i32 %402, 0
  br i1 %403, label %404, label %408

404:                                              ; preds = %399
  %405 = load i32, i32* %21, align 4
  %406 = load i32, i32* %9, align 4
  %407 = sub nsw i32 %405, %406
  store i32 %407, i32* %31, align 4
  br label %408

408:                                              ; preds = %404, %399
  %409 = load i32, i32* %15, align 4
  %410 = load i32, i32* %14, align 4
  %411 = load i32, i32* %16, align 4
  %412 = load i32, i32* %31, align 4
  %413 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0), i32 %409, i32 %410, i32 %411, i32 %412)
  %414 = load i32, i32* %9, align 4
  %415 = icmp sgt i32 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %408
  %417 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0))
  %418 = call i32 @exit(i32 2) #3
  unreachable

419:                                              ; preds = %408
  %420 = load i32, i32* %15, align 4
  %421 = load i32, i32* %14, align 4
  %422 = icmp ne i32 %420, %421
  br i1 %422, label %423, label %425

423:                                              ; preds = %419
  %424 = call i32 @exit(i32 1) #3
  unreachable

425:                                              ; preds = %419
  ret void
}

declare dso_local i32* @jq_init(...) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_array(...) #1

declare dso_local i32 @jq_set_attr(i32*, i32, i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @skipline(i8*) #1

declare dso_local i64 @checkfail(i8*) #1

declare dso_local i32 @checkerrormsg(i8*) #1

declare dso_local i32 @jq_set_error_cb(i32*, i32*, %struct.err_data*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @jq_compile(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @jq_dump_disassembly(i32*, i32) #1

declare dso_local i32 @jv_parse(i8*) #1

declare dso_local i64 @jv_is_valid(i32) #1

declare dso_local i32 @jq_start(i32*, i32, i32) #1

declare dso_local i32 @jq_next(i32*) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32* @jv_equal(i32, i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_dump(i32, i32) #1

declare dso_local i32 @jv_dump_string(i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @jv_parse_sized(i32, i32) #1

declare dso_local i32 @jv_string_value(i32) #1

declare dso_local i32 @jv_string_length_bytes(i32) #1

declare dso_local i32 @jq_teardown(i32**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
