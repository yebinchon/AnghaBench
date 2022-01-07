; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/compress/extr_gzip.c_do_process.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/compress/extr_gzip.c_do_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.st_gzip_context_t = type { i64, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }

@h2o_sendvec_flatten_raw = common dso_local global i64 0, align 8
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@do_process.zero_buf = internal constant %struct.TYPE_10__ zeroinitializer, align 8
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@do_compress = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, i64, i32, %struct.TYPE_10__**, i64*, i32)* @do_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_process(i32* %0, %struct.TYPE_10__* %1, i64 %2, i32 %3, %struct.TYPE_10__** %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.st_gzip_context_t*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_10__** %4, %struct.TYPE_10__*** %12, align 8
  store i64* %5, i64** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = bitcast i8* %20 to %struct.st_gzip_context_t*
  store %struct.st_gzip_context_t* %21, %struct.st_gzip_context_t** %15, align 8
  store i64 0, i64* %16, align 8
  %22 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %15, align 8
  %23 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %81

30:                                               ; preds = %7
  store i64 0, i64* %18, align 8
  br label %31

31:                                               ; preds = %63, %30
  %32 = load i64, i64* %18, align 8
  %33 = load i64, i64* %10, align 8
  %34 = sub i64 %33, 1
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %31
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %38 = load i64, i64* %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @h2o_sendvec_flatten_raw, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %15, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %50 = load i64, i64* %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = load i64, i64* %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @Z_NO_FLUSH, align 4
  %60 = load i64, i64* %16, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i64 @process_chunk(%struct.st_gzip_context_t* %48, i32 %53, i64 %58, i32 %59, i64 %60, i32 %61)
  store i64 %62, i64* %16, align 8
  br label %63

63:                                               ; preds = %36
  %64 = load i64, i64* %18, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %18, align 8
  br label %31

66:                                               ; preds = %31
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = load i64, i64* %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @h2o_sendvec_flatten_raw, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %79 = load i64, i64* %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 %79
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %17, align 8
  br label %82

81:                                               ; preds = %7
  store %struct.TYPE_10__* @do_process.zero_buf, %struct.TYPE_10__** %17, align 8
  br label %82

82:                                               ; preds = %81, %66
  %83 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %15, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i64 @h2o_send_state_is_in_progress(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = load i32, i32* @Z_SYNC_FLUSH, align 4
  br label %97

95:                                               ; preds = %82
  %96 = load i32, i32* @Z_FINISH, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = load i64, i64* %16, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i64 @process_chunk(%struct.st_gzip_context_t* %83, i32 %86, i64 %89, i32 %98, i64 %99, i32 %100)
  store i64 %101, i64* %16, align 8
  %102 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %15, align 8
  %103 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %12, align 8
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %106, align 8
  %107 = load i64, i64* %16, align 8
  %108 = add i64 %107, 1
  %109 = load i64*, i64** %13, align 8
  store i64 %108, i64* %109, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i64 @h2o_send_state_is_in_progress(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %131, label %113

113:                                              ; preds = %97
  %114 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %15, align 8
  %115 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @do_compress, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %15, align 8
  %122 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %121, i32 0, i32 1
  %123 = call i32 @deflateEnd(i32* %122)
  br label %128

124:                                              ; preds = %113
  %125 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %15, align 8
  %126 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %125, i32 0, i32 1
  %127 = call i32 @inflateEnd(i32* %126)
  br label %128

128:                                              ; preds = %124, %120
  %129 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %15, align 8
  %130 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %129, i32 0, i32 0
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %128, %97
  %132 = load i32, i32* %11, align 4
  ret i32 %132
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @process_chunk(%struct.st_gzip_context_t*, i32, i64, i32, i64, i32) #1

declare dso_local i64 @h2o_send_state_is_in_progress(i32) #1

declare dso_local i32 @deflateEnd(i32*) #1

declare dso_local i32 @inflateEnd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
