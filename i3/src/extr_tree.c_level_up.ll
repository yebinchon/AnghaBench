; ModuleID = '/home/carl/AnghaBench/i3/src/extr_tree.c_level_up.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_tree.c_level_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_4__* }

@focused = common dso_local global %struct.TYPE_3__* null, align 8
@CT_FLOATING_CON = common dso_local global i64 0, align 8
@CT_CON = common dso_local global i64 0, align 8
@CT_WORKSPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"'focus parent': Focus is already on the workspace, cannot go higher than that.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @level_up() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @focused, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CT_FLOATING_CON, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @focused, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @con_activate(%struct.TYPE_4__* %14)
  store i32 1, i32* %1, align 4
  br label %45

16:                                               ; preds = %0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @focused, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CT_CON, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @focused, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CT_WORKSPACE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %24, %16
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @focused, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CT_WORKSPACE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %24
  %39 = call i32 @ELOG(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %45

40:                                               ; preds = %32
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @focused, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @con_activate(%struct.TYPE_4__* %43)
  store i32 1, i32* %1, align 4
  br label %45

45:                                               ; preds = %40, %38, %9
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32 @con_activate(%struct.TYPE_4__*) #1

declare dso_local i32 @ELOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
