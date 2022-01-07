; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-errno/src/extr_errno.c_mrb_sce_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-errno/src/extr_errno.c_mrb_sce_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"o|i\00", align 1
@MRB_TT_FIXNUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"Errno\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Errno2class\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"errno\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Unknown error: \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"mesg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_sce_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_sce_init(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [20 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @mrb_get_args(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %7, i64* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @mrb_type(i32 %18)
  %20 = load i64, i64* @MRB_TT_FIXNUM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @mrb_fixnum(i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = call i32 (...) @mrb_nil_value()
  store i32 %25, i32* %7, align 4
  br label %27

26:                                               ; preds = %17
  store i32 1, i32* %11, align 4
  br label %27

27:                                               ; preds = %26, %22
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %77, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @mrb_module_get(i32* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 @mrb_obj_value(i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @mrb_intern_lit(i32* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @mrb_const_get(i32* %32, i32 %35, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @mrb_fixnum_value(i64 %41)
  %43 = call i32 (...) @mrb_nil_value()
  %44 = call i32 @mrb_hash_fetch(i32* %39, i32 %40, i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @mrb_nil_p(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %31
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @mrb_class_ptr(i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = call %struct.TYPE_2__* @mrb_basic_ptr(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i8* @strerror(i64 %55)
  %57 = call i32 @mrb_str_new_cstr(i32* %54, i8* %56)
  store i32 %57, i32* %8, align 4
  br label %76

58:                                               ; preds = %31
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @mrb_intern_lit(i32* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @mrb_fixnum_value(i64 %63)
  %65 = call i32 @mrb_iv_set(i32* %59, i32 %60, i32 %62, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @mrb_str_new_cstr(i32* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 %67, i32* %8, align 4
  %68 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %69 = load i64, i64* %9, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @snprintf(i8* %68, i32 20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %8, align 4
  %74 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %75 = call i32 @mrb_str_cat2(i32* %72, i32 %73, i8* %74)
  br label %76

76:                                               ; preds = %58, %48
  br label %80

77:                                               ; preds = %28
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @mrb_str_new_cstr(i32* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %77, %76
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @mrb_nil_p(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @mrb_str_cat2(i32* %85, i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @mrb_str_append(i32* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %80
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @mrb_intern_lit(i32* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @mrb_iv_set(i32* %93, i32 %94, i32 %96, i32 %97)
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i64*) #1

declare dso_local i64 @mrb_type(i32) #1

declare dso_local i64 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_const_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_obj_value(i32) #1

declare dso_local i32 @mrb_module_get(i32*, i8*) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_hash_fetch(i32*, i32, i32, i32) #1

declare dso_local i32 @mrb_fixnum_value(i64) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_class_ptr(i32) #1

declare dso_local %struct.TYPE_2__* @mrb_basic_ptr(i32) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i8*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @mrb_iv_set(i32*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @mrb_str_cat2(i32*, i32, i8*) #1

declare dso_local i32 @mrb_str_append(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
