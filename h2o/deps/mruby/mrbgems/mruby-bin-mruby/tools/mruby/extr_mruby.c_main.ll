; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-mruby/tools/mruby/extr_mruby.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-mruby/tools/mruby/extr_mruby.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64 }
%struct._args = type { i8*, i32, i8**, i32, i8**, i64, i32*, i64, i64, i32 }
%struct.TYPE_29__ = type { i8*, i8* }

@.str = private unnamed_addr constant [34 x i8] c"Invalid mrb_state, exiting mruby\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ARGV\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"$DEBUG\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"$0\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Cannot open library file: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Syntax OK\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._args, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = call %struct.TYPE_30__* (...) @mrb_open()
  store %struct.TYPE_30__* %19, %struct.TYPE_30__** %6, align 8
  store i32 -1, i32* %7, align 4
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %21 = icmp eq %struct.TYPE_30__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %25, i32* %3, align 4
  br label %284

26:                                               ; preds = %2
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = call i32 @parse_args(%struct.TYPE_30__* %27, i32 %28, i8** %29, %struct._args* %9)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @EXIT_FAILURE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %38, %26
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %44 = call i32 @cleanup(%struct.TYPE_30__* %43, %struct._args* %9)
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @usage(i8* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %284

50:                                               ; preds = %38, %34
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %52 = call i32 @mrb_gc_arena_save(%struct.TYPE_30__* %51)
  store i32 %52, i32* %14, align 4
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %54 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @mrb_ary_new_capa(%struct.TYPE_30__* %53, i32 %55)
  store i32 %56, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %82, %50
  %58 = load i32, i32* %8, align 4
  %59 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 2
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @mrb_utf8_from_locale(i8* %68, i32 -1)
  store i8* %69, i8** %15, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %62
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = call i32 @mrb_str_new_cstr(%struct.TYPE_30__* %75, i8* %76)
  %78 = call i32 @mrb_ary_push(%struct.TYPE_30__* %73, i32 %74, i32 %77)
  %79 = load i8*, i8** %15, align 8
  %80 = call i32 @mrb_utf8_free(i8* %79)
  br label %81

81:                                               ; preds = %72, %62
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %57

85:                                               ; preds = %57
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @mrb_define_global_const(%struct.TYPE_30__* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %91 = call i32 @mrb_intern_lit(%struct.TYPE_30__* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %92 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 9
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @mrb_bool_value(i32 %93)
  %95 = call i32 @mrb_gv_set(%struct.TYPE_30__* %89, i32 %91, i32 %94)
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %97 = call %struct.TYPE_29__* @mrbc_context_new(%struct.TYPE_30__* %96)
  store %struct.TYPE_29__* %97, %struct.TYPE_29__** %11, align 8
  %98 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 8
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %85
  %102 = load i8*, i8** @TRUE, align 8
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %101, %85
  %106 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i8*, i8** @TRUE, align 8
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %109, %105
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %115 = call i32 @mrb_intern_lit(%struct.TYPE_30__* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %115, i32* %13, align 4
  %116 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %139

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  br label %127

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126, %123
  %128 = phi i8* [ %125, %123 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %126 ]
  store i8* %128, i8** %16, align 8
  %129 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %131 = load i8*, i8** %16, align 8
  %132 = call i32 @mrbc_filename(%struct.TYPE_30__* %129, %struct.TYPE_29__* %130, i8* %131)
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %136 = load i8*, i8** %16, align 8
  %137 = call i32 @mrb_str_new_cstr(%struct.TYPE_30__* %135, i8* %136)
  %138 = call i32 @mrb_gv_set(%struct.TYPE_30__* %133, i32 %134, i32 %137)
  br label %148

139:                                              ; preds = %113
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %142 = call i32 @mrbc_filename(%struct.TYPE_30__* %140, %struct.TYPE_29__* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %146 = call i32 @mrb_str_new_lit(%struct.TYPE_30__* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %147 = call i32 @mrb_gv_set(%struct.TYPE_30__* %143, i32 %144, i32 %146)
  br label %148

148:                                              ; preds = %139, %127
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %200, %148
  %150 = load i32, i32* %8, align 4
  %151 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %203

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 4
  %156 = load i8**, i8*** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 7
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %166 = call i32* @fopen(i8* %160, i8* %165)
  store i32* %166, i32** %17, align 8
  %167 = load i32*, i32** %17, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %183

169:                                              ; preds = %154
  %170 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 4
  %171 = load i8**, i8*** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %175)
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %179 = call i32 @mrbc_context_free(%struct.TYPE_30__* %177, %struct.TYPE_29__* %178)
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %181 = call i32 @cleanup(%struct.TYPE_30__* %180, %struct._args* %9)
  %182 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %182, i32* %3, align 4
  br label %284

183:                                              ; preds = %154
  %184 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 7
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %183
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %189 = load i32*, i32** %17, align 8
  %190 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %191 = call i32 @mrb_load_irep_file_cxt(%struct.TYPE_30__* %188, i32* %189, %struct.TYPE_29__* %190)
  store i32 %191, i32* %12, align 4
  br label %197

192:                                              ; preds = %183
  %193 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %194 = load i32*, i32** %17, align 8
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %196 = call i32 @mrb_load_file_cxt(%struct.TYPE_30__* %193, i32* %194, %struct.TYPE_29__* %195)
  store i32 %196, i32* %12, align 4
  br label %197

197:                                              ; preds = %192, %187
  %198 = load i32*, i32** %17, align 8
  %199 = call i32 @fclose(i32* %198)
  br label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %8, align 4
  br label %149

203:                                              ; preds = %149
  %204 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 7
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %209 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 6
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %212 = call i32 @mrb_load_irep_file_cxt(%struct.TYPE_30__* %208, i32* %210, %struct.TYPE_29__* %211)
  store i32 %212, i32* %12, align 4
  br label %239

213:                                              ; preds = %203
  %214 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 6
  %215 = load i32*, i32** %214, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %223

217:                                              ; preds = %213
  %218 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %219 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 6
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %222 = call i32 @mrb_load_file_cxt(%struct.TYPE_30__* %218, i32* %220, %struct.TYPE_29__* %221)
  store i32 %222, i32* %12, align 4
  br label %238

223:                                              ; preds = %213
  %224 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i8* @mrb_utf8_from_locale(i8* %225, i32 -1)
  store i8* %226, i8** %18, align 8
  %227 = load i8*, i8** %18, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %231, label %229

229:                                              ; preds = %223
  %230 = call i32 (...) @abort() #3
  unreachable

231:                                              ; preds = %223
  %232 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %233 = load i8*, i8** %18, align 8
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %235 = call i32 @mrb_load_string_cxt(%struct.TYPE_30__* %232, i8* %233, %struct.TYPE_29__* %234)
  store i32 %235, i32* %12, align 4
  %236 = load i8*, i8** %18, align 8
  %237 = call i32 @mrb_utf8_free(i8* %236)
  br label %238

238:                                              ; preds = %231, %217
  br label %239

239:                                              ; preds = %238, %207
  %240 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %241 = load i32, i32* %14, align 4
  %242 = call i32 @mrb_gc_arena_restore(%struct.TYPE_30__* %240, i32 %241)
  %243 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %245 = call i32 @mrbc_context_free(%struct.TYPE_30__* %243, %struct.TYPE_29__* %244)
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %265

250:                                              ; preds = %239
  %251 = load i32, i32* %12, align 4
  %252 = call i64 @mrb_undef_p(i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %250
  %255 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @mrb_obj_value(i64 %258)
  %260 = call i32 @mrb_p(%struct.TYPE_30__* %255, i32 %259)
  br label %264

261:                                              ; preds = %250
  %262 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %263 = call i32 @mrb_print_error(%struct.TYPE_30__* %262)
  br label %264

264:                                              ; preds = %261, %254
  store i32 -1, i32* %7, align 4
  br label %272

265:                                              ; preds = %239
  %266 = getelementptr inbounds %struct._args, %struct._args* %9, i32 0, i32 5
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %265
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %271

271:                                              ; preds = %269, %265
  br label %272

272:                                              ; preds = %271, %264
  br label %273

273:                                              ; preds = %272
  %274 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %275 = call i32 @cleanup(%struct.TYPE_30__* %274, %struct._args* %9)
  %276 = load i32, i32* %7, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %273
  %279 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %282

280:                                              ; preds = %273
  %281 = load i32, i32* @EXIT_FAILURE, align 4
  br label %282

282:                                              ; preds = %280, %278
  %283 = phi i32 [ %279, %278 ], [ %281, %280 ]
  store i32 %283, i32* %3, align 4
  br label %284

284:                                              ; preds = %282, %169, %42, %22
  %285 = load i32, i32* %3, align 4
  ret i32 %285
}

declare dso_local %struct.TYPE_30__* @mrb_open(...) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @parse_args(%struct.TYPE_30__*, i32, i8**, %struct._args*) #1

declare dso_local i32 @cleanup(%struct.TYPE_30__*, %struct._args*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @mrb_gc_arena_save(%struct.TYPE_30__*) #1

declare dso_local i32 @mrb_ary_new_capa(%struct.TYPE_30__*, i32) #1

declare dso_local i8* @mrb_utf8_from_locale(i8*, i32) #1

declare dso_local i32 @mrb_ary_push(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @mrb_str_new_cstr(%struct.TYPE_30__*, i8*) #1

declare dso_local i32 @mrb_utf8_free(i8*) #1

declare dso_local i32 @mrb_define_global_const(%struct.TYPE_30__*, i8*, i32) #1

declare dso_local i32 @mrb_gv_set(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_30__*, i8*) #1

declare dso_local i32 @mrb_bool_value(i32) #1

declare dso_local %struct.TYPE_29__* @mrbc_context_new(%struct.TYPE_30__*) #1

declare dso_local i32 @mrbc_filename(%struct.TYPE_30__*, %struct.TYPE_29__*, i8*) #1

declare dso_local i32 @mrb_str_new_lit(%struct.TYPE_30__*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mrbc_context_free(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @mrb_load_irep_file_cxt(%struct.TYPE_30__*, i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @mrb_load_file_cxt(%struct.TYPE_30__*, i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @mrb_load_string_cxt(%struct.TYPE_30__*, i8*, %struct.TYPE_29__*) #1

declare dso_local i32 @mrb_gc_arena_restore(%struct.TYPE_30__*, i32) #1

declare dso_local i64 @mrb_undef_p(i32) #1

declare dso_local i32 @mrb_p(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @mrb_obj_value(i64) #1

declare dso_local i32 @mrb_print_error(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
