; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_proc.c_mrb_proc_new.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_proc.c_mrb_proc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RProc = type { %struct.TYPE_10__, %struct.TYPE_9__, i64 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.RClass* }
%struct.RClass = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.RClass* }

@MRB_TT_PROC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.RProc* @mrb_proc_new(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.RProc*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.RClass*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = load i32, i32* @MRB_TT_PROC, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @mrb_obj_alloc(%struct.TYPE_12__* %13, i32 %14, i32 %17)
  %19 = inttoptr i64 %18 to %struct.RProc*
  store %struct.RProc* %19, %struct.RProc** %5, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = icmp ne %struct.TYPE_13__* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %2
  store %struct.RClass* null, %struct.RClass** %7, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.RClass* @MRB_PROC_TARGET_CLASS(i64 %30)
  store %struct.RClass* %31, %struct.RClass** %7, align 8
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.RClass*, %struct.RClass** %7, align 8
  %34 = icmp eq %struct.RClass* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load %struct.RClass*, %struct.RClass** %37, align 8
  store %struct.RClass* %38, %struct.RClass** %7, align 8
  br label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.RProc*, %struct.RProc** %5, align 8
  %44 = getelementptr inbounds %struct.RProc, %struct.RProc* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.RClass*, %struct.RClass** %7, align 8
  %46 = load %struct.RProc*, %struct.RProc** %5, align 8
  %47 = getelementptr inbounds %struct.RProc, %struct.RProc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store %struct.RClass* %45, %struct.RClass** %48, align 8
  br label %49

49:                                               ; preds = %39, %2
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.RProc*, %struct.RProc** %5, align 8
  %52 = getelementptr inbounds %struct.RProc, %struct.RProc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i32* %50, i32** %53, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @mrb_irep_incref(%struct.TYPE_12__* %54, i32* %55)
  %57 = load %struct.RProc*, %struct.RProc** %5, align 8
  ret %struct.RProc* %57
}

declare dso_local i64 @mrb_obj_alloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.RClass* @MRB_PROC_TARGET_CLASS(i64) #1

declare dso_local i32 @mrb_irep_incref(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
