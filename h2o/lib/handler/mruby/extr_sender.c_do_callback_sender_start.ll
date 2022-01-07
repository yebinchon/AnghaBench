; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_sender.c_do_callback_sender_start.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_sender.c_do_callback_sender_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_10__, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.st_h2o_mruby_callback_sender_t = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@H2O_MRUBY_SENDER_PROC_EACH_TO_FIBER = common dso_local global i32 0, align 4
@H2O_SEND_STATE_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @do_callback_sender_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_callback_sender_start(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.st_h2o_mruby_callback_sender_t*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.st_h2o_mruby_callback_sender_t*
  store %struct.st_h2o_mruby_callback_sender_t* %11, %struct.st_h2o_mruby_callback_sender_t** %3, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @H2O_MRUBY_SENDER_PROC_EACH_TO_FIBER, align 4
  %27 = call i32 @mrb_ary_entry(i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @mrb_ary_new_capa(i32* %28, i32 2)
  store i32 %29, i32* %6, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %3, align 8
  %33 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mrb_ary_set(i32* %30, i32 %31, i32 0, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @mrb_ary_set(i32* %37, i32 %38, i32 1, i32 %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @h2o_mruby_run_fiber(%struct.TYPE_13__* %46, i32 %47, i32 %48, i32 0)
  %50 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %3, align 8
  %51 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %1
  %56 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %3, align 8
  %57 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %55
  %62 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %3, align 8
  %63 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %62, i32 0, i32 0
  %64 = call i32 @h2o_doublebuffer_prepare_empty(%struct.TYPE_14__* %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %66 = load i32, i32* @H2O_SEND_STATE_IN_PROGRESS, align 4
  %67 = call i32 @h2o_mruby_sender_do_send(%struct.TYPE_12__* %65, i32* null, i32 0, i32 %66)
  br label %68

68:                                               ; preds = %61, %55, %1
  ret void
}

declare dso_local i32 @mrb_ary_entry(i32, i32) #1

declare dso_local i32 @mrb_ary_new_capa(i32*, i32) #1

declare dso_local i32 @mrb_ary_set(i32*, i32, i32, i32) #1

declare dso_local i32 @h2o_mruby_run_fiber(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @h2o_doublebuffer_prepare_empty(%struct.TYPE_14__*) #1

declare dso_local i32 @h2o_mruby_sender_do_send(%struct.TYPE_12__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
