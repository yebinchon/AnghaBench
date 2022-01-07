; ModuleID = '/home/carl/AnghaBench/i3/src/extr_util.c_start_nagbar.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_util.c_start_nagbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [57 x i8] c"i3-nagbar already running (PID %d), not starting again.\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Could not fork()\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"i3-nagbar\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Starting i3-nagbar with PID %d\0A\00", align 1
@nagbar_exited = common dso_local global i32 0, align 4
@main_loop = common dso_local global i32 0, align 4
@nagbar_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_nagbar(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @DLOG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %56

14:                                               ; preds = %2
  %15 = call i32 (...) @fork()
  %16 = load i32*, i32** %3, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %56

22:                                               ; preds = %14
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8**, i8*** %4, align 8
  %28 = call i32 @exec_i3_utility(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DLOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = call i8* @smalloc(i32 8)
  %34 = bitcast i8* %33 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %5, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ev_child_init(%struct.TYPE_8__* %35, i32* @nagbar_exited, i32 %37, i32 0)
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load i32, i32* @main_loop, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = call i32 @ev_child_start(i32 %42, %struct.TYPE_8__* %43)
  %45 = call i8* @smalloc(i32 8)
  %46 = bitcast i8* %45 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %6, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = load i32, i32* @nagbar_cleanup, align 4
  %49 = call i32 @ev_cleanup_init(%struct.TYPE_7__* %47, i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = load i32, i32* @main_loop, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = call i32 @ev_cleanup_start(i32 %53, %struct.TYPE_7__* %54)
  br label %56

56:                                               ; preds = %29, %20, %10
  ret void
}

declare dso_local i32 @DLOG(i8*, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @exec_i3_utility(i8*, i8**) #1

declare dso_local i8* @smalloc(i32) #1

declare dso_local i32 @ev_child_init(%struct.TYPE_8__*, i32*, i32, i32) #1

declare dso_local i32 @ev_child_start(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ev_cleanup_init(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ev_cleanup_start(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
