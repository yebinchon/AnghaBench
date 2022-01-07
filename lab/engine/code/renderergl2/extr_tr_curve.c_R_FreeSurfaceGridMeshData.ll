; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_curve.c_R_FreeSurfaceGridMeshData.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_curve.c_R_FreeSurfaceGridMeshData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32)* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@ri = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @R_FreeSurfaceGridMeshData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_FreeSurfaceGridMeshData(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 0), align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call i32 %3(i32 %6)
  %8 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 0), align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 %8(i32 %11)
  %13 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 0), align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 %13(i32 %16)
  %18 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 0), align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 %18(i32 %21)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
