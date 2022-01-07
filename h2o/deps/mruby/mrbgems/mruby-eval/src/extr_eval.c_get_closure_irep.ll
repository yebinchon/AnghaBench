; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-eval/src/extr_eval.c_get_closure_irep.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-eval/src/extr_eval.c_get_closure_irep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_irep = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.RProc* }
%struct.RProc = type { %struct.TYPE_8__, %struct.RProc* }
%struct.TYPE_8__ = type { %struct.mrb_irep* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mrb_irep* (%struct.TYPE_9__*, i32)* @get_closure_irep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mrb_irep* @get_closure_irep(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.mrb_irep*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.RProc*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 -1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.RProc*, %struct.RProc** %13, align 8
  store %struct.RProc* %14, %struct.RProc** %6, align 8
  br label %15

15:                                               ; preds = %23, %2
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %5, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.RProc*, %struct.RProc** %6, align 8
  %21 = icmp ne %struct.RProc* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store %struct.mrb_irep* null, %struct.mrb_irep** %3, align 8
  br label %41

23:                                               ; preds = %19
  %24 = load %struct.RProc*, %struct.RProc** %6, align 8
  %25 = getelementptr inbounds %struct.RProc, %struct.RProc* %24, i32 0, i32 1
  %26 = load %struct.RProc*, %struct.RProc** %25, align 8
  store %struct.RProc* %26, %struct.RProc** %6, align 8
  br label %15

27:                                               ; preds = %15
  %28 = load %struct.RProc*, %struct.RProc** %6, align 8
  %29 = icmp ne %struct.RProc* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store %struct.mrb_irep* null, %struct.mrb_irep** %3, align 8
  br label %41

31:                                               ; preds = %27
  %32 = load %struct.RProc*, %struct.RProc** %6, align 8
  %33 = call i64 @MRB_PROC_CFUNC_P(%struct.RProc* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store %struct.mrb_irep* null, %struct.mrb_irep** %3, align 8
  br label %41

36:                                               ; preds = %31
  %37 = load %struct.RProc*, %struct.RProc** %6, align 8
  %38 = getelementptr inbounds %struct.RProc, %struct.RProc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.mrb_irep*, %struct.mrb_irep** %39, align 8
  store %struct.mrb_irep* %40, %struct.mrb_irep** %3, align 8
  br label %41

41:                                               ; preds = %36, %35, %30, %22
  %42 = load %struct.mrb_irep*, %struct.mrb_irep** %3, align 8
  ret %struct.mrb_irep* %42
}

declare dso_local i64 @MRB_PROC_CFUNC_P(%struct.RProc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
