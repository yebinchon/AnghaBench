; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_emit_data.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_emit_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http3client_req_t = type { i32 }
%struct.TYPE_3__ = type { i64, i32* }

@H2O_HTTP3_FRAME_TYPE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.st_h2o_http3client_req_t*, i64, i32*)* @emit_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @emit_data(%struct.st_h2o_http3client_req_t* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca %struct.st_h2o_http3client_req_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [9 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = bitcast %struct.TYPE_3__* %4 to { i64, i32* }*
  %10 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %9, i32 0, i32 0
  store i64 %1, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %9, i32 0, i32 1
  store i32* %2, i32** %11, align 8
  store %struct.st_h2o_http3client_req_t* %0, %struct.st_h2o_http3client_req_t** %5, align 8
  %12 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* @H2O_HTTP3_FRAME_TYPE_DATA, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %8, align 8
  store i32 %13, i32* %14, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32* @quicly_encodev(i32* %16, i64 %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %22 = ptrtoint i32* %20 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  store i64 %25, i64* %6, align 8
  %26 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %5, align 8
  %27 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %26, i32 0, i32 0
  %28 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @h2o_buffer_append(i32* %27, i32* %28, i64 %29)
  %31 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %5, align 8
  %32 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @h2o_buffer_append(i32* %32, i32* %34, i64 %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  ret i64 %42
}

declare dso_local i32* @quicly_encodev(i32*, i64) #1

declare dso_local i32 @h2o_buffer_append(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
