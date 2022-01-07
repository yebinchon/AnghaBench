; ModuleID = '/home/carl/AnghaBench/i3/src/extr_tree.c_level_down.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_tree.c_level_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }

@focused = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"cannot go down\0A\00", align 1
@CT_FLOATING_CON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @level_down() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** @focused, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = call %struct.TYPE_6__* @TAILQ_FIRST(i32* %5)
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @focused, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = call %struct.TYPE_6__* @TAILQ_END(i32* %9)
  %11 = icmp eq %struct.TYPE_6__* %7, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @DLOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %40

14:                                               ; preds = %0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CT_FLOATING_CON, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = call %struct.TYPE_6__* @TAILQ_FIRST(i32* %22)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %3, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = call %struct.TYPE_6__* @TAILQ_END(i32* %26)
  %28 = icmp eq %struct.TYPE_6__* %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = call i32 @DLOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %40

31:                                               ; preds = %20
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = call %struct.TYPE_6__* @TAILQ_FIRST(i32* %33)
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %2, align 8
  br label %35

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %14
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = call i32 @con_activate(%struct.TYPE_6__* %38)
  store i32 1, i32* %1, align 4
  br label %40

40:                                               ; preds = %37, %29, %12
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_6__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_6__* @TAILQ_END(i32*) #1

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @con_activate(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
