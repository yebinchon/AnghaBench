; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-require/src/extr_require.c_mrb_require_load_rb_str.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-require/src/extr_require.c_mrb_require_load_rb_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }

@__const.mrb_require_load_rb_str.tmpname = private unnamed_addr constant [13 x i8] c"tmp.XXXXXXXX\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"S|S\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"can't create mkstemp() at mrb_require_load_rb_str\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"can't open temporay file at mrb_require_load_rb_str\00", align 1
@MRB_DUMP_OK = common dso_local global i32 0, align 4
@E_LOAD_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"can't load file -- %S\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @mrb_require_load_rb_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_require_load_rb_str(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [13 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %15 = bitcast [13 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.mrb_require_load_rb_str.tmpname, i32 0, i32 0), i64 13, i1 false)
  store i32* null, i32** %9, align 8
  store i32 -1, i32* %10, align 4
  %16 = call i32 (...) @mrb_nil_value()
  store i32 %16, i32* %14, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = call i32 @mrb_get_args(%struct.TYPE_11__* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %13, i32* %14)
  %19 = load i32, i32* %14, align 4
  %20 = call i32 @mrb_string_p(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = call i32 @mrb_str_new_cstr(%struct.TYPE_11__* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %14, align 4
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = load i32, i32* %14, align 4
  %28 = call i8* @mrb_str_to_cstr(%struct.TYPE_11__* %26, i32 %27)
  store i8* %28, i8** %6, align 8
  %29 = call i32 @umask(i32 63)
  store i32 %29, i32* %8, align 4
  %30 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  %31 = call i32 @mkstemp(i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = call i32 @mrb_sys_fail(%struct.TYPE_11__* %35, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %25
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @umask(i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = call i32* @fdopen(i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @close(i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = call i32 @mrb_sys_fail(%struct.TYPE_11__* %47, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %37
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @RSTRING_PTR(i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @RSTRING_LEN(i32 %53)
  %55 = load i8*, i8** %6, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @compile_rb2mrb(%struct.TYPE_11__* %50, i32 %52, i32 %54, i8* %55, i32* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @MRB_DUMP_OK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %49
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @fclose(i32* %62)
  %64 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  %65 = call i32 @remove(i8* %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = load i32, i32* @E_LOAD_ERROR, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @mrb_raisef(%struct.TYPE_11__* %66, i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  %70 = call i32 (...) @mrb_nil_value()
  store i32 %70, i32* %3, align 4
  br label %107

71:                                               ; preds = %49
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @rewind(i32* %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32* @mrb_read_irep_file(%struct.TYPE_11__* %74, i32* %75)
  store i32* %76, i32** %12, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @fclose(i32* %77)
  %79 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  %80 = call i32 @remove(i8* %79)
  %81 = load i32*, i32** %12, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %71
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @eval_load_irep(%struct.TYPE_11__* %84, i32* %85)
  br label %105

87:                                               ; preds = %71
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @longjmp(i32 %97, i32 1) #4
  unreachable

99:                                               ; preds = %87
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %101 = load i32, i32* @E_LOAD_ERROR, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @mrb_raisef(%struct.TYPE_11__* %100, i32 %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = call i32 (...) @mrb_nil_value()
  store i32 %104, i32* %3, align 4
  br label %107

105:                                              ; preds = %83
  %106 = call i32 (...) @mrb_true_value()
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %99, %61
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mrb_nil_value(...) #2

declare dso_local i32 @mrb_get_args(%struct.TYPE_11__*, i8*, i32*, i32*) #2

declare dso_local i32 @mrb_string_p(i32) #2

declare dso_local i32 @mrb_str_new_cstr(%struct.TYPE_11__*, i8*) #2

declare dso_local i8* @mrb_str_to_cstr(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @umask(i32) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @mrb_sys_fail(%struct.TYPE_11__*, i8*) #2

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @compile_rb2mrb(%struct.TYPE_11__*, i32, i32, i8*, i32*) #2

declare dso_local i32 @RSTRING_PTR(i32) #2

declare dso_local i32 @RSTRING_LEN(i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @remove(i8*) #2

declare dso_local i32 @mrb_raisef(%struct.TYPE_11__*, i32, i8*, i32) #2

declare dso_local i32 @rewind(i32*) #2

declare dso_local i32* @mrb_read_irep_file(%struct.TYPE_11__*, i32*) #2

declare dso_local i32 @eval_load_irep(%struct.TYPE_11__*, i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @longjmp(i32, i32) #3

declare dso_local i32 @mrb_true_value(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
