; ModuleID = '/home/carl/AnghaBench/i3/src/extr_handlers.c_handle_normal_hints.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_handlers.c_handle_normal_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Received WM_NORMAL_HINTS for unknown client\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32, i32, i32*)* @handle_normal_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_normal_hints(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %11, align 4
  %18 = call %struct.TYPE_6__* @con_by_window_id(i32 %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %14, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %20 = icmp eq %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = call i32 @DLOG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %44

23:                                               ; preds = %6
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = call i32 @window_update_normal_hints(i32 %26, i32* %27, i32* null)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %33 = call %struct.TYPE_6__* @con_inside_floating(%struct.TYPE_6__* %32)
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %16, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %38 = call i32 @floating_check_size(%struct.TYPE_6__* %37, i32 0)
  %39 = call i32 (...) @tree_render()
  br label %40

40:                                               ; preds = %36, %31
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @FREE(i32* %42)
  store i32 1, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %21
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_6__* @con_by_window_id(i32) #1

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @window_update_normal_hints(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @con_inside_floating(%struct.TYPE_6__*) #1

declare dso_local i32 @floating_check_size(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @tree_render(...) #1

declare dso_local i32 @FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
