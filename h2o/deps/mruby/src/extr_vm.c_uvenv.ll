; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_vm.c_uvenv.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_vm.c_uvenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.REnv = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.REnv*, %struct.RProc* }
%struct.RProc = type { %struct.RProc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.REnv* (%struct.TYPE_6__*, i32)* @uvenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.REnv* @uvenv(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.REnv*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.RProc*, align 8
  %7 = alloca %struct.REnv*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.RProc*, %struct.RProc** %15, align 8
  store %struct.RProc* %16, %struct.RProc** %6, align 8
  br label %17

17:                                               ; preds = %28, %2
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %5, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.RProc*, %struct.RProc** %6, align 8
  %23 = getelementptr inbounds %struct.RProc, %struct.RProc* %22, i32 0, i32 0
  %24 = load %struct.RProc*, %struct.RProc** %23, align 8
  store %struct.RProc* %24, %struct.RProc** %6, align 8
  %25 = load %struct.RProc*, %struct.RProc** %6, align 8
  %26 = icmp ne %struct.RProc* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store %struct.REnv* null, %struct.REnv** %3, align 8
  br label %66

28:                                               ; preds = %21
  br label %17

29:                                               ; preds = %17
  %30 = load %struct.RProc*, %struct.RProc** %6, align 8
  %31 = call %struct.REnv* @MRB_PROC_ENV(%struct.RProc* %30)
  store %struct.REnv* %31, %struct.REnv** %7, align 8
  %32 = load %struct.REnv*, %struct.REnv** %7, align 8
  %33 = icmp ne %struct.REnv* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load %struct.REnv*, %struct.REnv** %7, align 8
  store %struct.REnv* %35, %struct.REnv** %3, align 8
  br label %66

36:                                               ; preds = %29
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %8, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %9, align 8
  br label %47

47:                                               ; preds = %61, %36
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = icmp ule %struct.TYPE_7__* %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load %struct.RProc*, %struct.RProc** %53, align 8
  %55 = load %struct.RProc*, %struct.RProc** %6, align 8
  %56 = icmp eq %struct.RProc* %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.REnv*, %struct.REnv** %59, align 8
  store %struct.REnv* %60, %struct.REnv** %3, align 8
  br label %66

61:                                               ; preds = %51
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 -1
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %8, align 8
  br label %47

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64
  store %struct.REnv* null, %struct.REnv** %3, align 8
  br label %66

66:                                               ; preds = %65, %57, %34, %27
  %67 = load %struct.REnv*, %struct.REnv** %3, align 8
  ret %struct.REnv* %67
}

declare dso_local %struct.REnv* @MRB_PROC_ENV(%struct.RProc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
