; ModuleID = '/home/carl/AnghaBench/i3/src/extr_x.c_x_set_shape.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_x.c_x_set_shape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.con_state = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"window state for con %p not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Received unknown shape event kind for con %p. This is a bug.\0A\00", align 1
@conn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x_set_shape(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.con_state*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.con_state* @state_for_frame(i32 %11)
  store %struct.con_state* %12, %struct.con_state** %7, align 8
  %13 = icmp eq %struct.con_state* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = call i32 @ELOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %15)
  br label %52

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %31 [
    i32 129, label %19
    i32 128, label %25
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  br label %34

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  br label %34

31:                                               ; preds = %17
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = call i32 @ELOG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %32)
  br label %52

34:                                               ; preds = %25, %19
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = call i64 @con_is_floating(%struct.TYPE_11__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @x_shape_frame(%struct.TYPE_11__* %42, i32 %43)
  br label %49

45:                                               ; preds = %38
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @x_unshape_frame(%struct.TYPE_11__* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* @conn, align 4
  %51 = call i32 @xcb_flush(i32 %50)
  br label %52

52:                                               ; preds = %14, %31, %49, %34
  ret void
}

declare dso_local %struct.con_state* @state_for_frame(i32) #1

declare dso_local i32 @ELOG(i8*, %struct.TYPE_11__*) #1

declare dso_local i64 @con_is_floating(%struct.TYPE_11__*) #1

declare dso_local i32 @x_shape_frame(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @x_unshape_frame(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @xcb_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
