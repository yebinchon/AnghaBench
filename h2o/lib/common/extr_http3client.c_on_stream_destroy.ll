; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_on_stream_destroy.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_on_stream_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.st_h2o_http3client_req_t* }
%struct.st_h2o_http3client_req_t = type { i32 }

@H2O_HTTP3_ERROR_TRANSPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @on_stream_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_stream_destroy(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_h2o_http3client_req_t*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  store %struct.st_h2o_http3client_req_t* %8, %struct.st_h2o_http3client_req_t** %5, align 8
  %9 = icmp eq %struct.st_h2o_http3client_req_t* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %19

11:                                               ; preds = %2
  %12 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %5, align 8
  %13 = load i32, i32* @H2O_HTTP3_ERROR_TRANSPORT, align 4
  %14 = call i32 @handle_input_error(%struct.st_h2o_http3client_req_t* %12, i32 %13)
  %15 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %5, align 8
  %16 = call i32 @detach_stream(%struct.st_h2o_http3client_req_t* %15)
  %17 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %5, align 8
  %18 = call i32 @destroy_request(%struct.st_h2o_http3client_req_t* %17)
  br label %19

19:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @handle_input_error(%struct.st_h2o_http3client_req_t*, i32) #1

declare dso_local i32 @detach_stream(%struct.st_h2o_http3client_req_t*) #1

declare dso_local i32 @destroy_request(%struct.st_h2o_http3client_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
