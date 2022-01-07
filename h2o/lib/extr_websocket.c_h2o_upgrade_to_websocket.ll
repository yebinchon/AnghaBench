; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_websocket.c_h2o_upgrade_to_websocket.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_websocket.c_h2o_upgrade_to_websocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__, i32, i32, i8* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i8*, i32 }

@recv_callback = common dso_local global i32 0, align 4
@send_callback = common dso_local global i32 0, align 4
@on_msg_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Switching Protocols\00", align 1
@H2O_TOKEN_UPGRADE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"websocket\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"sec-websocket-accept\00", align 1
@on_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @h2o_upgrade_to_websocket(%struct.TYPE_14__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca [29 x i8], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call %struct.TYPE_13__* @h2o_mem_alloc(i32 32)
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %9, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 512
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %19 = call i32 @memset(%struct.TYPE_13__* %18, i32 0, i32 32)
  %20 = load i32, i32* @recv_callback, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @send_callback, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @on_msg_callback, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %43 = call i32 @wslay_event_context_server_init(i32* %39, %struct.TYPE_15__* %41, %struct.TYPE_13__* %42)
  %44 = getelementptr inbounds [29 x i8], [29 x i8]* %10, i64 0, i64 0
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @create_accept_key(i8* %44, i8* %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  store i32 101, i32* %49, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %52, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load i32, i32* @H2O_TOKEN_UPGRADE, align 4
  %59 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @h2o_add_header(i32* %54, i32* %57, i32 %58, i32* null, i32 %59)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %67 = getelementptr inbounds [29 x i8], [29 x i8]* %10, i64 0, i64 0
  %68 = getelementptr inbounds [29 x i8], [29 x i8]* %10, i64 0, i64 0
  %69 = call i32 @strlen(i8* %68)
  %70 = call i32 @h2o_add_header_by_str(i32* %62, i32* %65, i32 %66, i32 0, i32* null, i8* %67, i32 %69)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = load i32, i32* @on_complete, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %74 = call i32 @h2o_http1_upgrade(%struct.TYPE_14__* %71, i32* null, i32 0, i32 %72, %struct.TYPE_13__* %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  ret %struct.TYPE_13__* %75
}

declare dso_local %struct.TYPE_13__* @h2o_mem_alloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @wslay_event_context_server_init(i32*, %struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @create_accept_key(i8*, i8*) #1

declare dso_local i32 @h2o_add_header(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_add_header_by_str(i32*, i32*, i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @h2o_http1_upgrade(%struct.TYPE_14__*, i32*, i32, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
