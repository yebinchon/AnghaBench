; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_PushEvent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_PushEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@Com_PushEvent.printedWarning = internal global i32 0, align 4
@com_pushedEvents = common dso_local global %struct.TYPE_4__* null, align 8
@com_pushedEventsHead = common dso_local global i32 0, align 4
@MAX_PUSHED_EVENTS = common dso_local global i32 0, align 4
@com_pushedEventsTail = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"WARNING: Com_PushEvent overflow\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_PushEvent(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_pushedEvents, align 8
  %5 = load i32, i32* @com_pushedEventsHead, align 4
  %6 = load i32, i32* @MAX_PUSHED_EVENTS, align 4
  %7 = sub nsw i32 %6, 1
  %8 = and i32 %5, %7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i64 %9
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %3, align 8
  %11 = load i32, i32* @com_pushedEventsHead, align 4
  %12 = load i32, i32* @com_pushedEventsTail, align 4
  %13 = sub nsw i32 %11, %12
  %14 = load i32, i32* @MAX_PUSHED_EVENTS, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  %17 = load i32, i32* @Com_PushEvent.printedWarning, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @qtrue, align 4
  store i32 %20, i32* @Com_PushEvent.printedWarning, align 4
  %21 = call i32 @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @Z_Free(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* @com_pushedEventsTail, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @com_pushedEventsTail, align 4
  br label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @qfalse, align 4
  store i32 %36, i32* @Com_PushEvent.printedWarning, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = bitcast %struct.TYPE_4__* %38 to i8*
  %41 = bitcast %struct.TYPE_4__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false)
  %42 = load i32, i32* @com_pushedEventsHead, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @com_pushedEventsHead, align 4
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @Z_Free(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
