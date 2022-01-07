; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_handle_text_bin.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_handle_text_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, i32, i64, i32, i32, i64 }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 (i32, %struct.TYPE_15__*)* }

@WS_OPCODE_CONTINUATION = common dso_local global i64 0, align 8
@WS_ERR = common dso_local global i32 0, align 4
@WS_CLOSE = common dso_local global i32 0, align 4
@WS_OPCODE_TEXT = common dso_local global i64 0, align 8
@WS_CLOSE_INVALID_UTF8 = common dso_local global i32 0, align 4
@wsconfig = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_12__*)* @ws_handle_text_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ws_handle_text_bin(%struct.TYPE_15__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__**, align 8
  %6 = alloca %struct.TYPE_13__**, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  store %struct.TYPE_14__** %9, %struct.TYPE_14__*** %5, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store %struct.TYPE_13__** %11, %struct.TYPE_13__*** %6, align 8
  %12 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WS_OPCODE_CONTINUATION, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32, i32* @WS_ERR, align 4
  %30 = load i32, i32* @WS_CLOSE, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %147

34:                                               ; preds = %21, %2
  %35 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ws_unmask_payload(i32 %38, i32 %42, i32 %43, i32 %47)
  %49 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %34
  br label %147

61:                                               ; preds = %34
  %62 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @WS_OPCODE_TEXT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %61
  %69 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @ws_validate_string(i32 %72, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %68
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = load i32, i32* @WS_CLOSE_INVALID_UTF8, align 4
  %82 = load i32, i32* @WS_ERR, align 4
  %83 = load i32, i32* @WS_CLOSE, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @ws_handle_err(%struct.TYPE_15__* %80, i32 %81, i32 %84, i32* null)
  br label %147

86:                                               ; preds = %68
  br label %87

87:                                               ; preds = %86, %61
  %88 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @WS_OPCODE_CONTINUATION, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %144

94:                                               ; preds = %87
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32 (i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_15__*)** %96, align 8
  %98 = icmp ne i32 (i32, %struct.TYPE_15__*)* %97, null
  br i1 %98, label %99, label %144

99:                                               ; preds = %94
  %100 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @wsconfig, i32 0, i32 1), align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %99
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %104 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ws_send_data(%struct.TYPE_15__* %103, i64 %107, i32 %111, i32 %115)
  br label %143

117:                                              ; preds = %99
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @wsconfig, i32 0, i32 0), align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %117
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @ws_write_fifo(i32 %123, i32 %127, i32 %131)
  br label %142

133:                                              ; preds = %117
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i32 (i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_15__*)** %135, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %141 = call i32 %136(i32 %139, %struct.TYPE_15__* %140)
  br label %142

142:                                              ; preds = %133, %120
  br label %143

143:                                              ; preds = %142, %102
  br label %144

144:                                              ; preds = %143, %94, %87
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %146 = call i32 @ws_free_message(%struct.TYPE_15__* %145)
  br label %147

147:                                              ; preds = %144, %79, %60, %28
  ret void
}

declare dso_local i32 @ws_unmask_payload(i32, i32, i32, i32) #1

declare dso_local i64 @ws_validate_string(i32, i32) #1

declare dso_local i32 @ws_handle_err(%struct.TYPE_15__*, i32, i32, i32*) #1

declare dso_local i32 @ws_send_data(%struct.TYPE_15__*, i64, i32, i32) #1

declare dso_local i32 @ws_write_fifo(i32, i32, i32) #1

declare dso_local i32 @ws_free_message(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
