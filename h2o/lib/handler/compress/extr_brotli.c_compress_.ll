; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/compress/extr_brotli.c_compress_.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/compress/extr_brotli.c_compress_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.st_brotli_context_t = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }

@BROTLI_OPERATION_FLUSH = common dso_local global i32 0, align 4
@BROTLI_OPERATION_FINISH = common dso_local global i32 0, align 4
@h2o_sendvec_flatten_raw = common dso_local global i64 0, align 8
@BROTLI_OPERATION_PROCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i64, i32, %struct.TYPE_8__**, i64*)* @compress_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress_(i32* %0, %struct.TYPE_8__* %1, i64 %2, i32 %3, %struct.TYPE_8__** %4, i64* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.st_brotli_context_t*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_8__** %4, %struct.TYPE_8__*** %11, align 8
  store i64* %5, i64** %12, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = bitcast i8* %20 to %struct.st_brotli_context_t*
  store %struct.st_brotli_context_t* %21, %struct.st_brotli_context_t** %13, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @h2o_send_state_is_in_progress(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @BROTLI_OPERATION_FLUSH, align 4
  br label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @BROTLI_OPERATION_FINISH, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %14, align 4
  %31 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %13, align 8
  %32 = call i32 @shrink_buf(%struct.st_brotli_context_t* %31, i32 1)
  %33 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %13, align 8
  %34 = getelementptr inbounds %struct.st_brotli_context_t, %struct.st_brotli_context_t* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %92

41:                                               ; preds = %29
  store i64 0, i64* %16, align 8
  br label %42

42:                                               ; preds = %88, %41
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %91

46:                                               ; preds = %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = load i64, i64* %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @h2o_sendvec_flatten_raw, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = load i64, i64* %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = bitcast i8* %63 to i32*
  store i32* %64, i32** %15, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %66 = load i64, i64* %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %17, align 8
  %70 = load i64, i64* %16, align 8
  %71 = add i64 %70, 1
  %72 = load i64, i64* %9, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %46
  %75 = load i32, i32* %14, align 4
  br label %78

76:                                               ; preds = %46
  %77 = load i32, i32* @BROTLI_OPERATION_PROCESS, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %18, align 4
  br label %80

80:                                               ; preds = %83, %78
  %81 = load i64, i64* %17, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %13, align 8
  %85 = load i32, i32* %18, align 4
  %86 = call i32 @compress_core(%struct.st_brotli_context_t* %84, i32 %85, i32** %15, i64* %17)
  br label %80

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %16, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %16, align 8
  br label %42

91:                                               ; preds = %42
  br label %96

92:                                               ; preds = %29
  store i32* null, i32** %15, align 8
  store i64 0, i64* %17, align 8
  %93 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %13, align 8
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @compress_core(%struct.st_brotli_context_t* %93, i32 %94, i32** %15, i64* %17)
  br label %96

96:                                               ; preds = %92, %91
  br label %97

97:                                               ; preds = %103, %96
  %98 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %13, align 8
  %99 = getelementptr inbounds %struct.st_brotli_context_t, %struct.st_brotli_context_t* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @BrotliEncoderHasMoreOutput(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  store i32* null, i32** %15, align 8
  store i64 0, i64* %17, align 8
  %104 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %13, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @compress_core(%struct.st_brotli_context_t* %104, i32 %105, i32** %15, i64* %17)
  br label %97

107:                                              ; preds = %97
  %108 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %13, align 8
  %109 = getelementptr inbounds %struct.st_brotli_context_t, %struct.st_brotli_context_t* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* %111, %struct.TYPE_8__** %112, align 8
  %113 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %13, align 8
  %114 = getelementptr inbounds %struct.st_brotli_context_t, %struct.st_brotli_context_t* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %13, align 8
  %118 = getelementptr inbounds %struct.st_brotli_context_t, %struct.st_brotli_context_t* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load %struct.st_brotli_context_t*, %struct.st_brotli_context_t** %13, align 8
  %122 = getelementptr inbounds %struct.st_brotli_context_t, %struct.st_brotli_context_t* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = sub nsw i32 %116, %131
  %133 = sext i32 %132 to i64
  %134 = load i64*, i64** %12, align 8
  store i64 %133, i64* %134, align 8
  %135 = load i32, i32* %10, align 4
  ret i32 %135
}

declare dso_local i64 @h2o_send_state_is_in_progress(i32) #1

declare dso_local i32 @shrink_buf(%struct.st_brotli_context_t*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @compress_core(%struct.st_brotli_context_t*, i32, i32**, i64*) #1

declare dso_local i64 @BrotliEncoderHasMoreOutput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
