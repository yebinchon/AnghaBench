; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_redis.c_h2o_mruby_redis_init_context.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_redis.c_h2o_mruby_redis_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.RClass = type { i32 }

@H2O_MRUBY_CODE_REDIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"(h2o)lib/handler/mruby/embedded/redis.rb\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"H2O\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"_h2o__redis_join_reply\00", align 1
@redis_join_reply_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Redis\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"__setup\00", align 1
@setup_method = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"__connect\00", align 1
@connect_method = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"disconnected?\00", align 1
@disconnected_method = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@disconnect_method = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"__call\00", align 1
@call_method = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_mruby_redis_init_context(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.RClass*, align 8
  %5 = alloca %struct.RClass*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @H2O_MRUBY_CODE_REDIS, align 4
  %11 = call i32 @h2o_mruby_eval_expr_location(i32* %9, i32 %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 1)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @h2o_mruby_assert(i32* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.RClass* @mrb_define_module(i32* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.RClass* %15, %struct.RClass** %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @redis_join_reply_callback, align 4
  %18 = call i32 @h2o_mruby_define_callback(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.RClass*, %struct.RClass** %4, align 8
  %21 = call %struct.RClass* @mrb_class_get_under(i32* %19, %struct.RClass* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store %struct.RClass* %21, %struct.RClass** %5, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.RClass*, %struct.RClass** %5, align 8
  %24 = load i32, i32* @setup_method, align 4
  %25 = call i32 (...) @MRB_ARGS_NONE()
  %26 = call i32 @mrb_define_method(i32* %22, %struct.RClass* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.RClass*, %struct.RClass** %5, align 8
  %29 = load i32, i32* @connect_method, align 4
  %30 = call i32 (...) @MRB_ARGS_NONE()
  %31 = call i32 @mrb_define_method(i32* %27, %struct.RClass* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load %struct.RClass*, %struct.RClass** %5, align 8
  %34 = load i32, i32* @disconnected_method, align 4
  %35 = call i32 (...) @MRB_ARGS_NONE()
  %36 = call i32 @mrb_define_method(i32* %32, %struct.RClass* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.RClass*, %struct.RClass** %5, align 8
  %39 = load i32, i32* @disconnect_method, align 4
  %40 = call i32 (...) @MRB_ARGS_NONE()
  %41 = call i32 @mrb_define_method(i32* %37, %struct.RClass* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.RClass*, %struct.RClass** %5, align 8
  %44 = load i32, i32* @call_method, align 4
  %45 = call i32 @MRB_ARGS_ARG(i32 1, i32 0)
  %46 = call i32 @mrb_define_method(i32* %42, %struct.RClass* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @h2o_mruby_eval_expr_location(i32*, i32, i8*, i32) #1

declare dso_local i32 @h2o_mruby_assert(i32*) #1

declare dso_local %struct.RClass* @mrb_define_module(i32*, i8*) #1

declare dso_local i32 @h2o_mruby_define_callback(i32*, i8*, i32) #1

declare dso_local %struct.RClass* @mrb_class_get_under(i32*, %struct.RClass*, i8*) #1

declare dso_local i32 @mrb_define_method(i32*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @MRB_ARGS_ARG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
