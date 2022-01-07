; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_handle_strict_fifo.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_handle_strict_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8*, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i8*, i32, i64 }

@HDR_SIZE = common dso_local global i32 0, align 4
@ws_broadcast_fifo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @handle_strict_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_strict_fifo(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %3, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  store %struct.TYPE_12__** %16, %struct.TYPE_12__*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @HDR_SIZE, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @ws_read_fifo(i32 %28, i8* %31, i32* %33, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %164

39:                                               ; preds = %25
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %164

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @unpack_uint32(i8* %49, i64* %9)
  %51 = load i8*, i8** %8, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @unpack_uint32(i8* %54, i64* %10)
  %56 = load i8*, i8** %8, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @unpack_uint32(i8* %59, i64* %11)
  %61 = load i8*, i8** %8, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @validate_fifo_packet(i64 %64, i64 %65, i64 %66)
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %78

69:                                               ; preds = %45
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @close(i32 %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = call i32 @clear_fifo_packet(%struct.TYPE_11__* %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = call i32 @ws_openfifo_in(%struct.TYPE_11__* %76)
  br label %164

78:                                               ; preds = %45
  %79 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = icmp eq %struct.TYPE_12__* %80, null
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = call i8* @xcalloc(i64 1, i32 32)
  %84 = bitcast i8* %83 to %struct.TYPE_12__*
  %85 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  store %struct.TYPE_12__* %84, %struct.TYPE_12__** %85, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  store i64 %86, i64* %89, align 8
  %90 = load i64, i64* %11, align 8
  %91 = trunc i64 %90 to i32
  %92 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load i64, i64* %11, align 8
  %96 = call i8* @xcalloc(i64 %95, i32 1)
  %97 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  store i8* %96, i8** %99, align 8
  br label %100

100:                                              ; preds = %82, %78
  %101 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %6, align 4
  %105 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sub nsw i32 %108, %109
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %100
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @ws_read_fifo(i32 %116, i8* %120, i32* %123, i32 %124, i32 %125)
  store i32 %126, i32* %5, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %113
  br label %164

129:                                              ; preds = %113
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %164

134:                                              ; preds = %129
  br label %135

135:                                              ; preds = %134, %100
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @list_count(i32 %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = call i32 @clear_fifo_packet(%struct.TYPE_11__* %142)
  br label %164

144:                                              ; preds = %135
  %145 = load i64, i64* %9, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %149 = load i64, i64* %9, align 8
  %150 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = call i32 @ws_send_strict_fifo_to_client(%struct.TYPE_10__* %148, i64 %149, %struct.TYPE_12__* %151)
  br label %161

153:                                              ; preds = %144
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @ws_broadcast_fifo, align 4
  %158 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = call i32 @list_foreach(i32 %156, i32 %157, %struct.TYPE_12__* %159)
  br label %161

161:                                              ; preds = %153, %147
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %163 = call i32 @clear_fifo_packet(%struct.TYPE_11__* %162)
  br label %164

164:                                              ; preds = %161, %141, %133, %128, %69, %43, %38
  ret void
}

declare dso_local i32 @ws_read_fifo(i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @unpack_uint32(i8*, i64*) #1

declare dso_local i32 @validate_fifo_packet(i64, i64, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @clear_fifo_packet(%struct.TYPE_11__*) #1

declare dso_local i32 @ws_openfifo_in(%struct.TYPE_11__*) #1

declare dso_local i8* @xcalloc(i64, i32) #1

declare dso_local i64 @list_count(i32) #1

declare dso_local i32 @ws_send_strict_fifo_to_client(%struct.TYPE_10__*, i64, %struct.TYPE_12__*) #1

declare dso_local i32 @list_foreach(i32, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
