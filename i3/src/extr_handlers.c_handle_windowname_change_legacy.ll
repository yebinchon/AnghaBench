; ModuleID = '/home/carl/AnghaBench/i3/src/extr_handlers.c_handle_windowname_change_legacy.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_handlers.c_handle_windowname_change_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }

@croot = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32, i32, i32*)* @handle_windowname_change_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_windowname_change_legacy(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call %struct.TYPE_8__* @con_by_window_id(i32 %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %14, align 8
  %18 = icmp eq %struct.TYPE_8__* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %6
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = icmp eq %struct.TYPE_9__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %6
  store i32 0, i32* %7, align 4
  br label %64

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @i3string_as_utf8(i32* %37)
  %39 = call i8* @sstrdup(i32 %38)
  br label %41

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %32
  %42 = phi i8* [ %39, %32 ], [ null, %40 ]
  store i8* %42, i8** %15, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @window_update_name_legacy(%struct.TYPE_9__* %45, i32* %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %49 = call %struct.TYPE_8__* @remanage_window(%struct.TYPE_8__* %48)
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %14, align 8
  %50 = load i32, i32* @croot, align 4
  %51 = call i32 @x_push_changes(i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = call i64 @window_name_changed(%struct.TYPE_9__* %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %41
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %60 = call i32 @ipc_send_window_event(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %59)
  br label %61

61:                                               ; preds = %58, %41
  %62 = load i8*, i8** %15, align 8
  %63 = call i32 @FREE(i8* %62)
  store i32 1, i32* %7, align 4
  br label %64

64:                                               ; preds = %61, %24
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_8__* @con_by_window_id(i32) #1

declare dso_local i8* @sstrdup(i32) #1

declare dso_local i32 @i3string_as_utf8(i32*) #1

declare dso_local i32 @window_update_name_legacy(%struct.TYPE_9__*, i32*) #1

declare dso_local %struct.TYPE_8__* @remanage_window(%struct.TYPE_8__*) #1

declare dso_local i32 @x_push_changes(i32) #1

declare dso_local i64 @window_name_changed(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @ipc_send_window_event(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
