; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_GetSystemEvent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_GetSystemEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@eventHead = common dso_local global i32 0, align 4
@eventTail = common dso_local global i32 0, align 4
@eventQueue = common dso_local global %struct.TYPE_5__* null, align 8
@MASK_QUEUED_EVENTS = common dso_local global i32 0, align 4
@SE_CONSOLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Com_GetSystemEvent() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @eventHead, align 4
  %7 = load i32, i32* @eventTail, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %0
  %10 = load i32, i32* @eventTail, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @eventTail, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @eventQueue, align 8
  %13 = load i32, i32* @eventTail, align 4
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* @MASK_QUEUED_EVENTS, align 4
  %16 = and i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %17
  %19 = bitcast %struct.TYPE_5__* %1 to i8*
  %20 = bitcast %struct.TYPE_5__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  br label %60

21:                                               ; preds = %0
  %22 = call i8* (...) @Sys_ConsoleInput()
  store i8* %22, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i8* @Z_Malloc(i32 %29)
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strcpy(i8* %31, i8* %32)
  %34 = load i32, i32* @SE_CONSOLE, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @Com_QueueEvent(i32 0, i32 %34, i32 0, i32 0, i32 %35, i8* %36)
  br label %38

38:                                               ; preds = %25, %21
  %39 = load i32, i32* @eventHead, align 4
  %40 = load i32, i32* @eventTail, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i32, i32* @eventTail, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @eventTail, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @eventQueue, align 8
  %46 = load i32, i32* @eventTail, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* @MASK_QUEUED_EVENTS, align 4
  %49 = and i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %50
  %52 = bitcast %struct.TYPE_5__* %1 to i8*
  %53 = bitcast %struct.TYPE_5__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  br label %60

54:                                               ; preds = %38
  %55 = call i32 @memset(%struct.TYPE_5__* %2, i32 0, i32 4)
  %56 = call i32 (...) @Sys_Milliseconds()
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = bitcast %struct.TYPE_5__* %1 to i8*
  %59 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  br label %60

60:                                               ; preds = %54, %42, %9
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @Sys_ConsoleInput(...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @Z_Malloc(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @Com_QueueEvent(i32, i32, i32, i32, i32, i8*) #2

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @Sys_Milliseconds(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
