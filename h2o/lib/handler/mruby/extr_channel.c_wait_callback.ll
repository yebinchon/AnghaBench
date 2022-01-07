; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_channel.c_wait_callback.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_channel.c_wait_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.st_h2o_mruby_channel_context_t = type { i32 }

@channel_type = common dso_local global i32 0, align 4
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Channel#shift wrong self\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*, i32, i32*)* @wait_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_callback(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.st_h2o_mruby_channel_context_t*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @mrb_ary_entry(i32 %20, i32 0)
  %22 = call %struct.st_h2o_mruby_channel_context_t* @mrb_data_check_get_ptr(i32* %19, i32 %21, i32* @channel_type)
  store %struct.st_h2o_mruby_channel_context_t* %22, %struct.st_h2o_mruby_channel_context_t** %13, align 8
  %23 = icmp eq %struct.st_h2o_mruby_channel_context_t* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %27 = call i32 @mrb_exc_new_str_lit(i32* %25, i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %6, align 4
  br label %37

28:                                               ; preds = %5
  %29 = load i32*, i32** %12, align 8
  %30 = load %struct.st_h2o_mruby_channel_context_t*, %struct.st_h2o_mruby_channel_context_t** %13, align 8
  %31 = getelementptr inbounds %struct.st_h2o_mruby_channel_context_t, %struct.st_h2o_mruby_channel_context_t* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mrb_ary_push(i32* %29, i32 %32, i32 %34)
  %36 = call i32 (...) @mrb_nil_value()
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %28, %24
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local %struct.st_h2o_mruby_channel_context_t* @mrb_data_check_get_ptr(i32*, i32, i32*) #1

declare dso_local i32 @mrb_ary_entry(i32, i32) #1

declare dso_local i32 @mrb_exc_new_str_lit(i32*, i32, i8*) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
