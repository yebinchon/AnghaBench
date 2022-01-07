; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_proc.c_closure_setup.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_proc.c_closure_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.REnv* }
%struct.REnv = type { %struct.RClass* }
%struct.RClass = type { i32 }
%struct.RProc = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.RProc* }
%struct.TYPE_13__ = type { %struct.REnv* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.RBasic = type { i32 }

@MRB_PROC_ENVSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.RProc*)* @closure_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @closure_setup(%struct.TYPE_14__* %0, %struct.RProc* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.RProc*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.RProc*, align 8
  %7 = alloca %struct.REnv*, align 8
  %8 = alloca %struct.RClass*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.RProc* %1, %struct.RProc** %4, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %5, align 8
  %14 = load %struct.RProc*, %struct.RProc** %4, align 8
  %15 = getelementptr inbounds %struct.RProc, %struct.RProc* %14, i32 0, i32 3
  %16 = load %struct.RProc*, %struct.RProc** %15, align 8
  store %struct.RProc* %16, %struct.RProc** %6, align 8
  store %struct.REnv* null, %struct.REnv** %7, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = icmp ne %struct.TYPE_15__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.REnv*, %struct.REnv** %21, align 8
  %23 = icmp ne %struct.REnv* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.REnv*, %struct.REnv** %26, align 8
  store %struct.REnv* %27, %struct.REnv** %7, align 8
  br label %59

28:                                               ; preds = %19, %2
  %29 = load %struct.RProc*, %struct.RProc** %6, align 8
  %30 = icmp ne %struct.RProc* %29, null
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = load %struct.RProc*, %struct.RProc** %4, align 8
  %33 = call %struct.RClass* @MRB_PROC_TARGET_CLASS(%struct.RProc* %32)
  store %struct.RClass* %33, %struct.RClass** %8, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = load %struct.RProc*, %struct.RProc** %6, align 8
  %36 = getelementptr inbounds %struct.RProc, %struct.RProc* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.REnv* @env_new(%struct.TYPE_14__* %34, i32 %40)
  store %struct.REnv* %41, %struct.REnv** %7, align 8
  %42 = load %struct.REnv*, %struct.REnv** %7, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store %struct.REnv* %42, %struct.REnv** %44, align 8
  %45 = load %struct.RClass*, %struct.RClass** %8, align 8
  %46 = icmp ne %struct.RClass* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %31
  %48 = load %struct.RClass*, %struct.RClass** %8, align 8
  %49 = load %struct.REnv*, %struct.REnv** %7, align 8
  %50 = getelementptr inbounds %struct.REnv, %struct.REnv* %49, i32 0, i32 0
  store %struct.RClass* %48, %struct.RClass** %50, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = load %struct.REnv*, %struct.REnv** %7, align 8
  %53 = bitcast %struct.REnv* %52 to %struct.RBasic*
  %54 = load %struct.RClass*, %struct.RClass** %8, align 8
  %55 = bitcast %struct.RClass* %54 to %struct.RBasic*
  %56 = call i32 @mrb_field_write_barrier(%struct.TYPE_14__* %51, %struct.RBasic* %53, %struct.RBasic* %55)
  br label %57

57:                                               ; preds = %47, %31
  br label %58

58:                                               ; preds = %57, %28
  br label %59

59:                                               ; preds = %58, %24
  %60 = load %struct.REnv*, %struct.REnv** %7, align 8
  %61 = icmp ne %struct.REnv* %60, null
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load %struct.REnv*, %struct.REnv** %7, align 8
  %64 = load %struct.RProc*, %struct.RProc** %4, align 8
  %65 = getelementptr inbounds %struct.RProc, %struct.RProc* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  store %struct.REnv* %63, %struct.REnv** %66, align 8
  %67 = load i32, i32* @MRB_PROC_ENVSET, align 4
  %68 = load %struct.RProc*, %struct.RProc** %4, align 8
  %69 = getelementptr inbounds %struct.RProc, %struct.RProc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = load %struct.RProc*, %struct.RProc** %4, align 8
  %74 = bitcast %struct.RProc* %73 to %struct.RBasic*
  %75 = load %struct.REnv*, %struct.REnv** %7, align 8
  %76 = bitcast %struct.REnv* %75 to %struct.RBasic*
  %77 = call i32 @mrb_field_write_barrier(%struct.TYPE_14__* %72, %struct.RBasic* %74, %struct.RBasic* %76)
  br label %78

78:                                               ; preds = %62, %59
  ret void
}

declare dso_local %struct.RClass* @MRB_PROC_TARGET_CLASS(%struct.RProc*) #1

declare dso_local %struct.REnv* @env_new(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @mrb_field_write_barrier(%struct.TYPE_14__*, %struct.RBasic*, %struct.RBasic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
