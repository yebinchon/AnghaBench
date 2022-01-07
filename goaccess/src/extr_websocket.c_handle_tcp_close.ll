; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_handle_tcp_close.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_handle_tcp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i64 }
%struct.TYPE_15__ = type { i32, i32*, i32 }
%struct.TYPE_14__ = type { i32, i64, i32, i32 (i32, %struct.TYPE_15__*)* }

@SHUT_RDWR = common dso_local global i32 0, align 4
@wsconfig = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@WS_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Active: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_15__*, %struct.TYPE_14__*)* @handle_tcp_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_tcp_close(i32 %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SHUT_RDWR, align 4
  %9 = call i32 @shutdown(i32 %7, i32 %8)
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 3
  %12 = load i32 (i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_15__*)** %11, align 8
  %13 = icmp ne i32 (i32, %struct.TYPE_15__*)* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @wsconfig, i32 0, i32 2), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @wsconfig, i32 0, i32 1), align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 3
  %23 = load i32 (i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_15__*)** %22, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = call i32 %23(i32 %26, %struct.TYPE_15__* %27)
  br label %29

29:                                               ; preds = %20, %17, %14, %3
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %32 = call i32 @gettimeofday(i32* %31, i32* null)
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @wsconfig, i32 0, i32 0), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = call i32 @access_log(%struct.TYPE_15__* %36, i32 200)
  br label %38

38:                                               ; preds = %35, %29
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @WS_ERR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = call i32 @ws_clear_queue(%struct.TYPE_15__* %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = call i32 @ws_free_frame(%struct.TYPE_15__* %48)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = call i32 @ws_free_message(%struct.TYPE_15__* %50)
  br label %52

52:                                               ; preds = %45, %38
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @ws_close(i32 %55)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = call i32 @ws_remove_client_from_list(%struct.TYPE_15__* %57, %struct.TYPE_14__* %58)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @list_count(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @LOG(i8* %65)
  ret void
}

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @access_log(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ws_clear_queue(%struct.TYPE_15__*) #1

declare dso_local i32 @ws_free_frame(%struct.TYPE_15__*) #1

declare dso_local i32 @ws_free_message(%struct.TYPE_15__*) #1

declare dso_local i32 @ws_close(i32) #1

declare dso_local i32 @ws_remove_client_from_list(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @list_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
