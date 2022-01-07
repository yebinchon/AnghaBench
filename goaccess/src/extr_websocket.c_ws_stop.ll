; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_stop.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32*, i32* }

@wsconfig = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ws_remove_dangling_clients = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ws_stop(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  store i32** %6, i32*** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32** %8, i32*** %4, align 8
  %9 = load i32**, i32*** %3, align 8
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @ws_clear_pipein(i32* %10)
  %12 = load i32**, i32*** %4, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @ws_clear_pipeout(i32* %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wsconfig, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 (...) @access_log_close()
  br label %19

19:                                               ; preds = %17, %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @list_count(i64 %22)
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @ws_remove_dangling_clients, align 4
  %30 = call i32 @list_foreach(i64 %28, i32 %29, i32* null)
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @list_remove_nodes(i64 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = call i32 @free(%struct.TYPE_6__* %42)
  ret void
}

declare dso_local i32 @ws_clear_pipein(i32*) #1

declare dso_local i32 @ws_clear_pipeout(i32*) #1

declare dso_local i32 @access_log_close(...) #1

declare dso_local i64 @list_count(i64) #1

declare dso_local i32 @list_foreach(i64, i32, i32*) #1

declare dso_local i32 @list_remove_nodes(i64) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
