; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_QueueEvent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_QueueEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i8* }

@SE_MOUSE = common dso_local global i64 0, align 8
@eventHead = common dso_local global i32 0, align 4
@eventTail = common dso_local global i32 0, align 4
@eventQueue = common dso_local global %struct.TYPE_3__* null, align 8
@MAX_QUEUED_EVENTS = common dso_local global i32 0, align 4
@MASK_QUEUED_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Com_QueueEvent: overflow\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_QueueEvent(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @SE_MOUSE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %6
  %18 = load i32, i32* @eventHead, align 4
  %19 = load i32, i32* @eventTail, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @eventQueue, align 8
  %23 = load i32, i32* @eventHead, align 4
  %24 = load i32, i32* @MAX_QUEUED_EVENTS, align 4
  %25 = add nsw i32 %23, %24
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* @MASK_QUEUED_EVENTS, align 4
  %28 = and i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %29
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %13, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SE_MOUSE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %21
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %100

47:                                               ; preds = %21
  br label %48

48:                                               ; preds = %47, %17, %6
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @eventQueue, align 8
  %50 = load i32, i32* @eventHead, align 4
  %51 = load i32, i32* @MASK_QUEUED_EVENTS, align 4
  %52 = and i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %53
  store %struct.TYPE_3__* %54, %struct.TYPE_3__** %13, align 8
  %55 = load i32, i32* @eventHead, align 4
  %56 = load i32, i32* @eventTail, align 4
  %57 = sub nsw i32 %55, %56
  %58 = load i32, i32* @MAX_QUEUED_EVENTS, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %48
  %61 = call i32 @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 5
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @Z_Free(i8* %69)
  br label %71

71:                                               ; preds = %66, %60
  %72 = load i32, i32* @eventTail, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @eventTail, align 4
  br label %74

74:                                               ; preds = %71, %48
  %75 = load i32, i32* @eventHead, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @eventHead, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 (...) @Sys_Milliseconds()
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %79, %74
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load i8*, i8** %12, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 5
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %81, %36
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @Z_Free(i8*) #1

declare dso_local i32 @Sys_Milliseconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
