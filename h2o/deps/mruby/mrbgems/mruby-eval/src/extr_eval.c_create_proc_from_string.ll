; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-eval/src/extr_eval.c_create_proc_from_string.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-eval/src/extr_eval.c_create_proc_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RProc = type { %struct.TYPE_36__, %struct.TYPE_31__*, i32, %struct.TYPE_34__ }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_34__ = type { %struct.REnv* }
%struct.REnv = type { %struct.TYPE_35__*, i32, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_39__*, %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i32, %struct.RClass*, %struct.TYPE_31__*, %struct.REnv*, i32, i32 }
%struct.RClass = type { i32 }
%struct.TYPE_38__ = type { %struct.TYPE_35__* }
%struct.TYPE_37__ = type { i16, i8*, i8*, i8* }
%struct.mrb_parser_state = type { i64, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i8*, i32 }
%struct.RBasic = type { i32 }

@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Binding of eval must be nil.\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(eval)\00", align 1
@TRUE = common dso_local global i8* null, align 8
@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to create parser state.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c" file %S line %S: %S\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" line %S: %S\00", align 1
@E_SYNTAX_ERROR = common dso_local global i32 0, align 4
@E_SCRIPT_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"codegen error\00", align 1
@MRB_TT_ENV = common dso_local global i32 0, align 4
@MRB_PROC_ENVSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RProc* (%struct.TYPE_38__*, i8*, i64, i32, i8*, i64)* @create_proc_from_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RProc* @create_proc_from_string(%struct.TYPE_38__* %0, i8* %1, i64 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_38__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_37__*, align 8
  %14 = alloca %struct.mrb_parser_state*, align 8
  %15 = alloca %struct.RProc*, align 8
  %16 = alloca %struct.REnv*, align 8
  %17 = alloca %struct.TYPE_39__*, align 8
  %18 = alloca %struct.RClass*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store %struct.RClass* null, %struct.RClass** %18, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @mrb_nil_p(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %6
  %25 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %26 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %27 = call i32 @mrb_raise(%struct.TYPE_38__* %25, i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %6
  %29 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %30 = call %struct.TYPE_37__* @mrbc_context_new(%struct.TYPE_38__* %29)
  store %struct.TYPE_37__* %30, %struct.TYPE_37__** %13, align 8
  %31 = load i64, i64* %12, align 8
  %32 = trunc i64 %31 to i16
  %33 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %33, i32 0, i32 0
  store i16 %32, i16* %34, align 8
  %35 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %36 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i8*, i8** %11, align 8
  br label %42

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i8* [ %40, %39 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %41 ]
  %44 = call i32 @mrbc_filename(%struct.TYPE_38__* %35, %struct.TYPE_37__* %36, i8* %43)
  %45 = load i8*, i8** @TRUE, align 8
  %46 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @TRUE, align 8
  %49 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @TRUE, align 8
  %52 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %58 = call %struct.mrb_parser_state* @mrb_parse_nstring(%struct.TYPE_38__* %54, i8* %55, i64 %56, %struct.TYPE_37__* %57)
  store %struct.mrb_parser_state* %58, %struct.mrb_parser_state** %14, align 8
  %59 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %60 = icmp ne %struct.mrb_parser_state* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %42
  %62 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %63 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %64 = call i32 @mrb_raise(%struct.TYPE_38__* %62, i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %42
  %66 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %67 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 0, %68
  br i1 %69, label %70, label %124

70:                                               ; preds = %65
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %94

73:                                               ; preds = %70
  %74 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %75 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @mrb_str_new_cstr(%struct.TYPE_38__* %75, i8* %76)
  %78 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %79 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %78, i32 0, i32 1
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @mrb_fixnum_value(i32 %83)
  %85 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %86 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %87 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %86, i32 0, i32 1
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @mrb_str_new_cstr(%struct.TYPE_38__* %85, i8* %91)
  %93 = call i32 (%struct.TYPE_38__*, i8*, i32, i32, ...) @mrb_format(%struct.TYPE_38__* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %84, i32 %92)
  store i32 %93, i32* %20, align 4
  br label %112

94:                                               ; preds = %70
  %95 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %96 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %97 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %96, i32 0, i32 1
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @mrb_fixnum_value(i32 %101)
  %103 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %104 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %105 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %104, i32 0, i32 1
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @mrb_str_new_cstr(%struct.TYPE_38__* %103, i8* %109)
  %111 = call i32 (%struct.TYPE_38__*, i8*, i32, i32, ...) @mrb_format(%struct.TYPE_38__* %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %102, i32 %110)
  store i32 %111, i32* %20, align 4
  br label %112

112:                                              ; preds = %94, %73
  %113 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %114 = call i32 @mrb_parser_free(%struct.mrb_parser_state* %113)
  %115 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %116 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %117 = call i32 @mrbc_context_free(%struct.TYPE_38__* %115, %struct.TYPE_37__* %116)
  %118 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %119 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %120 = load i32, i32* @E_SYNTAX_ERROR, align 4
  %121 = load i32, i32* %20, align 4
  %122 = call i32 @mrb_exc_new_str(%struct.TYPE_38__* %119, i32 %120, i32 %121)
  %123 = call i32 @mrb_exc_raise(%struct.TYPE_38__* %118, i32 %122)
  br label %124

124:                                              ; preds = %112, %65
  %125 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %126 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %127 = call %struct.RProc* @mrb_generate_code(%struct.TYPE_38__* %125, %struct.mrb_parser_state* %126)
  store %struct.RProc* %127, %struct.RProc** %15, align 8
  %128 = load %struct.RProc*, %struct.RProc** %15, align 8
  %129 = icmp eq %struct.RProc* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %124
  %131 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %132 = call i32 @mrb_parser_free(%struct.mrb_parser_state* %131)
  %133 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %134 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %135 = call i32 @mrbc_context_free(%struct.TYPE_38__* %133, %struct.TYPE_37__* %134)
  %136 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %137 = load i32, i32* @E_SCRIPT_ERROR, align 4
  %138 = call i32 @mrb_raise(%struct.TYPE_38__* %136, i32 %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %139

139:                                              ; preds = %130, %124
  %140 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_35__*, %struct.TYPE_35__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_39__*, %struct.TYPE_39__** %143, align 8
  %145 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_35__*, %struct.TYPE_35__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_39__*, %struct.TYPE_39__** %148, align 8
  %150 = icmp ugt %struct.TYPE_39__* %144, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %139
  %152 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_35__*, %struct.TYPE_35__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_39__*, %struct.TYPE_39__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %156, i64 -1
  store %struct.TYPE_39__* %157, %struct.TYPE_39__** %17, align 8
  br label %164

158:                                              ; preds = %139
  %159 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_35__*, %struct.TYPE_35__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_39__*, %struct.TYPE_39__** %162, align 8
  store %struct.TYPE_39__* %163, %struct.TYPE_39__** %17, align 8
  br label %164

164:                                              ; preds = %158, %151
  %165 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %166 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %166, align 8
  %168 = icmp ne %struct.TYPE_31__* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %171, align 8
  %173 = call %struct.RClass* @MRB_PROC_TARGET_CLASS(%struct.TYPE_31__* %172)
  store %struct.RClass* %173, %struct.RClass** %18, align 8
  br label %174

174:                                              ; preds = %169, %164
  %175 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_31__*, %struct.TYPE_31__** %176, align 8
  %178 = icmp ne %struct.TYPE_31__* %177, null
  br i1 %178, label %179, label %260

179:                                              ; preds = %174
  %180 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %181, align 8
  %183 = call i32 @MRB_PROC_CFUNC_P(%struct.TYPE_31__* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %260, label %185

185:                                              ; preds = %179
  %186 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %187 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %186, i32 0, i32 3
  %188 = load %struct.REnv*, %struct.REnv** %187, align 8
  %189 = icmp ne %struct.REnv* %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %191, i32 0, i32 3
  %193 = load %struct.REnv*, %struct.REnv** %192, align 8
  store %struct.REnv* %193, %struct.REnv** %16, align 8
  br label %244

194:                                              ; preds = %185
  %195 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %196 = load i32, i32* @MRB_TT_ENV, align 4
  %197 = load %struct.RClass*, %struct.RClass** %18, align 8
  %198 = call i64 @mrb_obj_alloc(%struct.TYPE_38__* %195, i32 %196, %struct.RClass* %197)
  %199 = inttoptr i64 %198 to %struct.REnv*
  store %struct.REnv* %199, %struct.REnv** %16, align 8
  %200 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %201 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.REnv*, %struct.REnv** %16, align 8
  %204 = getelementptr inbounds %struct.REnv, %struct.REnv* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 4
  %205 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %206 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %205, i64 1
  %207 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.REnv*, %struct.REnv** %16, align 8
  %210 = getelementptr inbounds %struct.REnv, %struct.REnv* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 8
  %211 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_35__*, %struct.TYPE_35__** %212, align 8
  %214 = load %struct.REnv*, %struct.REnv** %16, align 8
  %215 = getelementptr inbounds %struct.REnv, %struct.REnv* %214, i32 0, i32 0
  store %struct.TYPE_35__* %213, %struct.TYPE_35__** %215, align 8
  %216 = load %struct.REnv*, %struct.REnv** %16, align 8
  %217 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %218 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_31__*, %struct.TYPE_31__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @MRB_ENV_SET_STACK_LEN(%struct.REnv* %216, i32 %224)
  %226 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %227 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  store i32 %228, i32* %19, align 4
  %229 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %230 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %194
  store i32 2, i32* %19, align 4
  br label %237

234:                                              ; preds = %194
  %235 = load i32, i32* %19, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %19, align 4
  br label %237

237:                                              ; preds = %234, %233
  %238 = load %struct.REnv*, %struct.REnv** %16, align 8
  %239 = load i32, i32* %19, align 4
  %240 = call i32 @MRB_ENV_SET_BIDX(%struct.REnv* %238, i32 %239)
  %241 = load %struct.REnv*, %struct.REnv** %16, align 8
  %242 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %243 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %242, i32 0, i32 3
  store %struct.REnv* %241, %struct.REnv** %243, align 8
  br label %244

244:                                              ; preds = %237, %190
  %245 = load %struct.REnv*, %struct.REnv** %16, align 8
  %246 = load %struct.RProc*, %struct.RProc** %15, align 8
  %247 = getelementptr inbounds %struct.RProc, %struct.RProc* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %247, i32 0, i32 0
  store %struct.REnv* %245, %struct.REnv** %248, align 8
  %249 = load i32, i32* @MRB_PROC_ENVSET, align 4
  %250 = load %struct.RProc*, %struct.RProc** %15, align 8
  %251 = getelementptr inbounds %struct.RProc, %struct.RProc* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 8
  %254 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %255 = load %struct.RProc*, %struct.RProc** %15, align 8
  %256 = bitcast %struct.RProc* %255 to %struct.RBasic*
  %257 = load %struct.REnv*, %struct.REnv** %16, align 8
  %258 = bitcast %struct.REnv* %257 to %struct.RBasic*
  %259 = call i32 @mrb_field_write_barrier(%struct.TYPE_38__* %254, %struct.RBasic* %256, %struct.RBasic* %258)
  br label %260

260:                                              ; preds = %244, %179, %174
  %261 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %262 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_31__*, %struct.TYPE_31__** %262, align 8
  %264 = load %struct.RProc*, %struct.RProc** %15, align 8
  %265 = getelementptr inbounds %struct.RProc, %struct.RProc* %264, i32 0, i32 1
  store %struct.TYPE_31__* %263, %struct.TYPE_31__** %265, align 8
  %266 = load %struct.RClass*, %struct.RClass** %18, align 8
  %267 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_35__*, %struct.TYPE_35__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_39__*, %struct.TYPE_39__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %271, i32 0, i32 1
  store %struct.RClass* %266, %struct.RClass** %272, align 8
  %273 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %274 = load %struct.RProc*, %struct.RProc** %15, align 8
  %275 = getelementptr inbounds %struct.RProc, %struct.RProc* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.RProc*, %struct.RProc** %15, align 8
  %279 = getelementptr inbounds %struct.RProc, %struct.RProc* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @patch_irep(%struct.TYPE_38__* %273, i32 %277, i32 0, i32 %281)
  %283 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %284 = call i32 @mrb_parser_free(%struct.mrb_parser_state* %283)
  %285 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %286 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %287 = call i32 @mrbc_context_free(%struct.TYPE_38__* %285, %struct.TYPE_37__* %286)
  %288 = load %struct.RProc*, %struct.RProc** %15, align 8
  ret %struct.RProc* %288
}

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_raise(%struct.TYPE_38__*, i32, i8*) #1

declare dso_local %struct.TYPE_37__* @mrbc_context_new(%struct.TYPE_38__*) #1

declare dso_local i32 @mrbc_filename(%struct.TYPE_38__*, %struct.TYPE_37__*, i8*) #1

declare dso_local %struct.mrb_parser_state* @mrb_parse_nstring(%struct.TYPE_38__*, i8*, i64, %struct.TYPE_37__*) #1

declare dso_local i32 @mrb_format(%struct.TYPE_38__*, i8*, i32, i32, ...) #1

declare dso_local i32 @mrb_str_new_cstr(%struct.TYPE_38__*, i8*) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32 @mrb_parser_free(%struct.mrb_parser_state*) #1

declare dso_local i32 @mrbc_context_free(%struct.TYPE_38__*, %struct.TYPE_37__*) #1

declare dso_local i32 @mrb_exc_raise(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @mrb_exc_new_str(%struct.TYPE_38__*, i32, i32) #1

declare dso_local %struct.RProc* @mrb_generate_code(%struct.TYPE_38__*, %struct.mrb_parser_state*) #1

declare dso_local %struct.RClass* @MRB_PROC_TARGET_CLASS(%struct.TYPE_31__*) #1

declare dso_local i32 @MRB_PROC_CFUNC_P(%struct.TYPE_31__*) #1

declare dso_local i64 @mrb_obj_alloc(%struct.TYPE_38__*, i32, %struct.RClass*) #1

declare dso_local i32 @MRB_ENV_SET_STACK_LEN(%struct.REnv*, i32) #1

declare dso_local i32 @MRB_ENV_SET_BIDX(%struct.REnv*, i32) #1

declare dso_local i32 @mrb_field_write_barrier(%struct.TYPE_38__*, %struct.RBasic*, %struct.RBasic*) #1

declare dso_local i32 @patch_irep(%struct.TYPE_38__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
