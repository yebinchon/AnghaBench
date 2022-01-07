; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_get_frm_payload.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_get_frm_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, i64, i64, i32* }
%struct.TYPE_14__ = type { i32 }

@WS_ERR = common dso_local global i32 0, align 4
@WS_CLOSE = common dso_local global i32 0, align 4
@WS_READING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*)* @ws_get_frm_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws_get_frm_payload(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__**, align 8
  %7 = alloca %struct.TYPE_13__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_14__** null, %struct.TYPE_14__*** %6, align 8
  store %struct.TYPE_13__** null, %struct.TYPE_13__*** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = icmp eq %struct.TYPE_13__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = call %struct.TYPE_13__* (...) @new_wsmessage()
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %18, align 8
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  store %struct.TYPE_14__** %21, %struct.TYPE_14__*** %6, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  store %struct.TYPE_13__** %23, %struct.TYPE_13__*** %7, align 8
  %24 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %19
  %30 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @xcalloc(i32 %39, i32 1)
  %41 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 3
  store i32* %40, i32** %43, align 8
  br label %71

44:                                               ; preds = %29, %19
  %45 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = call i32 @ws_realloc_frm_payload(%struct.TYPE_14__* %58, %struct.TYPE_13__* %60)
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %65 = load i32, i32* @WS_ERR, align 4
  %66 = load i32, i32* @WS_CLOSE, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @ws_set_status(%struct.TYPE_15__* %64, i32 %67, i32 0)
  store i32 %68, i32* %3, align 4
  br label %127

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %50, %44
  br label %71

71:                                               ; preds = %70, %35
  %72 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %9, align 4
  %76 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %71
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @ws_read_payload(%struct.TYPE_15__* %85, %struct.TYPE_13__* %87, i64 %91, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %3, align 4
  br label %127

97:                                               ; preds = %84
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = load i32, i32* @WS_READING, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @ws_set_status(%struct.TYPE_15__* %102, i32 %103, i32 %104)
  store i32 %105, i32* %3, align 4
  br label %127

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %71
  %108 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = sub nsw i64 %111, %116
  %118 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 2
  store i64 %117, i64* %120, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @ws_manage_payload_opcode(%struct.TYPE_15__* %121, i32* %122)
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %125 = call i32 @ws_free_frame(%struct.TYPE_15__* %124)
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %107, %101, %95, %63
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_13__* @new_wsmessage(...) #1

declare dso_local i32* @xcalloc(i32, i32) #1

declare dso_local i32 @ws_realloc_frm_payload(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ws_set_status(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @ws_read_payload(%struct.TYPE_15__*, %struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @ws_manage_payload_opcode(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @ws_free_frame(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
