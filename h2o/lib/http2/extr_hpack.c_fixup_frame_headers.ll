; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_fixup_frame_headers.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_fixup_frame_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@H2O_HTTP2_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@H2O_HTTP2_FRAME_FLAG_END_HEADERS = common dso_local global i32 0, align 4
@H2O_HTTP2_FRAME_TYPE_CONTINUATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__**, i64, i32, i32, i64, i32)* @fixup_frame_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_frame_headers(%struct.TYPE_4__** %0, i64 %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = sub i64 %19, %20
  %22 = load i64, i64* @H2O_HTTP2_FRAME_HEADER_SIZE, align 8
  %23 = sub i64 %21, %22
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp ule i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %6
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %31, %32
  %34 = inttoptr i64 %33 to i32*
  %35 = load i64, i64* %13, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_HEADERS, align 4
  %38 = load i32, i32* %12, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @h2o_http2_encode_frame_header(i32* %34, i64 %35, i32 %36, i32 %39, i32 %40)
  br label %126

42:                                               ; preds = %6
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %46, %47
  %49 = inttoptr i64 %48 to i32*
  %50 = load i64, i64* %11, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @h2o_http2_encode_frame_header(i32* %49, i64 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @H2O_HTTP2_FRAME_HEADER_SIZE, align 8
  %57 = add i64 %55, %56
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %57, %58
  store i64 %59, i64* %14, align 8
  br label %60

60:                                               ; preds = %42, %125
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %14, align 8
  %66 = sub i64 %64, %65
  store i64 %66, i64* %15, align 8
  %67 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %68 = load i64, i64* @H2O_HTTP2_FRAME_HEADER_SIZE, align 8
  %69 = call i32 @h2o_buffer_reserve(%struct.TYPE_4__** %67, i64 %68)
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %14, align 8
  %75 = add i64 %73, %74
  %76 = load i64, i64* @H2O_HTTP2_FRAME_HEADER_SIZE, align 8
  %77 = add i64 %75, %76
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %14, align 8
  %83 = add i64 %81, %82
  %84 = load i64, i64* %15, align 8
  %85 = call i32 @memmove(i64 %77, i64 %83, i64 %84)
  %86 = load i64, i64* @H2O_HTTP2_FRAME_HEADER_SIZE, align 8
  %87 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, %86
  store i64 %91, i64* %89, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* %11, align 8
  %94 = icmp ule i64 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %60
  %96 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %14, align 8
  %101 = add i64 %99, %100
  %102 = inttoptr i64 %101 to i32*
  %103 = load i64, i64* %15, align 8
  %104 = load i32, i32* @H2O_HTTP2_FRAME_TYPE_CONTINUATION, align 4
  %105 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_HEADERS, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @h2o_http2_encode_frame_header(i32* %102, i64 %103, i32 %104, i32 %105, i32 %106)
  br label %126

108:                                              ; preds = %60
  %109 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %14, align 8
  %114 = add i64 %112, %113
  %115 = inttoptr i64 %114 to i32*
  %116 = load i64, i64* %11, align 8
  %117 = load i32, i32* @H2O_HTTP2_FRAME_TYPE_CONTINUATION, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @h2o_http2_encode_frame_header(i32* %115, i64 %116, i32 %117, i32 0, i32 %118)
  %120 = load i64, i64* @H2O_HTTP2_FRAME_HEADER_SIZE, align 8
  %121 = load i64, i64* %11, align 8
  %122 = add i64 %120, %121
  %123 = load i64, i64* %14, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %14, align 8
  br label %125

125:                                              ; preds = %108
  br label %60

126:                                              ; preds = %27, %95
  ret void
}

declare dso_local i32 @h2o_http2_encode_frame_header(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @h2o_buffer_reserve(%struct.TYPE_4__**, i64) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
