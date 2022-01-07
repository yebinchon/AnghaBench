; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_channel.c_channel_initialize_method.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_channel.c_channel_initialize_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.st_h2o_mruby_channel_context_t = type { i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"@queue\00", align 1
@channel_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @channel_initialize_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_initialize_method(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.st_h2o_mruby_channel_context_t*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %5, align 8
  %10 = call %struct.st_h2o_mruby_channel_context_t* @h2o_mem_alloc(i32 16)
  store %struct.st_h2o_mruby_channel_context_t* %10, %struct.st_h2o_mruby_channel_context_t** %6, align 8
  %11 = load %struct.st_h2o_mruby_channel_context_t*, %struct.st_h2o_mruby_channel_context_t** %6, align 8
  %12 = call i32 @memset(%struct.st_h2o_mruby_channel_context_t* %11, i32 0, i32 16)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.st_h2o_mruby_channel_context_t*, %struct.st_h2o_mruby_channel_context_t** %6, align 8
  %23 = getelementptr inbounds %struct.st_h2o_mruby_channel_context_t, %struct.st_h2o_mruby_channel_context_t* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = call i32 @mrb_ary_new(%struct.TYPE_8__* %24)
  %26 = load %struct.st_h2o_mruby_channel_context_t*, %struct.st_h2o_mruby_channel_context_t** %6, align 8
  %27 = getelementptr inbounds %struct.st_h2o_mruby_channel_context_t, %struct.st_h2o_mruby_channel_context_t* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = load %struct.st_h2o_mruby_channel_context_t*, %struct.st_h2o_mruby_channel_context_t** %6, align 8
  %30 = getelementptr inbounds %struct.st_h2o_mruby_channel_context_t, %struct.st_h2o_mruby_channel_context_t* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mrb_gc_register(%struct.TYPE_8__* %28, i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = call i32 @mrb_intern_lit(%struct.TYPE_8__* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = call i32 @mrb_ary_new(%struct.TYPE_8__* %37)
  %39 = call i32 @mrb_iv_set(%struct.TYPE_8__* %33, i32 %34, i32 %36, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.st_h2o_mruby_channel_context_t*, %struct.st_h2o_mruby_channel_context_t** %6, align 8
  %42 = call i32 @mrb_data_init(i32 %40, %struct.st_h2o_mruby_channel_context_t* %41, i32* @channel_type)
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.st_h2o_mruby_channel_context_t* @h2o_mem_alloc(i32) #1

declare dso_local i32 @memset(%struct.st_h2o_mruby_channel_context_t*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mrb_ary_new(%struct.TYPE_8__*) #1

declare dso_local i32 @mrb_gc_register(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mrb_iv_set(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @mrb_data_init(i32, %struct.st_h2o_mruby_channel_context_t*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
