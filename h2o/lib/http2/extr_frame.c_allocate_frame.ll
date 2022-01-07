; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_frame.c_allocate_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_frame.c_allocate_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@H2O_HTTP2_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__**, i64, i32, i32, i32)* @allocate_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @allocate_frame(%struct.TYPE_7__** %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %13 = load i64, i64* @H2O_HTTP2_FRAME_HEADER_SIZE, align 8
  %14 = load i64, i64* %7, align 8
  %15 = add i64 %13, %14
  %16 = call i64 @h2o_buffer_reserve(%struct.TYPE_7__** %12, i64 %15)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load i64, i64* @H2O_HTTP2_FRAME_HEADER_SIZE, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %18, %19
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, %20
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32* @h2o_http2_encode_frame_header(i32* %30, i64 %31, i32 %32, i32 %33, i32 %34)
  ret i32* %35
}

declare dso_local i64 @h2o_buffer_reserve(%struct.TYPE_7__**, i64) #1

declare dso_local i32* @h2o_http2_encode_frame_header(i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
