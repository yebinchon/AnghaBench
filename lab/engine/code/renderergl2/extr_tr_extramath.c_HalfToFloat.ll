; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_extramath.c_HalfToFloat.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_extramath.c_HalfToFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.f32_u = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%union.f16_u = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @HalfToFloat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.f32_u, align 4
  %4 = alloca %union.f16_u, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = bitcast %union.f16_u* %4 to i32*
  store i32 %5, i32* %6, align 8
  %7 = bitcast %union.f16_u* %4 to %struct.TYPE_4__*
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = add nsw i32 %10, 112
  %12 = bitcast %union.f32_u* %3 to %struct.TYPE_3__*
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = bitcast %union.f16_u* %4 to %struct.TYPE_4__*
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 %16, 13
  %18 = bitcast %union.f32_u* %3 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = bitcast %union.f16_u* %4 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = bitcast %union.f32_u* %3 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = bitcast %union.f32_u* %3 to float*
  %26 = load float, float* %25, align 4
  ret float %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
