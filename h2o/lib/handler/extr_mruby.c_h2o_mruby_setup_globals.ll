; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_h2o_mruby_setup_globals.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_h2o_mruby_setup_globals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"H2O_ROOT\00", align 1
@H2O_ROOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"$H2O_ROOT\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"$LOAD_PATH << \22#{$H2O_ROOT}/share/h2o/mruby\22\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"require \22#{$H2O_ROOT}/share/h2o/mruby/preloads.rb\22\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"LoadError\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Did you forget to run `make install`?\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"an error occurred while loading %s/%s: %s\0A%s\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"share/h2o/mruby/preloads.rb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_mruby_setup_globals(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @H2O_ROOT, align 4
  %10 = call i8* @H2O_TO_STR(i32 %9)
  store i8* %10, i8** %3, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = call i32 @mrb_intern_lit(%struct.TYPE_11__* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = call i32 @h2o_mruby_new_str(%struct.TYPE_11__* %15, i8* %16, i32 %18)
  %20 = call i32 @mrb_gv_set(%struct.TYPE_11__* %12, i32 %14, i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = call i32 @h2o_mruby_eval_expr(%struct.TYPE_11__* %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = call i32 @h2o_mruby_assert(%struct.TYPE_11__* %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = call i32 @h2o_mruby_eval_expr(%struct.TYPE_11__* %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %11
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @mrb_obj_value(i32* %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = call i32 @mrb_class_get(%struct.TYPE_11__* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %39 = call i64 @mrb_obj_is_instance_of(%struct.TYPE_11__* %32, i32 %36, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i8*, i8** %3, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @mrb_obj_value(i32* %47)
  %49 = call i32 @mrb_inspect(%struct.TYPE_11__* %44, i32 %48)
  %50 = call i32 @RSTRING_PTR(i32 %49)
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @h2o_fatal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %50, i8* %51)
  br label %53

53:                                               ; preds = %42, %11
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @H2O_TO_STR(i32) #1

declare dso_local i32 @mrb_gv_set(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @h2o_mruby_new_str(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @h2o_mruby_eval_expr(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @h2o_mruby_assert(%struct.TYPE_11__*) #1

declare dso_local i64 @mrb_obj_is_instance_of(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @mrb_obj_value(i32*) #1

declare dso_local i32 @mrb_class_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @h2o_fatal(i8*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i32 @mrb_inspect(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
