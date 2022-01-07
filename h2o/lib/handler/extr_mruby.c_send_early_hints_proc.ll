; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_send_early_hints_proc.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_send_early_hints_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"H\00", align 1
@handle_early_hints_header = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_early_hints_proc(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = call i32 @mrb_get_args(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %6)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = call i32 @mrb_proc_cfunc_env_get(%struct.TYPE_13__* %11, i32 0)
  %13 = call %struct.TYPE_14__* @h2o_mruby_get_generator(%struct.TYPE_13__* %10, i32 %12)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %7, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %15 = icmp eq %struct.TYPE_14__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @mrb_nil_value()
  store i32 %17, i32* %3, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @handle_early_hints_header, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = call i32 @h2o_mruby_iterate_rack_headers(i32 %21, i32 %22, i32 %23, %struct.TYPE_15__* %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %36

29:                                               ; preds = %18
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mrb_obj_value(i32 %33)
  %35 = call i32 @mrb_exc_raise(%struct.TYPE_13__* %30, i32 %34)
  br label %36

36:                                               ; preds = %29, %18
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store i32 103, i32* %41, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = call i32 @h2o_send_informational(%struct.TYPE_15__* %44)
  %46 = call i32 (...) @mrb_nil_value()
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %36, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @mrb_get_args(%struct.TYPE_13__*, i8*, i32*) #1

declare dso_local %struct.TYPE_14__* @h2o_mruby_get_generator(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @mrb_proc_cfunc_env_get(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @h2o_mruby_iterate_rack_headers(i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @mrb_exc_raise(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @mrb_obj_value(i32) #1

declare dso_local i32 @h2o_send_informational(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
