; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_mruby_string_ext_gem_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_mruby_string_ext_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.RClass*, %struct.RClass* }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@mrb_str_dump = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"getbyte\00", align 1
@mrb_str_getbyte = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"setbyte\00", align 1
@mrb_str_setbyte = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"byteslice\00", align 1
@mrb_str_byteslice = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"swapcase!\00", align 1
@mrb_str_swapcase_bang = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"swapcase\00", align 1
@mrb_str_swapcase = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@mrb_str_concat_m = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@mrb_str_count = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"tr\00", align 1
@mrb_str_tr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"tr!\00", align 1
@mrb_str_tr_bang = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"tr_s\00", align 1
@mrb_str_tr_s = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"tr_s!\00", align 1
@mrb_str_tr_s_bang = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"squeeze\00", align 1
@mrb_str_squeeze = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"squeeze!\00", align 1
@mrb_str_squeeze_bang = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@mrb_str_delete = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"delete!\00", align 1
@mrb_str_delete_bang = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [12 x i8] c"start_with?\00", align 1
@mrb_str_start_with = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"end_with?\00", align 1
@mrb_str_end_with = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@mrb_str_hex = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [4 x i8] c"oct\00", align 1
@mrb_str_oct = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [4 x i8] c"chr\00", align 1
@mrb_str_chr = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"succ\00", align 1
@mrb_str_succ = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"succ!\00", align 1
@mrb_str_succ_bang = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"next!\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"ord\00", align 1
@mrb_str_ord = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [15 x i8] c"delete_prefix!\00", align 1
@mrb_str_del_prefix_bang = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [14 x i8] c"delete_prefix\00", align 1
@mrb_str_del_prefix = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [15 x i8] c"delete_suffix!\00", align 1
@mrb_str_del_suffix_bang = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [14 x i8] c"delete_suffix\00", align 1
@mrb_str_del_suffix = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"__lines\00", align 1
@mrb_str_lines = common dso_local global i32 0, align 4
@mrb_fixnum_chr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_string_ext_gem_init(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = load %struct.RClass*, %struct.RClass** %5, align 8
  store %struct.RClass* %6, %struct.RClass** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.RClass*, %struct.RClass** %3, align 8
  %9 = load i32, i32* @mrb_str_dump, align 4
  %10 = call i32 (...) @MRB_ARGS_NONE()
  %11 = call i32 @mrb_define_method(%struct.TYPE_5__* %7, %struct.RClass* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = load %struct.RClass*, %struct.RClass** %3, align 8
  %14 = load i32, i32* @mrb_str_getbyte, align 4
  %15 = call i32 @MRB_ARGS_REQ(i32 1)
  %16 = call i32 @mrb_define_method(%struct.TYPE_5__* %12, %struct.RClass* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = load %struct.RClass*, %struct.RClass** %3, align 8
  %19 = load i32, i32* @mrb_str_setbyte, align 4
  %20 = call i32 @MRB_ARGS_REQ(i32 2)
  %21 = call i32 @mrb_define_method(%struct.TYPE_5__* %17, %struct.RClass* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = load %struct.RClass*, %struct.RClass** %3, align 8
  %24 = load i32, i32* @mrb_str_byteslice, align 4
  %25 = call i32 @MRB_ARGS_REQ(i32 1)
  %26 = call i32 @MRB_ARGS_OPT(i32 1)
  %27 = or i32 %25, %26
  %28 = call i32 @mrb_define_method(%struct.TYPE_5__* %22, %struct.RClass* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = load %struct.RClass*, %struct.RClass** %3, align 8
  %31 = load i32, i32* @mrb_str_swapcase_bang, align 4
  %32 = call i32 (...) @MRB_ARGS_NONE()
  %33 = call i32 @mrb_define_method(%struct.TYPE_5__* %29, %struct.RClass* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = load %struct.RClass*, %struct.RClass** %3, align 8
  %36 = load i32, i32* @mrb_str_swapcase, align 4
  %37 = call i32 (...) @MRB_ARGS_NONE()
  %38 = call i32 @mrb_define_method(%struct.TYPE_5__* %34, %struct.RClass* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = load %struct.RClass*, %struct.RClass** %3, align 8
  %41 = load i32, i32* @mrb_str_concat_m, align 4
  %42 = call i32 @MRB_ARGS_REQ(i32 1)
  %43 = call i32 @mrb_define_method(%struct.TYPE_5__* %39, %struct.RClass* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = load %struct.RClass*, %struct.RClass** %3, align 8
  %46 = load i32, i32* @mrb_str_concat_m, align 4
  %47 = call i32 @MRB_ARGS_REQ(i32 1)
  %48 = call i32 @mrb_define_method(%struct.TYPE_5__* %44, %struct.RClass* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = load %struct.RClass*, %struct.RClass** %3, align 8
  %51 = load i32, i32* @mrb_str_count, align 4
  %52 = call i32 @MRB_ARGS_REQ(i32 1)
  %53 = call i32 @mrb_define_method(%struct.TYPE_5__* %49, %struct.RClass* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = load %struct.RClass*, %struct.RClass** %3, align 8
  %56 = load i32, i32* @mrb_str_tr, align 4
  %57 = call i32 @MRB_ARGS_REQ(i32 2)
  %58 = call i32 @mrb_define_method(%struct.TYPE_5__* %54, %struct.RClass* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = load %struct.RClass*, %struct.RClass** %3, align 8
  %61 = load i32, i32* @mrb_str_tr_bang, align 4
  %62 = call i32 @MRB_ARGS_REQ(i32 2)
  %63 = call i32 @mrb_define_method(%struct.TYPE_5__* %59, %struct.RClass* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = load %struct.RClass*, %struct.RClass** %3, align 8
  %66 = load i32, i32* @mrb_str_tr_s, align 4
  %67 = call i32 @MRB_ARGS_REQ(i32 2)
  %68 = call i32 @mrb_define_method(%struct.TYPE_5__* %64, %struct.RClass* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = load %struct.RClass*, %struct.RClass** %3, align 8
  %71 = load i32, i32* @mrb_str_tr_s_bang, align 4
  %72 = call i32 @MRB_ARGS_REQ(i32 2)
  %73 = call i32 @mrb_define_method(%struct.TYPE_5__* %69, %struct.RClass* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = load %struct.RClass*, %struct.RClass** %3, align 8
  %76 = load i32, i32* @mrb_str_squeeze, align 4
  %77 = call i32 @MRB_ARGS_OPT(i32 1)
  %78 = call i32 @mrb_define_method(%struct.TYPE_5__* %74, %struct.RClass* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %80 = load %struct.RClass*, %struct.RClass** %3, align 8
  %81 = load i32, i32* @mrb_str_squeeze_bang, align 4
  %82 = call i32 @MRB_ARGS_OPT(i32 1)
  %83 = call i32 @mrb_define_method(%struct.TYPE_5__* %79, %struct.RClass* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = load %struct.RClass*, %struct.RClass** %3, align 8
  %86 = load i32, i32* @mrb_str_delete, align 4
  %87 = call i32 @MRB_ARGS_REQ(i32 1)
  %88 = call i32 @mrb_define_method(%struct.TYPE_5__* %84, %struct.RClass* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = load %struct.RClass*, %struct.RClass** %3, align 8
  %91 = load i32, i32* @mrb_str_delete_bang, align 4
  %92 = call i32 @MRB_ARGS_REQ(i32 1)
  %93 = call i32 @mrb_define_method(%struct.TYPE_5__* %89, %struct.RClass* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %95 = load %struct.RClass*, %struct.RClass** %3, align 8
  %96 = load i32, i32* @mrb_str_start_with, align 4
  %97 = call i32 (...) @MRB_ARGS_REST()
  %98 = call i32 @mrb_define_method(%struct.TYPE_5__* %94, %struct.RClass* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %100 = load %struct.RClass*, %struct.RClass** %3, align 8
  %101 = load i32, i32* @mrb_str_end_with, align 4
  %102 = call i32 (...) @MRB_ARGS_REST()
  %103 = call i32 @mrb_define_method(%struct.TYPE_5__* %99, %struct.RClass* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %105 = load %struct.RClass*, %struct.RClass** %3, align 8
  %106 = load i32, i32* @mrb_str_hex, align 4
  %107 = call i32 (...) @MRB_ARGS_NONE()
  %108 = call i32 @mrb_define_method(%struct.TYPE_5__* %104, %struct.RClass* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %110 = load %struct.RClass*, %struct.RClass** %3, align 8
  %111 = load i32, i32* @mrb_str_oct, align 4
  %112 = call i32 (...) @MRB_ARGS_NONE()
  %113 = call i32 @mrb_define_method(%struct.TYPE_5__* %109, %struct.RClass* %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %115 = load %struct.RClass*, %struct.RClass** %3, align 8
  %116 = load i32, i32* @mrb_str_chr, align 4
  %117 = call i32 (...) @MRB_ARGS_NONE()
  %118 = call i32 @mrb_define_method(%struct.TYPE_5__* %114, %struct.RClass* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %116, i32 %117)
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %120 = load %struct.RClass*, %struct.RClass** %3, align 8
  %121 = load i32, i32* @mrb_str_succ, align 4
  %122 = call i32 (...) @MRB_ARGS_NONE()
  %123 = call i32 @mrb_define_method(%struct.TYPE_5__* %119, %struct.RClass* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 %121, i32 %122)
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %125 = load %struct.RClass*, %struct.RClass** %3, align 8
  %126 = load i32, i32* @mrb_str_succ_bang, align 4
  %127 = call i32 (...) @MRB_ARGS_NONE()
  %128 = call i32 @mrb_define_method(%struct.TYPE_5__* %124, %struct.RClass* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %130 = load %struct.RClass*, %struct.RClass** %3, align 8
  %131 = call i32 @mrb_define_alias(%struct.TYPE_5__* %129, %struct.RClass* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %133 = load %struct.RClass*, %struct.RClass** %3, align 8
  %134 = call i32 @mrb_define_alias(%struct.TYPE_5__* %132, %struct.RClass* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %136 = load %struct.RClass*, %struct.RClass** %3, align 8
  %137 = load i32, i32* @mrb_str_ord, align 4
  %138 = call i32 (...) @MRB_ARGS_NONE()
  %139 = call i32 @mrb_define_method(%struct.TYPE_5__* %135, %struct.RClass* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i32 %137, i32 %138)
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %141 = load %struct.RClass*, %struct.RClass** %3, align 8
  %142 = load i32, i32* @mrb_str_del_prefix_bang, align 4
  %143 = call i32 @MRB_ARGS_REQ(i32 1)
  %144 = call i32 @mrb_define_method(%struct.TYPE_5__* %140, %struct.RClass* %141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i32 %142, i32 %143)
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %146 = load %struct.RClass*, %struct.RClass** %3, align 8
  %147 = load i32, i32* @mrb_str_del_prefix, align 4
  %148 = call i32 @MRB_ARGS_REQ(i32 1)
  %149 = call i32 @mrb_define_method(%struct.TYPE_5__* %145, %struct.RClass* %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 %147, i32 %148)
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %151 = load %struct.RClass*, %struct.RClass** %3, align 8
  %152 = load i32, i32* @mrb_str_del_suffix_bang, align 4
  %153 = call i32 @MRB_ARGS_REQ(i32 1)
  %154 = call i32 @mrb_define_method(%struct.TYPE_5__* %150, %struct.RClass* %151, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i32 %152, i32 %153)
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %156 = load %struct.RClass*, %struct.RClass** %3, align 8
  %157 = load i32, i32* @mrb_str_del_suffix, align 4
  %158 = call i32 @MRB_ARGS_REQ(i32 1)
  %159 = call i32 @mrb_define_method(%struct.TYPE_5__* %155, %struct.RClass* %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i32 %157, i32 %158)
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %161 = load %struct.RClass*, %struct.RClass** %3, align 8
  %162 = load i32, i32* @mrb_str_lines, align 4
  %163 = call i32 (...) @MRB_ARGS_NONE()
  %164 = call i32 @mrb_define_method(%struct.TYPE_5__* %160, %struct.RClass* %161, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i32 %162, i32 %163)
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load %struct.RClass*, %struct.RClass** %167, align 8
  %169 = load i32, i32* @mrb_fixnum_chr, align 4
  %170 = call i32 (...) @MRB_ARGS_NONE()
  %171 = call i32 @mrb_define_method(%struct.TYPE_5__* %165, %struct.RClass* %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %169, i32 %170)
  ret void
}

declare dso_local i32 @mrb_define_method(%struct.TYPE_5__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

declare dso_local i32 @MRB_ARGS_REST(...) #1

declare dso_local i32 @mrb_define_alias(%struct.TYPE_5__*, %struct.RClass*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
