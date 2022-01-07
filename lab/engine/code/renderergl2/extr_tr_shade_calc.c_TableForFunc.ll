; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_TableForFunc.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_TableForFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float*, float*, float*, float*, float* }
%struct.TYPE_8__ = type { i32 (i32, i8*, i32, i32)* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@tr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ri = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"TableForFunc called with invalid function '%d' in shader '%s'\00", align 1
@tess = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (i32)* @TableForFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @TableForFunc(i32 %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %16 [
    i32 130, label %5
    i32 128, label %7
    i32 129, label %9
    i32 131, label %11
    i32 133, label %13
    i32 132, label %15
  ]

5:                                                ; preds = %1
  %6 = load float*, float** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 8
  store float* %6, float** %2, align 8
  br label %25

7:                                                ; preds = %1
  %8 = load float*, float** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 1), align 8
  store float* %8, float** %2, align 8
  br label %25

9:                                                ; preds = %1
  %10 = load float*, float** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 2), align 8
  store float* %10, float** %2, align 8
  br label %25

11:                                               ; preds = %1
  %12 = load float*, float** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 3), align 8
  store float* %12, float** %2, align 8
  br label %25

13:                                               ; preds = %1
  %14 = load float*, float** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 4), align 8
  store float* %14, float** %2, align 8
  br label %25

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %1, %15
  br label %17

17:                                               ; preds = %16
  %18 = load i32 (i32, i8*, i32, i32)*, i32 (i32, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %19 = load i32, i32* @ERR_DROP, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 %18(i32 %19, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  store float* null, float** %2, align 8
  br label %25

25:                                               ; preds = %17, %13, %11, %9, %7, %5
  %26 = load float*, float** %2, align 8
  ret float* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
