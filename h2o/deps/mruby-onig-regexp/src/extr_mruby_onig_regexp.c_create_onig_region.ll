; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_create_onig_region.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_create_onig_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MRB_TT_DATA = common dso_local global i64 0, align 8
@mrb_onig_regexp_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"OnigMatchData\00", align 1
@mrb_onig_region_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"regexp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @create_onig_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_onig_region(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @mrb_string_p(i32 %8)
  %10 = call i32 @mrb_assert(i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @mrb_type(i32 %11)
  %13 = load i64, i64* @MRB_TT_DATA, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = call i32* @DATA_TYPE(i32 %16)
  %18 = icmp eq i32* %17, @mrb_onig_regexp_type
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi i1 [ false, %3 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @mrb_assert(i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @mrb_class_get(i32* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 (...) @onig_region_new()
  %27 = call i32 @mrb_data_object_alloc(i32* %23, i32 %25, i32 %26, i32* @mrb_onig_region_type)
  %28 = call i32 @mrb_obj_value(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @mrb_intern_lit(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @mrb_str_dup(i32* %33, i32 %34)
  %36 = call i32 @mrb_iv_set(i32* %29, i32 %30, i32 %32, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @mrb_intern_lit(i32* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @mrb_iv_set(i32* %37, i32 %38, i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i32 @mrb_string_p(i32) #1

declare dso_local i64 @mrb_type(i32) #1

declare dso_local i32* @DATA_TYPE(i32) #1

declare dso_local i32 @mrb_obj_value(i32) #1

declare dso_local i32 @mrb_data_object_alloc(i32*, i32, i32, i32*) #1

declare dso_local i32 @mrb_class_get(i32*, i8*) #1

declare dso_local i32 @onig_region_new(...) #1

declare dso_local i32 @mrb_iv_set(i32*, i32, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_str_dup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
