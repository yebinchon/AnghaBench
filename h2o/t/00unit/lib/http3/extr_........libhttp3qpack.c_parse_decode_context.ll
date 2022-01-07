; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_parse_decode_context.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_parse_decode_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.st_h2o_qpack_decode_header_ctx_t = type { i32, i32, %struct.TYPE_10__* }

@H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_INCOMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.st_h2o_qpack_decode_header_ctx_t*, i32, i32**, i32*)* @parse_decode_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_decode_context(%struct.TYPE_10__* %0, %struct.st_h2o_qpack_decode_header_ctx_t* %1, i32 %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.st_h2o_qpack_decode_header_ctx_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.st_h2o_qpack_decode_header_ctx_t* %1, %struct.st_h2o_qpack_decode_header_ctx_t** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %8, align 8
  %18 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %17, i32 0, i32 2
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %18, align 8
  %19 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %8, align 8
  %20 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %19, i32 0, i32 0
  %21 = load i32**, i32*** %10, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i64 @decode_int(i32* %20, i32** %21, i32* %22, i32 8)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED, align 4
  store i32 %26, i32* %6, align 4
  br label %174

27:                                               ; preds = %5
  %28 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %8, align 8
  %29 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %86

32:                                               ; preds = %27
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED, align 4
  store i32 %38, i32* %6, align 4
  br label %174

39:                                               ; preds = %32
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 2, %42
  store i32 %43, i32* %12, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %46, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %12, align 4
  %53 = sdiv i32 %51, %52
  %54 = load i32, i32* %12, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %8, align 8
  %59 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %8, align 8
  %63 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %39
  %68 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %8, align 8
  %69 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %8, align 8
  %76 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %67, %39
  %80 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %8, align 8
  %81 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  br label %86

86:                                               ; preds = %79, %27
  %87 = load i32**, i32*** %10, align 8
  %88 = load i32*, i32** %87, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = icmp uge i32* %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED, align 4
  store i32 %92, i32* %6, align 4
  br label %174

93:                                               ; preds = %86
  %94 = load i32**, i32*** %10, align 8
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 128
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %15, align 4
  %100 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %8, align 8
  %101 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %100, i32 0, i32 1
  %102 = load i32**, i32*** %10, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = call i64 @decode_int(i32* %101, i32** %102, i32* %103, i32 7)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %93
  %107 = load i32, i32* @H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED, align 4
  store i32 %107, i32* %6, align 4
  br label %174

108:                                              ; preds = %93
  %109 = load i32, i32* %15, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %8, align 8
  %113 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %8, align 8
  %116 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %114, %117
  br label %128

119:                                              ; preds = %108
  %120 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %8, align 8
  %121 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %8, align 8
  %124 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %122, %125
  %127 = sub nsw i32 %126, 1
  br label %128

128:                                              ; preds = %119, %111
  %129 = phi i32 [ %118, %111 ], [ %127, %119 ]
  %130 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %8, align 8
  %131 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %8, align 8
  %133 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %139, %143
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %144, %148
  %150 = icmp sge i64 %135, %149
  br i1 %150, label %151, label %173

151:                                              ; preds = %128
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, 1
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp sge i64 %157, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %151
  %163 = load i32, i32* @H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED, align 4
  store i32 %163, i32* %6, align 4
  br label %174

164:                                              ; preds = %151
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.st_h2o_qpack_decode_header_ctx_t*, %struct.st_h2o_qpack_decode_header_ctx_t** %8, align 8
  %168 = getelementptr inbounds %struct.st_h2o_qpack_decode_header_ctx_t, %struct.st_h2o_qpack_decode_header_ctx_t* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = call i32 @decoder_link_blocked(%struct.TYPE_10__* %165, i32 %166, i64 %170)
  %172 = load i32, i32* @H2O_HTTP3_ERROR_INCOMPLETE, align 4
  store i32 %172, i32* %6, align 4
  br label %174

173:                                              ; preds = %128
  store i32 0, i32* %6, align 4
  br label %174

174:                                              ; preds = %173, %164, %162, %106, %91, %37, %25
  %175 = load i32, i32* %6, align 4
  ret i32 %175
}

declare dso_local i64 @decode_int(i32*, i32**, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @decoder_link_blocked(%struct.TYPE_10__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
