; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_do_write_req.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_do_write_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32 }
%struct.st_h2o_http1client_t = type { i32, i32, %struct.TYPE_13__, i64, %struct.TYPE_15__*, i32*, i64, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64 }

@h2o_socket_buffer_prototype = common dso_local global i32 0, align 4
@STREAM_STATE_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i32)* @do_write_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_write_req(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.st_h2o_http1client_t*, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca [3 x %struct.TYPE_14__], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = bitcast %struct.TYPE_14__* %6 to { i64, i32 }*
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  store i64 %1, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  store i32 %2, i32* %16, align 8
  store i32* %0, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = bitcast i32* %17 to %struct.st_h2o_http1client_t*
  store %struct.st_h2o_http1client_t* %18, %struct.st_h2o_http1client_t** %9, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %21 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %23 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %28 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %27, i32 0, i32 5
  %29 = call i32 @h2o_buffer_init(i32** %28, i32* @h2o_socket_buffer_prototype)
  br label %30

30:                                               ; preds = %26, %4
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %36 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @h2o_buffer_try_append(i32** %36, i32 %38, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %167

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %47 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @STREAM_STATE_CLOSED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %54 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %57 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @h2o_socket_is_writing(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %167

62:                                               ; preds = %55
  %63 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %64 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %63, i32 0, i32 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = icmp eq %struct.TYPE_15__* %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %62
  %68 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %69 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %68, i32 0, i32 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br label %74

74:                                               ; preds = %67, %62
  %75 = phi i1 [ true, %62 ], [ %73, %67 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %79 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %78, i32 0, i32 5
  %80 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %81 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %80, i32 0, i32 4
  %82 = call i32 @swap_buffers(i32** %79, %struct.TYPE_15__** %81)
  %83 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %84 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %83, i32 0, i32 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %74
  %90 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %91 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @on_req_body_done(i32 %92, i32* null)
  store i32 0, i32* %5, align 4
  br label %167

94:                                               ; preds = %74
  %95 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %96 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %95, i32 0, i32 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %101 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %100, i32 0, i32 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call { i64, i32 } @h2o_iovec_init(i32 %99, i64 %104)
  %106 = bitcast %struct.TYPE_14__* %10 to { i64, i32 }*
  %107 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %106, i32 0, i32 0
  %108 = extractvalue { i64, i32 } %105, 0
  store i64 %108, i64* %107, align 8
  %109 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %106, i32 0, i32 1
  %110 = extractvalue { i64, i32 } %105, 1
  store i32 %110, i32* %109, align 8
  %111 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %112 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %145

115:                                              ; preds = %94
  %116 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %117 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %11, i64 0, i64 0
  %118 = bitcast %struct.TYPE_14__* %10 to { i64, i32 }*
  %119 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %118, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @encode_chunk(%struct.st_h2o_http1client_t* %116, %struct.TYPE_14__* %117, i64 %120, i32 %122, i64* %12)
  store i64 %123, i64* %13, align 8
  %124 = load i64, i64* %12, align 8
  %125 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %126 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, %124
  store i64 %130, i64* %128, align 8
  %131 = load i64, i64* %12, align 8
  %132 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %133 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, %131
  store i64 %137, i64* %135, align 8
  %138 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %139 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %11, i64 0, i64 0
  %142 = load i64, i64* %13, align 8
  %143 = trunc i64 %142 to i32
  %144 = call i32 @h2o_socket_write(i32 %140, %struct.TYPE_14__* %141, i32 %143, i32 (i32, i32*)* @on_req_body_done)
  br label %166

145:                                              ; preds = %94
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %149 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, %147
  store i64 %153, i64* %151, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %157 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, %155
  store i64 %161, i64* %159, align 8
  %162 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %9, align 8
  %163 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @h2o_socket_write(i32 %164, %struct.TYPE_14__* %10, i32 1, i32 (i32, i32*)* @on_req_body_done)
  br label %166

166:                                              ; preds = %145, %115
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %166, %89, %61, %43
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @h2o_buffer_init(i32**, i32*) #1

declare dso_local i32 @h2o_buffer_try_append(i32**, i32, i64) #1

declare dso_local i64 @h2o_socket_is_writing(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @swap_buffers(i32**, %struct.TYPE_15__**) #1

declare dso_local i32 @on_req_body_done(i32, i32*) #1

declare dso_local { i64, i32 } @h2o_iovec_init(i32, i64) #1

declare dso_local i64 @encode_chunk(%struct.st_h2o_http1client_t*, %struct.TYPE_14__*, i64, i32, i64*) #1

declare dso_local i32 @h2o_socket_write(i32, %struct.TYPE_14__*, i32, i32 (i32, i32*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
