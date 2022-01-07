; ModuleID = '/home/carl/AnghaBench/i3/src/extr_con.c_con_new_skeleton.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_con.c_con_new_skeleton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@con_on_remove_child = common dso_local global i32 0, align 4
@all_cons = common dso_local global i32 0, align 4
@CT_CON = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@root_depth = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"opening window\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @con_new_skeleton(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %6 = call %struct.TYPE_12__* @scalloc(i32 1, i32 48)
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %5, align 8
  %7 = load i32, i32* @con_on_remove_child, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 10
  store i32 %7, i32* %9, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = load i32, i32* @all_cons, align 4
  %12 = call i32 @TAILQ_INSERT_TAIL(i32* @all_cons, %struct.TYPE_12__* %10, i32 %11)
  %13 = load i32, i32* @CT_CON, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 9
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %18, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  br label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @root_depth, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = call i32 @DLOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 5
  %40 = call i32 @TAILQ_INIT(i32* %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 4
  %43 = call i32 @TAILQ_INIT(i32* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = call i32 @TAILQ_INIT(i32* %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = call i32 @TAILQ_INIT(i32* %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = call i32 @TAILQ_INIT(i32* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = icmp ne %struct.TYPE_12__* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %36
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = call i32 @con_attach(%struct.TYPE_12__* %56, %struct.TYPE_12__* %57, i32 0)
  br label %59

59:                                               ; preds = %55, %36
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %60
}

declare dso_local %struct.TYPE_12__* @scalloc(i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @con_attach(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
