; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_handle_ping.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_handle_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i8*, i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@WS_CLOSE_PROTO_ERR = common dso_local global i32 0, align 4
@WS_ERR = common dso_local global i32 0, align 4
@WS_CLOSE = common dso_local global i32 0, align 4
@WS_OPCODE_PONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @ws_handle_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ws_handle_ping(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__**, align 8
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  store %struct.TYPE_9__** %11, %struct.TYPE_9__*** %3, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  store %struct.TYPE_8__** %13, %struct.TYPE_8__*** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = load i32, i32* @WS_CLOSE_PROTO_ERR, align 4
  %26 = load i32, i32* @WS_ERR, align 4
  %27 = load i32, i32* @WS_CLOSE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @ws_handle_err(%struct.TYPE_10__* %24, i32 %25, i32 %28, i32* null)
  br label %139

30:                                               ; preds = %1
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 125
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = load i32, i32* @WS_CLOSE_PROTO_ERR, align 4
  %39 = load i32, i32* @WS_ERR, align 4
  %40 = load i32, i32* @WS_CLOSE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @ws_handle_err(%struct.TYPE_10__* %37, i32 %38, i32 %41, i32* null)
  br label %139

43:                                               ; preds = %30
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = load i32, i32* @WS_OPCODE_PONG, align 4
  %49 = call i32 @ws_send_frame(%struct.TYPE_10__* %47, i32 %48, i8* null, i32 0)
  br label %139

50:                                               ; preds = %43
  %51 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i8* @xcalloc(i32 %57, i32 1)
  store i8* %58, i8** %5, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @memcpy(i8* %59, i8* %66, i32 %67)
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ws_unmask_payload(i8* %69, i32 %70, i32 0, i32 %74)
  %76 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %9, align 4
  %82 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i8* @realloc(i8* %85, i32 %86)
  store i8* %87, i8** %6, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %109

90:                                               ; preds = %50
  %91 = load i32, i32* %9, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i8* null, i8** %103, align 8
  %104 = load i32, i32* @WS_ERR, align 4
  %105 = load i32, i32* @WS_CLOSE, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %139

109:                                              ; preds = %90, %50
  %110 = load i8*, i8** %6, align 8
  %111 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  store i8* %110, i8** %113, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %118, %114
  store i32 %119, i32* %117, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %121 = load i32, i32* @WS_OPCODE_PONG, align 4
  %122 = load i8*, i8** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @ws_send_frame(%struct.TYPE_10__* %120, i32 %121, i8* %122, i32 %123)
  %125 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 3
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %109
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %135 = call i32 @ws_free_message(%struct.TYPE_10__* %134)
  br label %136

136:                                              ; preds = %133, %109
  %137 = load i8*, i8** %5, align 8
  %138 = call i32 @free(i8* %137)
  br label %139

139:                                              ; preds = %136, %93, %46, %36, %23
  ret void
}

declare dso_local i32 @ws_handle_err(%struct.TYPE_10__*, i32, i32, i32*) #1

declare dso_local i32 @ws_send_frame(%struct.TYPE_10__*, i32, i8*, i32) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ws_unmask_payload(i8*, i32, i32, i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ws_free_message(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
