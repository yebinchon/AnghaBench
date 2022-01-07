; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-objectspace/src/extr_mruby_objectspace.c_os_each_object.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-objectspace/src/extr_mruby_objectspace.c_os_each_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.os_each_object_data = type { i64, i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"&|C\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Expected block in ObjectSpace.each_object.\00", align 1
@os_each_object_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @os_each_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_each_object(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.os_each_object_data, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @mrb_nil_value()
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds %struct.os_each_object_data, %struct.os_each_object_data* %6, i32 0, i32 2
  %10 = call i32 @mrb_get_args(i32* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %5)
  %11 = getelementptr inbounds %struct.os_each_object_data, %struct.os_each_object_data* %6, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @mrb_nil_p(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %18 = call i32 @mrb_raise(i32* %16, i32 %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @mrb_nil_p(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = call i32* @mrb_class_ptr(i32 %25)
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i32* [ null, %23 ], [ %26, %24 ]
  %29 = getelementptr inbounds %struct.os_each_object_data, %struct.os_each_object_data* %6, i32 0, i32 1
  store i32* %28, i32** %29, align 8
  %30 = getelementptr inbounds %struct.os_each_object_data, %struct.os_each_object_data* %6, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @os_each_object_cb, align 4
  %33 = call i32 @mrb_objspace_each_objects(i32* %31, i32 %32, %struct.os_each_object_data* %6)
  %34 = getelementptr inbounds %struct.os_each_object_data, %struct.os_each_object_data* %6, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @mrb_fixnum_value(i64 %35)
  ret i32 %36
}

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32* @mrb_class_ptr(i32) #1

declare dso_local i32 @mrb_objspace_each_objects(i32*, i32, %struct.os_each_object_data*) #1

declare dso_local i32 @mrb_fixnum_value(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
