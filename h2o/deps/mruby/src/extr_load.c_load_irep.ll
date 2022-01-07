; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_load.c_load_irep.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_load.c_load_irep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.RProc = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_3__*)* @load_irep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_irep(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.RProc*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @irep_error(i32* %12)
  %14 = call i32 (...) @mrb_nil_value()
  store i32 %14, i32* %4, align 4
  br label %52

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call %struct.RProc* @mrb_proc_new(i32* %16, i32* %17)
  store %struct.RProc* %18, %struct.RProc** %8, align 8
  %19 = load %struct.RProc*, %struct.RProc** %8, align 8
  %20 = getelementptr inbounds %struct.RProc, %struct.RProc* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @mrb_irep_decref(i32* %21, i32* %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %15
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.RProc*, %struct.RProc** %8, align 8
  %34 = call i32 @mrb_codedump_all(i32* %32, %struct.RProc* %33)
  br label %35

35:                                               ; preds = %31, %26, %15
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.RProc*, %struct.RProc** %8, align 8
  %45 = call i32 @mrb_obj_value(%struct.RProc* %44)
  store i32 %45, i32* %4, align 4
  br label %52

46:                                               ; preds = %38, %35
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.RProc*, %struct.RProc** %8, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @mrb_top_self(i32* %49)
  %51 = call i32 @mrb_top_run(i32* %47, %struct.RProc* %48, i32 %50, i32 0)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %43, %11
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @irep_error(i32*) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local %struct.RProc* @mrb_proc_new(i32*, i32*) #1

declare dso_local i32 @mrb_irep_decref(i32*, i32*) #1

declare dso_local i32 @mrb_codedump_all(i32*, %struct.RProc*) #1

declare dso_local i32 @mrb_obj_value(%struct.RProc*) #1

declare dso_local i32 @mrb_top_run(i32*, %struct.RProc*, i32, i32) #1

declare dso_local i32 @mrb_top_self(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
