; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-object-ext/src/extr_object.c_mrb_obj_instance_exec.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-object-ext/src/extr_object.c_mrb_obj_instance_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.RClass* }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"*&\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"no block given\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @mrb_obj_instance_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_obj_instance_exec(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.RClass*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = call i32 @mrb_get_args(%struct.TYPE_11__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32** %5, i32* %6, i32* %7)
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @mrb_nil_p(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %17 = call i32 @mrb_raise(%struct.TYPE_11__* %15, i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @mrb_type(i32 %19)
  switch i32 %20, label %22 [
    i32 128, label %21
    i32 130, label %21
    i32 129, label %21
  ]

21:                                               ; preds = %18, %18, %18
  store %struct.RClass* null, %struct.RClass** %8, align 8
  br label %27

22:                                               ; preds = %18
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @mrb_singleton_class(%struct.TYPE_11__* %23, i32 %24)
  %26 = call %struct.RClass* @mrb_class_ptr(i32 %25)
  store %struct.RClass* %26, %struct.RClass** %8, align 8
  br label %27

27:                                               ; preds = %22, %21
  %28 = load %struct.RClass*, %struct.RClass** %8, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store %struct.RClass* %28, %struct.RClass** %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @mrb_yield_cont(%struct.TYPE_11__* %35, i32 %36, i32 %37, i32 %38, i32* %39)
  ret i32 %40
}

declare dso_local i32 @mrb_get_args(%struct.TYPE_11__*, i8*, i32**, i32*, i32*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_raise(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @mrb_type(i32) #1

declare dso_local %struct.RClass* @mrb_class_ptr(i32) #1

declare dso_local i32 @mrb_singleton_class(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mrb_yield_cont(%struct.TYPE_11__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
