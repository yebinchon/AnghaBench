; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_on_send_emit.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_on_send_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.st_h2o_http3_server_stream_t* }
%struct.st_h2o_http3_server_stream_t = type { i64, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_11__*, i32*, i32, i64)* }

@H2O_SEND_STATE_IN_PROGRESS = common dso_local global i64 0, align 8
@H2O_HTTP3_ERROR_INTERNAL = common dso_local global i32 0, align 4
@H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64, i8*, i64*, i32*)* @on_send_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_send_emit(%struct.TYPE_10__* %0, i64 %1, i8* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.st_h2o_http3_server_stream_t*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %19, align 8
  store %struct.st_h2o_http3_server_stream_t* %20, %struct.st_h2o_http3_server_stream_t** %12, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = load i64*, i64** %10, align 8
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %14, align 8
  store i64 0, i64* %15, align 8
  %27 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %12, align 8
  %28 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %16, align 8
  br label %31

31:                                               ; preds = %58, %5
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %31
  %35 = load i64, i64* %15, align 8
  %36 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %12, align 8
  %37 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %35, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %12, align 8
  %46 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = load i64, i64* %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %16, align 8
  %55 = sub i64 %53, %54
  %56 = icmp ult i64 %44, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %34
  br label %74

58:                                               ; preds = %34
  %59 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %12, align 8
  %60 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = load i64, i64* %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %16, align 8
  %69 = sub i64 %67, %68
  %70 = load i64, i64* %8, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %8, align 8
  store i64 0, i64* %16, align 8
  %72 = load i64, i64* %15, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %15, align 8
  br label %31

74:                                               ; preds = %57, %31
  %75 = load i32*, i32** %11, align 8
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %149, %74
  %77 = load i32*, i32** %13, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = icmp ne i32* %77, %78
  br i1 %79, label %80, label %155

80:                                               ; preds = %76
  %81 = load i64, i64* %15, align 8
  %82 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %12, align 8
  %83 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %81, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32*, i32** %11, align 8
  store i32 1, i32* %89, align 4
  br label %155

90:                                               ; preds = %80
  %91 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %12, align 8
  %92 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = load i64, i64* %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %16, align 8
  %102 = add i64 %100, %101
  %103 = sub i64 %99, %102
  store i64 %103, i64* %17, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = ptrtoint i32* %104 to i64
  %107 = ptrtoint i32* %105 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, 4
  %110 = load i64, i64* %17, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %90
  %113 = load i32*, i32** %14, align 8
  %114 = load i32*, i32** %13, align 8
  %115 = ptrtoint i32* %113 to i64
  %116 = ptrtoint i32* %114 to i64
  %117 = sub i64 %115, %116
  %118 = sdiv exact i64 %117, 4
  store i64 %118, i64* %17, align 8
  br label %119

119:                                              ; preds = %112, %90
  %120 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %12, align 8
  %121 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = load i64, i64* %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32 (%struct.TYPE_11__*, i32*, i32, i64)*, i32 (%struct.TYPE_11__*, i32*, i32, i64)** %129, align 8
  %131 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %12, align 8
  %132 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = load i64, i64* %15, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i64 %136
  %138 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %12, align 8
  %139 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %138, i32 0, i32 2
  %140 = load i32*, i32** %13, align 8
  %141 = load i64, i64* %17, align 8
  %142 = call i32 @h2o_iovec_init(i32* %140, i64 %141)
  %143 = load i64, i64* %8, align 8
  %144 = load i64, i64* %16, align 8
  %145 = add i64 %143, %144
  %146 = call i32 %130(%struct.TYPE_11__* %137, i32* %139, i32 %142, i64 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %119
  br label %192

149:                                              ; preds = %119
  %150 = load i64, i64* %17, align 8
  %151 = load i32*, i32** %13, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 %150
  store i32* %152, i32** %13, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %16, align 8
  %153 = load i64, i64* %15, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %15, align 8
  br label %76

155:                                              ; preds = %88, %76
  %156 = load i32*, i32** %13, align 8
  %157 = load i8*, i8** %9, align 8
  %158 = bitcast i8* %157 to i32*
  %159 = ptrtoint i32* %156 to i64
  %160 = ptrtoint i32* %158 to i64
  %161 = sub i64 %159, %160
  %162 = sdiv exact i64 %161, 4
  %163 = load i64*, i64** %10, align 8
  store i64 %162, i64* %163, align 8
  %164 = load i32*, i32** %11, align 8
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %191

167:                                              ; preds = %155
  %168 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %12, align 8
  %169 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @H2O_SEND_STATE_IN_PROGRESS, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %191

173:                                              ; preds = %167
  %174 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %12, align 8
  %175 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %191, label %179

179:                                              ; preds = %173
  %180 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %12, align 8
  %181 = call i32 @retain_sendvecs(%struct.st_h2o_http3_server_stream_t* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %179
  br label %192

184:                                              ; preds = %179
  %185 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %12, align 8
  %186 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  store i32 1, i32* %187, align 8
  %188 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %12, align 8
  %189 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %188, i32 0, i32 2
  %190 = call i32 @h2o_proceed_response_deferred(i32* %189)
  br label %191

191:                                              ; preds = %184, %173, %167, %155
  store i32 0, i32* %6, align 4
  br label %203

192:                                              ; preds = %183, %148
  %193 = load i64*, i64** %10, align 8
  store i64 0, i64* %193, align 8
  %194 = load i32*, i32** %11, align 8
  store i32 1, i32* %194, align 4
  %195 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %12, align 8
  %196 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @H2O_HTTP3_ERROR_INTERNAL, align 4
  %199 = call i32 @quicly_reset_stream(i32 %197, i32 %198)
  %200 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %12, align 8
  %201 = load i32, i32* @H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT, align 4
  %202 = call i32 @set_state(%struct.st_h2o_http3_server_stream_t* %200, i32 %201)
  store i32 0, i32* %6, align 4
  br label %203

203:                                              ; preds = %192, %191
  %204 = load i32, i32* %6, align 4
  ret i32 %204
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_iovec_init(i32*, i64) #1

declare dso_local i32 @retain_sendvecs(%struct.st_h2o_http3_server_stream_t*) #1

declare dso_local i32 @h2o_proceed_response_deferred(i32*) #1

declare dso_local i32 @quicly_reset_stream(i32, i32) #1

declare dso_local i32 @set_state(%struct.st_h2o_http3_server_stream_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
