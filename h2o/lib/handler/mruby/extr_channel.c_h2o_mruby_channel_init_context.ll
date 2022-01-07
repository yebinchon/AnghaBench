; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_channel.c_h2o_mruby_channel_init_context.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_channel.c_h2o_mruby_channel_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }
%struct.RClass = type { i32 }

@H2O_MRUBY_CODE_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"(h2o)lib/handler/mruby/embedded/channel.rb\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"H2O\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Channel\00", align 1
@MRB_TT_DATA = common dso_local global i32 0, align 4
@H2O_MRUBY_CHANNEL_CLASS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@channel_initialize_method = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"_notify\00", align 1
@channel_notify_method = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"_h2o__channel_wait\00", align 1
@wait_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_mruby_channel_init_context(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.RClass*, align 8
  %5 = alloca %struct.RClass*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @H2O_MRUBY_CODE_CHANNEL, align 4
  %11 = call i32 @h2o_mruby_eval_expr_location(i32* %9, i32 %10, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 1)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @h2o_mruby_assert(i32* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.RClass* @mrb_define_module(i32* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.RClass* %15, %struct.RClass** %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.RClass*, %struct.RClass** %4, align 8
  %18 = call %struct.RClass* @mrb_class_get_under(i32* %16, %struct.RClass* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store %struct.RClass* %18, %struct.RClass** %5, align 8
  %19 = load %struct.RClass*, %struct.RClass** %5, align 8
  %20 = load i32, i32* @MRB_TT_DATA, align 4
  %21 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %19, i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @H2O_MRUBY_CHANNEL_CLASS, align 4
  %27 = load %struct.RClass*, %struct.RClass** %5, align 8
  %28 = call i32 @mrb_obj_value(%struct.RClass* %27)
  %29 = call i32 @mrb_ary_set(i32* %22, i32 %25, i32 %26, i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.RClass*, %struct.RClass** %5, align 8
  %32 = load i32, i32* @channel_initialize_method, align 4
  %33 = call i32 (...) @MRB_ARGS_NONE()
  %34 = call i32 @mrb_define_method(i32* %30, %struct.RClass* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.RClass*, %struct.RClass** %5, align 8
  %37 = load i32, i32* @channel_notify_method, align 4
  %38 = call i32 (...) @MRB_ARGS_NONE()
  %39 = call i32 @mrb_define_method(i32* %35, %struct.RClass* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @wait_callback, align 4
  %42 = call i32 @h2o_mruby_define_callback(i32* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  ret void
}

declare dso_local i32 @h2o_mruby_eval_expr_location(i32*, i32, i8*, i32) #1

declare dso_local i32 @h2o_mruby_assert(i32*) #1

declare dso_local %struct.RClass* @mrb_define_module(i32*, i8*) #1

declare dso_local %struct.RClass* @mrb_class_get_under(i32*, %struct.RClass*, i8*) #1

declare dso_local i32 @MRB_SET_INSTANCE_TT(%struct.RClass*, i32) #1

declare dso_local i32 @mrb_ary_set(i32*, i32, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local i32 @mrb_define_method(i32*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @h2o_mruby_define_callback(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
