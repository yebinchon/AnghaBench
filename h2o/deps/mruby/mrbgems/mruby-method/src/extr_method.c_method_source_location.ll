; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-method/src/extr_method.c_method_source_location.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-method/src/extr_method.c_method_source_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.RClass* }
%struct.RClass = type { i32 }
%struct.RProc = type { %struct.RClass* }

@.str = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"source_location\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @method_source_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_source_location(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.RProc*, align 8
  %8 = alloca %struct.RClass*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = call i32 @mrb_intern_lit(%struct.TYPE_6__* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @mrb_iv_get(%struct.TYPE_6__* %10, i32 %11, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @mrb_nil_p(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @mrb_nil_value()
  store i32 %19, i32* %3, align 4
  br label %38

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.RProc* @mrb_proc_ptr(i32 %21)
  store %struct.RProc* %22, %struct.RProc** %7, align 8
  %23 = load %struct.RProc*, %struct.RProc** %7, align 8
  %24 = getelementptr inbounds %struct.RProc, %struct.RProc* %23, i32 0, i32 0
  %25 = load %struct.RClass*, %struct.RClass** %24, align 8
  store %struct.RClass* %25, %struct.RClass** %8, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.RClass*, %struct.RClass** %27, align 8
  %29 = load %struct.RProc*, %struct.RProc** %7, align 8
  %30 = getelementptr inbounds %struct.RProc, %struct.RProc* %29, i32 0, i32 0
  store %struct.RClass* %28, %struct.RClass** %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @mrb_funcall(%struct.TYPE_6__* %31, i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.RClass*, %struct.RClass** %8, align 8
  %35 = load %struct.RProc*, %struct.RProc** %7, align 8
  %36 = getelementptr inbounds %struct.RProc, %struct.RProc* %35, i32 0, i32 0
  store %struct.RClass* %34, %struct.RClass** %36, align 8
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %20, %18
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @mrb_iv_get(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local %struct.RProc* @mrb_proc_ptr(i32) #1

declare dso_local i32 @mrb_funcall(%struct.TYPE_6__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
