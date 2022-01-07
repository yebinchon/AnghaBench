; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-errno/src/extr_errno.c_mrb_sce_sys_fail.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-errno/src/extr_errno.c_mrb_sce_sys_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }
%struct.TYPE_2__ = type { %struct.RClass* }

@.str = private unnamed_addr constant [16 x i8] c"SystemCallError\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"i|S\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"E%03ld\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Errno\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_sce_sys_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_sce_sys_fail(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RClass*, align 8
  %6 = alloca %struct.RClass*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [8 x i8], align 1
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.RClass* @mrb_class_get(i32* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.RClass* %13, %struct.RClass** %6, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @mrb_get_args(i32* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %9, i32* %8)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.RClass*, %struct.RClass** %6, align 8
  %21 = call i32 @mrb_obj_value(%struct.RClass* %20)
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @mrb_fixnum_value(i64 %22)
  %24 = call i32 (i32*, i32, i8*, i32, i32, ...) @mrb_funcall(i32* %19, i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %23)
  store i32 %24, i32* %7, align 4
  br label %33

25:                                               ; preds = %2
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.RClass*, %struct.RClass** %6, align 8
  %28 = call i32 @mrb_obj_value(%struct.RClass* %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @mrb_fixnum_value(i64 %30)
  %32 = call i32 (i32*, i32, i8*, i32, i32, ...) @mrb_funcall(i32* %26, i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 2, i32 %29, i32 %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %25, %18
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.RClass* @mrb_obj_class(i32* %34, i32 %35)
  %37 = load %struct.RClass*, %struct.RClass** %6, align 8
  %38 = icmp eq %struct.RClass* %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @snprintf(i8* %40, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @mrb_module_get(i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %47 = load %struct.RClass*, %struct.RClass** %6, align 8
  %48 = call %struct.RClass* @mrb_define_class_under(i32* %43, i32 %45, i8* %46, %struct.RClass* %47)
  store %struct.RClass* %48, %struct.RClass** %5, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.RClass*, %struct.RClass** %5, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @mrb_fixnum_value(i64 %51)
  %53 = call i32 @mrb_define_const(i32* %49, %struct.RClass* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load %struct.RClass*, %struct.RClass** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call %struct.TYPE_2__* @mrb_basic_ptr(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store %struct.RClass* %54, %struct.RClass** %57, align 8
  br label %58

58:                                               ; preds = %39, %33
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @mrb_exc_raise(i32* %59, i32 %60)
  %62 = call i32 (...) @mrb_nil_value()
  ret i32 %62
}

declare dso_local %struct.RClass* @mrb_class_get(i32*, i8*) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i64*, i32*) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local i32 @mrb_fixnum_value(i64) #1

declare dso_local %struct.RClass* @mrb_obj_class(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local %struct.RClass* @mrb_define_class_under(i32*, i32, i8*, %struct.RClass*) #1

declare dso_local i32 @mrb_module_get(i32*, i8*) #1

declare dso_local i32 @mrb_define_const(i32*, %struct.RClass*, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @mrb_basic_ptr(i32) #1

declare dso_local i32 @mrb_exc_raise(i32*, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
