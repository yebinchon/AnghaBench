; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_ingress_unistream_on_receive.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_ingress_unistream_on_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.st_h2o_http3_ingress_unistream_t*, i32 }
%struct.st_h2o_http3_ingress_unistream_t = type { i32 (i32*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)*, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@H2O_HTTP3_ERROR_CLOSED_CRITICAL_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i8*, i64)* @ingress_unistream_on_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingress_unistream_on_receive(%struct.TYPE_6__* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.st_h2o_http3_ingress_unistream_t*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32** @quicly_get_data(i32 %19)
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %23, align 8
  store %struct.st_h2o_http3_ingress_unistream_t* %24, %struct.st_h2o_http3_ingress_unistream_t** %11, align 8
  %25 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %11, align 8
  %26 = getelementptr inbounds %struct.st_h2o_http3_ingress_unistream_t, %struct.st_h2o_http3_ingress_unistream_t* %25, i32 0, i32 2
  %27 = load i64, i64* %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @h2o_http3_update_recvbuf(%struct.TYPE_8__** %26, i64 %27, i8* %28, i64 %29)
  store i32 %30, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %95

34:                                               ; preds = %4
  %35 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %11, align 8
  %36 = getelementptr inbounds %struct.st_h2o_http3_ingress_unistream_t, %struct.st_h2o_http3_ingress_unistream_t* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = call i64 @quicly_recvstate_transfer_complete(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @H2O_HTTP3_ERROR_CLOSED_CRITICAL_STREAM, align 4
  store i32 %42, i32* %5, align 4
  br label %95

43:                                               ; preds = %34
  %44 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %11, align 8
  %45 = getelementptr inbounds %struct.st_h2o_http3_ingress_unistream_t, %struct.st_h2o_http3_ingress_unistream_t* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %13, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %11, align 8
  %52 = getelementptr inbounds %struct.st_h2o_http3_ingress_unistream_t, %struct.st_h2o_http3_ingress_unistream_t* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = call i32 @quicly_recvstate_bytes_available(i32* %54)
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %50, i64 %56
  store i32* %57, i32** %14, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = icmp eq i32* %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %95

62:                                               ; preds = %43
  store i8* null, i8** %15, align 8
  %63 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %11, align 8
  %64 = getelementptr inbounds %struct.st_h2o_http3_ingress_unistream_t, %struct.st_h2o_http3_ingress_unistream_t* %63, i32 0, i32 0
  %65 = load i32 (i32*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)*, i32 (i32*, %struct.st_h2o_http3_ingress_unistream_t*, i32**, i32*, i8**)** %64, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %11, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 %65(i32* %66, %struct.st_h2o_http3_ingress_unistream_t* %67, i32** %13, i32* %68, i8** %15)
  store i32 %69, i32* %12, align 4
  %70 = load i32*, i32** %13, align 8
  %71 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %11, align 8
  %72 = getelementptr inbounds %struct.st_h2o_http3_ingress_unistream_t, %struct.st_h2o_http3_ingress_unistream_t* %71, i32 0, i32 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = ptrtoint i32* %70 to i64
  %78 = ptrtoint i32* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 4
  store i64 %80, i64* %16, align 8
  %81 = load i64, i64* %16, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %62
  %84 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %11, align 8
  %85 = getelementptr inbounds %struct.st_h2o_http3_ingress_unistream_t, %struct.st_h2o_http3_ingress_unistream_t* %84, i32 0, i32 2
  %86 = load i64, i64* %16, align 8
  %87 = call i32 @h2o_buffer_consume(%struct.TYPE_8__** %85, i64 %86)
  %88 = load %struct.st_h2o_http3_ingress_unistream_t*, %struct.st_h2o_http3_ingress_unistream_t** %11, align 8
  %89 = getelementptr inbounds %struct.st_h2o_http3_ingress_unistream_t, %struct.st_h2o_http3_ingress_unistream_t* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load i64, i64* %16, align 8
  %92 = call i32 @quicly_stream_sync_recvbuf(%struct.TYPE_7__* %90, i64 %91)
  br label %93

93:                                               ; preds = %83, %62
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %61, %41, %32
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32** @quicly_get_data(i32) #1

declare dso_local i32 @h2o_http3_update_recvbuf(%struct.TYPE_8__**, i64, i8*, i64) #1

declare dso_local i64 @quicly_recvstate_transfer_complete(i32*) #1

declare dso_local i32 @quicly_recvstate_bytes_available(i32*) #1

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_8__**, i64) #1

declare dso_local i32 @quicly_stream_sync_recvbuf(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
