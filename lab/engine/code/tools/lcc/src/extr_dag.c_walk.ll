; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_dag.c_walk.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_dag.c_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@forest = common dso_local global %struct.TYPE_6__* null, align 8
@IR = common dso_local global %struct.TYPE_8__* null, align 8
@Gen = common dso_local global i32 0, align 4
@STMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @walk(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @listnodes(i32 %8, i32 %9, i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @forest, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @forest, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @forest, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @IR, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load i32*, i32** %7, align 8
  %26 = call i32* @undag(i32* %25)
  store i32* %26, i32** %7, align 8
  br label %27

27:                                               ; preds = %24, %14
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @Gen, align 4
  %30 = call %struct.TYPE_7__* @code(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32* %28, i32** %32, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @forest, align 8
  br label %33

33:                                               ; preds = %27, %3
  %34 = call i32 (...) @reset()
  %35 = load i32, i32* @STMT, align 4
  %36 = call i32 @deallocate(i32 %35)
  ret void
}

declare dso_local i32 @listnodes(i32, i32, i32) #1

declare dso_local i32* @undag(i32*) #1

declare dso_local %struct.TYPE_7__* @code(i32) #1

declare dso_local i32 @reset(...) #1

declare dso_local i32 @deallocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
