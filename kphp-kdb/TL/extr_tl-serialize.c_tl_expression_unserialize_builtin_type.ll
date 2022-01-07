; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-serialize.c_tl_expression_unserialize_builtin_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-serialize.c_tl_expression_unserialize_builtin_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i32 }
%struct.tl_scheme_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { double, i32, i64, i8* }

@.str = private unnamed_addr constant [6 x i8] c"ouble\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"not enough input to unserialize %s\00", align 1
@CODE_double = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"unserialize Double failed, expected magic 0x%08x but 0x%08x found\00", align 1
@tlso_double = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@CODE_int = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [63 x i8] c"unserialize Int failed, expected magic 0x%08x but 0x%08x found\00", align 1
@tlso_int = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"ong\00", align 1
@CODE_long = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [64 x i8] c"unserialize Long failed, expected magic 0x%08x but 0x%08x found\00", align 1
@tlso_long = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"tring\00", align 1
@CODE_string = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [66 x i8] c"unserialize String failed, expected magic 0x%08x but 0x%08x found\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"tl_fetch_string fail\00", align 1
@tlso_str = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_expression_unserialize_builtin_type(%struct.tl_compiler* %0, i32* %1, i32 %2, i8* %3, %struct.tl_scheme_object** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tl_compiler*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tl_scheme_object**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.tl_compiler* %0, %struct.tl_compiler** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.tl_scheme_object** %4, %struct.tl_scheme_object*** %11, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %293

18:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @tolower(i8 signext %21)
  switch i32 %22, label %292 [
    i32 100, label %23
    i32 105, label %89
    i32 108, label %152
    i32 115, label %218
  ]

23:                                               ; preds = %18
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %88, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @isupper(i8 signext %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %28
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 (%struct.tl_compiler*, i8*, ...) @tl_failf(%struct.tl_compiler* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  store i32 %41, i32* %6, align 4
  br label %293

42:                                               ; preds = %34
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CODE_double, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %52 = load i32, i32* @CODE_double, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.tl_compiler*, i8*, ...) @tl_failf(%struct.tl_compiler* %51, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %293

59:                                               ; preds = %42
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %59, %28
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %64, 1
  %66 = icmp sge i32 %63, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 (%struct.tl_compiler*, i8*, ...) @tl_failf(%struct.tl_compiler* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  store i32 %70, i32* %6, align 4
  br label %293

71:                                               ; preds = %62
  %72 = load i32, i32* @tlso_double, align 4
  %73 = call %struct.tl_scheme_object* @tl_scheme_object_new(i32 %72)
  %74 = load %struct.tl_scheme_object**, %struct.tl_scheme_object*** %11, align 8
  store %struct.tl_scheme_object* %73, %struct.tl_scheme_object** %74, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = bitcast i32* %78 to double*
  %80 = load double, double* %79, align 8
  %81 = load %struct.tl_scheme_object**, %struct.tl_scheme_object*** %11, align 8
  %82 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %81, align 8
  %83 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store double %80, double* %84, align 8
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 2
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %6, align 4
  br label %293

88:                                               ; preds = %23
  br label %292

89:                                               ; preds = %18
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %151, label %94

94:                                               ; preds = %89
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = call i32 @isupper(i8 signext %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %128

100:                                              ; preds = %94
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 (%struct.tl_compiler*, i8*, ...) @tl_failf(%struct.tl_compiler* %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %106)
  store i32 %107, i32* %6, align 4
  br label %293

108:                                              ; preds = %100
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @CODE_int, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %108
  %117 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %118 = load i32, i32* @CODE_int, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.tl_compiler*, i8*, ...) @tl_failf(%struct.tl_compiler* %117, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %118, i32 %123)
  store i32 %124, i32* %6, align 4
  br label %293

125:                                              ; preds = %108
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %125, %94
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = call i32 (%struct.tl_compiler*, i8*, ...) @tl_failf(%struct.tl_compiler* %133, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %134)
  store i32 %135, i32* %6, align 4
  br label %293

136:                                              ; preds = %128
  %137 = load i32, i32* @tlso_int, align 4
  %138 = call %struct.tl_scheme_object* @tl_scheme_object_new(i32 %137)
  %139 = load %struct.tl_scheme_object**, %struct.tl_scheme_object*** %11, align 8
  store %struct.tl_scheme_object* %138, %struct.tl_scheme_object** %139, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.tl_scheme_object**, %struct.tl_scheme_object*** %11, align 8
  %147 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %146, align 8
  %148 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  store i32 %145, i32* %149, align 8
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %6, align 4
  br label %293

151:                                              ; preds = %89
  br label %292

152:                                              ; preds = %18
  %153 = load i8*, i8** %10, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %217, label %157

157:                                              ; preds = %152
  %158 = load i8*, i8** %10, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = call i32 @isupper(i8 signext %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %191

163:                                              ; preds = %157
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp sge i32 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = call i32 (%struct.tl_compiler*, i8*, ...) @tl_failf(%struct.tl_compiler* %168, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %169)
  store i32 %170, i32* %6, align 4
  br label %293

171:                                              ; preds = %163
  %172 = load i32*, i32** %8, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @CODE_long, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %188

179:                                              ; preds = %171
  %180 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %181 = load i32, i32* @CODE_long, align 4
  %182 = load i32*, i32** %8, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (%struct.tl_compiler*, i8*, ...) @tl_failf(%struct.tl_compiler* %180, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i32 %181, i32 %186)
  store i32 %187, i32* %6, align 4
  br label %293

188:                                              ; preds = %171
  %189 = load i32, i32* %12, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %12, align 4
  br label %191

191:                                              ; preds = %188, %157
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %9, align 4
  %194 = sub nsw i32 %193, 1
  %195 = icmp sge i32 %192, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %198 = load i8*, i8** %10, align 8
  %199 = call i32 (%struct.tl_compiler*, i8*, ...) @tl_failf(%struct.tl_compiler* %197, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %198)
  store i32 %199, i32* %6, align 4
  br label %293

200:                                              ; preds = %191
  %201 = load i32, i32* @tlso_long, align 4
  %202 = call %struct.tl_scheme_object* @tl_scheme_object_new(i32 %201)
  %203 = load %struct.tl_scheme_object**, %struct.tl_scheme_object*** %11, align 8
  store %struct.tl_scheme_object* %202, %struct.tl_scheme_object** %203, align 8
  %204 = load i32*, i32** %8, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = bitcast i32* %207 to i64*
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.tl_scheme_object**, %struct.tl_scheme_object*** %11, align 8
  %211 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %210, align 8
  %212 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 2
  store i64 %209, i64* %213, align 8
  %214 = load i32, i32* %12, align 4
  %215 = add nsw i32 %214, 2
  store i32 %215, i32* %12, align 4
  %216 = load i32, i32* %12, align 4
  store i32 %216, i32* %6, align 4
  br label %293

217:                                              ; preds = %152
  br label %292

218:                                              ; preds = %18
  %219 = load i8*, i8** %10, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 1
  %221 = call i32 @strcmp(i8* %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %291, label %223

223:                                              ; preds = %218
  %224 = load i8*, i8** %10, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 0
  %226 = load i8, i8* %225, align 1
  %227 = call i32 @isupper(i8 signext %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %257

229:                                              ; preds = %223
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp sge i32 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %235 = load i8*, i8** %10, align 8
  %236 = call i32 (%struct.tl_compiler*, i8*, ...) @tl_failf(%struct.tl_compiler* %234, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %235)
  store i32 %236, i32* %6, align 4
  br label %293

237:                                              ; preds = %229
  %238 = load i32*, i32** %8, align 8
  %239 = load i32, i32* %12, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @CODE_string, align 4
  %244 = icmp ne i32 %242, %243
  br i1 %244, label %245, label %254

245:                                              ; preds = %237
  %246 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %247 = load i32, i32* @CODE_string, align 4
  %248 = load i32*, i32** %8, align 8
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = call i32 (%struct.tl_compiler*, i8*, ...) @tl_failf(%struct.tl_compiler* %246, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i32 %247, i32 %252)
  store i32 %253, i32* %6, align 4
  br label %293

254:                                              ; preds = %237
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %12, align 4
  br label %257

257:                                              ; preds = %254, %223
  %258 = load i32, i32* %12, align 4
  %259 = load i32, i32* %9, align 4
  %260 = icmp sge i32 %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %257
  %262 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %263 = load i8*, i8** %10, align 8
  %264 = call i32 (%struct.tl_compiler*, i8*, ...) @tl_failf(%struct.tl_compiler* %262, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %263)
  store i32 %264, i32* %6, align 4
  br label %293

265:                                              ; preds = %257
  %266 = load i32*, i32** %8, align 8
  %267 = load i32, i32* %12, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %9, align 4
  %271 = load i32, i32* %12, align 4
  %272 = sub nsw i32 %270, %271
  %273 = call i32 @tl_fetch_string(i32* %269, i32 %272, i8** %13, i32* null, i32 1)
  store i32 %273, i32* %14, align 4
  %274 = load i32, i32* %14, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %265
  %277 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %278 = call i32 (%struct.tl_compiler*, i8*, ...) @tl_failf(%struct.tl_compiler* %277, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  store i32 %278, i32* %6, align 4
  br label %293

279:                                              ; preds = %265
  %280 = load i32, i32* @tlso_str, align 4
  %281 = call %struct.tl_scheme_object* @tl_scheme_object_new(i32 %280)
  %282 = load %struct.tl_scheme_object**, %struct.tl_scheme_object*** %11, align 8
  store %struct.tl_scheme_object* %281, %struct.tl_scheme_object** %282, align 8
  %283 = load i8*, i8** %13, align 8
  %284 = load %struct.tl_scheme_object**, %struct.tl_scheme_object*** %11, align 8
  %285 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %284, align 8
  %286 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 3
  store i8* %283, i8** %287, align 8
  %288 = load i32, i32* %12, align 4
  %289 = load i32, i32* %14, align 4
  %290 = add nsw i32 %288, %289
  store i32 %290, i32* %6, align 4
  br label %293

291:                                              ; preds = %218
  br label %292

292:                                              ; preds = %18, %291, %217, %151, %88
  store i32 0, i32* %6, align 4
  br label %293

293:                                              ; preds = %292, %279, %276, %261, %245, %233, %200, %196, %179, %167, %136, %132, %116, %104, %71, %67, %50, %38, %17
  %294 = load i32, i32* %6, align 4
  ret i32 %294
}

declare dso_local i32 @tolower(i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @isupper(i8 signext) #1

declare dso_local i32 @tl_failf(%struct.tl_compiler*, i8*, ...) #1

declare dso_local %struct.tl_scheme_object* @tl_scheme_object_new(i32) #1

declare dso_local i32 @tl_fetch_string(i32*, i32, i8**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
