; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_get_frm_header.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_get_frm_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i32, i64, i32 }

@WS_READING = common dso_local global i32 0, align 4
@wsconfig = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@WS_CLOSE_TOO_LARGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Frame is too big\00", align 1
@WS_ERR = common dso_local global i32 0, align 4
@WS_CLOSE = common dso_local global i32 0, align 4
@WS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @ws_get_frm_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws_get_frm_header(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__** null, %struct.TYPE_13__*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = icmp eq %struct.TYPE_13__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call %struct.TYPE_13__* (...) @new_wsframe()
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %17, align 8
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store %struct.TYPE_13__** %20, %struct.TYPE_13__*** %4, align 8
  %21 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 2, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %18
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ws_read_header(%struct.TYPE_14__* %30, %struct.TYPE_13__* %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %176

39:                                               ; preds = %29
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = load i32, i32* @WS_READING, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @ws_set_status(%struct.TYPE_14__* %44, i32 %45, i32 %46)
  store i32 %47, i32* %2, align 4
  br label %176

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %18
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 2
  store i32 %51, i32* %8, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = call i64 @ws_set_front_header_fields(%struct.TYPE_14__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %176

57:                                               ; preds = %49
  %58 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ws_set_extended_header_size(i32 %61, i32* %9)
  %63 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %57
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ws_read_header(%struct.TYPE_14__* %75, %struct.TYPE_13__* %77, i32 %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %176

84:                                               ; preds = %74
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = load i32, i32* @WS_READING, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @ws_set_status(%struct.TYPE_14__* %89, i32 %90, i32 %91)
  store i32 %92, i32* %2, align 4
  br label %176

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %57
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 4, %102
  %104 = load i32, i32* %6, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %94
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %110 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @ws_read_header(%struct.TYPE_14__* %109, %struct.TYPE_13__* %111, i32 %112, i32 %113)
  store i32 %114, i32* %5, align 4
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %176

118:                                              ; preds = %108
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %124 = load i32, i32* @WS_READING, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @ws_set_status(%struct.TYPE_14__* %123, i32 %124, i32 %125)
  store i32 %126, i32* %2, align 4
  br label %176

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %127, %94
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 4
  store i32 %130, i32* %8, align 4
  %131 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @ws_set_payloadlen(%struct.TYPE_13__* %132, i32 %136)
  %138 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @ws_set_masking_key(%struct.TYPE_13__* %139, i32 %143)
  %145 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @wsconfig, i32 0, i32 0), align 8
  %150 = icmp sgt i64 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %128
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %153 = load i32, i32* @WS_CLOSE_TOO_LARGE, align 4
  %154 = call i32 @ws_error(%struct.TYPE_14__* %152, i32 %153, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %156 = load i32, i32* @WS_ERR, align 4
  %157 = load i32, i32* @WS_CLOSE, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @ws_set_status(%struct.TYPE_14__* %155, i32 %158, i32 %159)
  store i32 %160, i32* %2, align 4
  br label %176

161:                                              ; preds = %128
  %162 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  store i32 0, i32* %164, align 8
  %165 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 3
  store i64 0, i64* %167, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  store i32 %168, i32* %171, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %173 = load i32, i32* @WS_OK, align 4
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @ws_set_status(%struct.TYPE_14__* %172, i32 %173, i32 %174)
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %161, %151, %122, %116, %88, %82, %55, %43, %37
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local %struct.TYPE_13__* @new_wsframe(...) #1

declare dso_local i32 @ws_read_header(%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ws_set_status(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @ws_set_front_header_fields(%struct.TYPE_14__*) #1

declare dso_local i32 @ws_set_extended_header_size(i32, i32*) #1

declare dso_local i32 @ws_set_payloadlen(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ws_set_masking_key(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ws_error(%struct.TYPE_14__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
