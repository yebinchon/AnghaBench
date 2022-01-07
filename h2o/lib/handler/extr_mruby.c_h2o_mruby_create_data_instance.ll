; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_h2o_mruby_create_data_instance.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_h2o_mruby_create_data_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }
%struct.RData = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_mruby_create_data_instance(i32* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.RClass*, align 8
  %10 = alloca %struct.RData*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.RClass* @mrb_class_ptr(i32 %11)
  store %struct.RClass* %12, %struct.RClass** %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.RClass*, %struct.RClass** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call %struct.RData* @mrb_data_object_alloc(i32* %13, %struct.RClass* %14, i8* %15, i32* %16)
  store %struct.RData* %17, %struct.RData** %10, align 8
  %18 = load %struct.RData*, %struct.RData** %10, align 8
  %19 = call i32 @mrb_obj_value(%struct.RData* %18)
  ret i32 %19
}

declare dso_local %struct.RClass* @mrb_class_ptr(i32) #1

declare dso_local %struct.RData* @mrb_data_object_alloc(i32*, %struct.RClass*, i8*, i32*) #1

declare dso_local i32 @mrb_obj_value(%struct.RData*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
