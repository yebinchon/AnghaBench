; ModuleID = '/home/carl/AnghaBench/i3/src/extr_workspace.c_workspace_encapsulate.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_workspace.c_workspace_encapsulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_17__* }

@.str = private unnamed_addr constant [50 x i8] c"Workspace %p / %s has no children to encapsulate\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Moving children of workspace %p / %s into container %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @workspace_encapsulate(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__**, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %9 = call i64 @TAILQ_EMPTY(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ELOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %12, i32 %15)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %60

17:                                               ; preds = %1
  %18 = call %struct.TYPE_17__* @con_new(i32* null, i32* null)
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %4, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 3
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %21, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = call %struct.TYPE_17__** @get_focus_order(%struct.TYPE_17__* %27)
  store %struct.TYPE_17__** %28, %struct.TYPE_17__*** %5, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = call i32 @DLOG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_17__* %29, i32 %32, %struct.TYPE_17__* %33)
  br label %35

35:                                               ; preds = %41, %17
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = call i64 @TAILQ_EMPTY(i32* %37)
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = call %struct.TYPE_17__* @TAILQ_FIRST(i32* %43)
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %6, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = call i32 @con_detach(%struct.TYPE_17__* %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = call i32 @con_attach(%struct.TYPE_17__* %47, %struct.TYPE_17__* %48, i32 1)
  br label %35

50:                                               ; preds = %35
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %53 = call i32 @set_focus_order(%struct.TYPE_17__* %51, %struct.TYPE_17__** %52)
  %54 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %55 = call i32 @free(%struct.TYPE_17__** %54)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = call i32 @con_attach(%struct.TYPE_17__* %56, %struct.TYPE_17__* %57, i32 1)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %2, align 8
  br label %60

60:                                               ; preds = %50, %11
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  ret %struct.TYPE_17__* %61
}

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @ELOG(i8*, %struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_17__* @con_new(i32*, i32*) #1

declare dso_local %struct.TYPE_17__** @get_focus_order(%struct.TYPE_17__*) #1

declare dso_local i32 @DLOG(i8*, %struct.TYPE_17__*, i32, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @con_detach(%struct.TYPE_17__*) #1

declare dso_local i32 @con_attach(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @set_focus_order(%struct.TYPE_17__*, %struct.TYPE_17__**) #1

declare dso_local i32 @free(%struct.TYPE_17__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
