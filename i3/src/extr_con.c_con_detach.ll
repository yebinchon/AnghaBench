; ModuleID = '/home/carl/AnghaBench/i3/src/extr_con.c_con_detach.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_con.c_con_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@CT_FLOATING_CON = common dso_local global i64 0, align 8
@floating_windows = common dso_local global i32 0, align 4
@focused = common dso_local global i32 0, align 4
@nodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @con_detach(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = call i32 @con_force_split_parents_redraw(%struct.TYPE_7__* %3)
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CT_FLOATING_CON, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = load i32, i32* @floating_windows, align 4
  %17 = call i32 @TAILQ_REMOVE(i32* %14, %struct.TYPE_7__* %15, i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = load i32, i32* @focused, align 4
  %24 = call i32 @TAILQ_REMOVE(i32* %21, %struct.TYPE_7__* %22, i32 %23)
  br label %40

25:                                               ; preds = %1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = load i32, i32* @nodes, align 4
  %32 = call i32 @TAILQ_REMOVE(i32* %29, %struct.TYPE_7__* %30, i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = load i32, i32* @focused, align 4
  %39 = call i32 @TAILQ_REMOVE(i32* %36, %struct.TYPE_7__* %37, i32 %38)
  br label %40

40:                                               ; preds = %25, %10
  ret void
}

declare dso_local i32 @con_force_split_parents_redraw(%struct.TYPE_7__*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
