; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_csg.c_CullList.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_csg.c_CullList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @CullList(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %7

7:                                                ; preds = %25, %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = icmp eq %struct.TYPE_6__* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = call i32 @FreeBrush(%struct.TYPE_6__* %18)
  br label %25

20:                                               ; preds = %10
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %5, align 8
  br label %25

25:                                               ; preds = %20, %17
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %3, align 8
  br label %7

27:                                               ; preds = %7
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %28
}

declare dso_local i32 @FreeBrush(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
