; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_destroy_request.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_destroy_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http3client_req_t = type { i32, %struct.TYPE_3__, %struct.TYPE_4__, i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http3client_req_t*)* @destroy_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_request(%struct.st_h2o_http3client_req_t* %0) #0 {
  %2 = alloca %struct.st_h2o_http3client_req_t*, align 8
  store %struct.st_h2o_http3client_req_t* %0, %struct.st_h2o_http3client_req_t** %2, align 8
  %3 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %2, align 8
  %4 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %3, i32 0, i32 4
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %2, align 8
  %10 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %9, i32 0, i32 3
  %11 = call i32 @h2o_buffer_dispose(i32* %10)
  %12 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %2, align 8
  %13 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = call i32 @h2o_buffer_dispose(i32* %14)
  %16 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %2, align 8
  %17 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = call i32 @h2o_buffer_dispose(i32* %18)
  %20 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %2, align 8
  %21 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @h2o_buffer_dispose(i32* %22)
  %24 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %2, align 8
  %25 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i64 @h2o_timer_is_linked(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %2, align 8
  %31 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @h2o_timer_unlink(i32* %32)
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %2, align 8
  %36 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %35, i32 0, i32 0
  %37 = call i64 @h2o_linklist_is_linked(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %2, align 8
  %41 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %40, i32 0, i32 0
  %42 = call i32 @h2o_linklist_unlink(i32* %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %2, align 8
  %45 = call i32 @free(%struct.st_h2o_http3client_req_t* %44)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_buffer_dispose(i32*) #1

declare dso_local i64 @h2o_timer_is_linked(i32*) #1

declare dso_local i32 @h2o_timer_unlink(i32*) #1

declare dso_local i64 @h2o_linklist_is_linked(i32*) #1

declare dso_local i32 @h2o_linklist_unlink(i32*) #1

declare dso_local i32 @free(%struct.st_h2o_http3client_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
