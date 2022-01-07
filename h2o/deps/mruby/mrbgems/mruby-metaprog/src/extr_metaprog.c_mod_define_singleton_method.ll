; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-metaprog/src/extr_metaprog.c_mod_define_singleton_method.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-metaprog/src/extr_metaprog.c_mod_define_singleton_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.RProc = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"n&\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"no block given\00", align 1
@MRB_TT_PROC = common dso_local global i32 0, align 4
@MRB_PROC_STRICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @mod_define_singleton_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mod_define_singleton_method(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RProc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @mrb_nil_value()
  store i32 %9, i32* %8, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = call i32 @mrb_get_args(%struct.TYPE_8__* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %8)
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @mrb_nil_p(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %18 = call i32 @mrb_raise(%struct.TYPE_8__* %16, i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = load i32, i32* @MRB_TT_PROC, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @mrb_obj_alloc(%struct.TYPE_8__* %20, i32 %21, i32 %24)
  %26 = inttoptr i64 %25 to %struct.RProc*
  store %struct.RProc* %26, %struct.RProc** %5, align 8
  %27 = load %struct.RProc*, %struct.RProc** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @mrb_proc_ptr(i32 %28)
  %30 = call i32 @mrb_proc_copy(%struct.RProc* %27, i32 %29)
  %31 = load i32, i32* @MRB_PROC_STRICT, align 4
  %32 = load %struct.RProc*, %struct.RProc** %5, align 8
  %33 = getelementptr inbounds %struct.RProc, %struct.RProc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.RProc*, %struct.RProc** %5, align 8
  %38 = call i32 @MRB_METHOD_FROM_PROC(i32 %36, %struct.RProc* %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @mrb_singleton_class(%struct.TYPE_8__* %40, i32 %41)
  %43 = call i32 @mrb_class_ptr(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @mrb_define_method_raw(%struct.TYPE_8__* %39, i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @mrb_symbol_value(i32 %47)
  ret i32 %48
}

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_get_args(%struct.TYPE_8__*, i8*, i32*, i32*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_raise(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i64 @mrb_obj_alloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mrb_proc_copy(%struct.RProc*, i32) #1

declare dso_local i32 @mrb_proc_ptr(i32) #1

declare dso_local i32 @MRB_METHOD_FROM_PROC(i32, %struct.RProc*) #1

declare dso_local i32 @mrb_define_method_raw(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @mrb_class_ptr(i32) #1

declare dso_local i32 @mrb_singleton_class(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mrb_symbol_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
