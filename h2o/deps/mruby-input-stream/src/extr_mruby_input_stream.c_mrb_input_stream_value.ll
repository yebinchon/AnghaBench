; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-input-stream/src/extr_mruby_input_stream.c_mrb_input_stream_value.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-input-stream/src/extr_mruby_input_stream.c_mrb_input_stream_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }
%struct.RData = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"InputStream\00", align 1
@mrb_input_stream_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_input_stream_value(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.RClass*, align 8
  %9 = alloca %struct.RData*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32* @mrb_input_stream_create(i32* %10, i8* %11, i32 %12, i32* null, i32* null)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.RClass* @mrb_class_get(i32* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.RClass* %15, %struct.RClass** %8, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.RClass*, %struct.RClass** %8, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call %struct.RData* @mrb_data_object_alloc(i32* %16, %struct.RClass* %17, i32* %18, i32* @mrb_input_stream_type)
  store %struct.RData* %19, %struct.RData** %9, align 8
  %20 = load %struct.RData*, %struct.RData** %9, align 8
  %21 = call i32 @mrb_obj_value(%struct.RData* %20)
  ret i32 %21
}

declare dso_local i32* @mrb_input_stream_create(i32*, i8*, i32, i32*, i32*) #1

declare dso_local %struct.RClass* @mrb_class_get(i32*, i8*) #1

declare dso_local %struct.RData* @mrb_data_object_alloc(i32*, %struct.RClass*, i32*, i32*) #1

declare dso_local i32 @mrb_obj_value(%struct.RData*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
