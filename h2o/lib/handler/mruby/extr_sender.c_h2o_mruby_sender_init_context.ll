; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_sender.c_h2o_mruby_sender_init_context.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_sender.c_h2o_mruby_sender_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@H2O_MRUBY_CODE_SENDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"(h2o)lib/handler/mruby/embedded/sender.rb\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"_h2o_sender_send_chunk\00", align 1
@send_chunk_method = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"_h2o_sender_send_chunk_eos\00", align 1
@send_chunk_eos_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"_h2o_sender_handle_error\00", align 1
@handle_error_callback = common dso_local global i32 0, align 4
@H2O_MRUBY_SENDER_PROC_EACH_TO_FIBER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"_h2o_sender_proc_each_to_fiber\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_mruby_sender_init_context(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = load i32, i32* @H2O_MRUBY_CODE_SENDER, align 4
  %9 = call i32 @h2o_mruby_eval_expr_location(%struct.TYPE_11__* %7, i32 %8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 1)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = call i32 @h2o_mruby_assert(%struct.TYPE_11__* %10)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @send_chunk_method, align 4
  %17 = call i32 @MRB_ARGS_ARG(i32 1, i32 0)
  %18 = call i32 @mrb_define_method(%struct.TYPE_11__* %12, i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = load i32, i32* @send_chunk_eos_callback, align 4
  %21 = call i32 @h2o_mruby_define_callback(%struct.TYPE_11__* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = load i32, i32* @handle_error_callback, align 4
  %24 = call i32 @h2o_mruby_define_callback(%struct.TYPE_11__* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @H2O_MRUBY_SENDER_PROC_EACH_TO_FIBER, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = call i32 @mrb_top_self(%struct.TYPE_11__* %31)
  %33 = call i32 @mrb_funcall(%struct.TYPE_11__* %30, i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %34 = call i32 @mrb_ary_set(%struct.TYPE_11__* %25, i32 %28, i32 %29, i32 %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = call i32 @h2o_mruby_assert(%struct.TYPE_11__* %35)
  ret void
}

declare dso_local i32 @h2o_mruby_eval_expr_location(%struct.TYPE_11__*, i32, i8*, i32) #1

declare dso_local i32 @h2o_mruby_assert(%struct.TYPE_11__*) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_11__*, i32, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_ARG(i32, i32) #1

declare dso_local i32 @h2o_mruby_define_callback(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @mrb_ary_set(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @mrb_funcall(%struct.TYPE_11__*, i32, i8*, i32) #1

declare dso_local i32 @mrb_top_self(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
