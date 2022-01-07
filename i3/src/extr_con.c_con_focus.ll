; ModuleID = '/home/carl/AnghaBench/i3/src/extr_con.c_con_focus.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_con.c_con_focus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_14__*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"con_focus = %p\0A\00", align 1
@focused = common dso_local global %struct.TYPE_14__* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"urgent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @con_focus(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %3 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %4 = icmp ne %struct.TYPE_14__* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = call i32 @DLOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %7)
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** @focused, align 8
  %15 = call i32 @TAILQ_REMOVE(i32* %12, %struct.TYPE_14__* %13, %struct.TYPE_14__* %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** @focused, align 8
  %22 = call i32 @TAILQ_INSERT_HEAD(i32* %19, %struct.TYPE_14__* %20, %struct.TYPE_14__* %21)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = icmp ne %struct.TYPE_14__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  call void @con_focus(%struct.TYPE_14__* %32)
  br label %33

33:                                               ; preds = %29, %1
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** @focused, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = call i64 @con_is_leaf(%struct.TYPE_14__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %45 = call i32 @con_set_urgency(%struct.TYPE_14__* %44, i32 0)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %47 = call i32 @con_update_parents_urgency(%struct.TYPE_14__* %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %49 = call i32 @con_get_workspace(%struct.TYPE_14__* %48)
  %50 = call i32 @workspace_update_urgent_flag(i32 %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %52 = call i32 @ipc_send_window_event(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_14__* %51)
  br label %53

53:                                               ; preds = %43, %39, %33
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DLOG(i8*, %struct.TYPE_14__*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i64 @con_is_leaf(%struct.TYPE_14__*) #1

declare dso_local i32 @con_set_urgency(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @con_update_parents_urgency(%struct.TYPE_14__*) #1

declare dso_local i32 @workspace_update_urgent_flag(i32) #1

declare dso_local i32 @con_get_workspace(%struct.TYPE_14__*) #1

declare dso_local i32 @ipc_send_window_event(i8*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
