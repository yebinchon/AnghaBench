; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_cancel_request.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_cancel_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http3client_req_t = type { i32* }

@H2O_HTTP3_ERROR_REQUEST_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @cancel_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cancel_request(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.st_h2o_http3client_req_t*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to i8*
  %6 = bitcast i8* %5 to %struct.st_h2o_http3client_req_t*
  store %struct.st_h2o_http3client_req_t* %6, %struct.st_h2o_http3client_req_t** %3, align 8
  %7 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %3, align 8
  %8 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %3, align 8
  %13 = load i32, i32* @H2O_HTTP3_ERROR_REQUEST_CANCELLED, align 4
  %14 = call i32 @close_stream(%struct.st_h2o_http3client_req_t* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %3, align 8
  %17 = call i32 @destroy_request(%struct.st_h2o_http3client_req_t* %16)
  ret void
}

declare dso_local i32 @close_stream(%struct.st_h2o_http3client_req_t*, i32) #1

declare dso_local i32 @destroy_request(%struct.st_h2o_http3client_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
