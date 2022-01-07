; ModuleID = '/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_request_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_request_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i64, i32, i32 }
%struct.evrpc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.evrpc_req_generic = type { i32, i32*, %struct.evhttp_request*, %struct.evrpc* }

@EVHTTP_REQ_POST = common dso_local global i64 0, align 8
@HTTP_SERVUNAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_request*, i8*)* @evrpc_request_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evrpc_request_cb(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.evrpc*, align 8
  %6 = alloca %struct.evrpc_req_generic*, align 8
  %7 = alloca i32, align 4
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.evrpc*
  store %struct.evrpc* %9, %struct.evrpc** %5, align 8
  store %struct.evrpc_req_generic* null, %struct.evrpc_req_generic** %6, align 8
  %10 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %11 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EVHTTP_REQ_POST, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %17 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @evbuffer_get_length(i32 %18)
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %2
  br label %85

22:                                               ; preds = %15
  %23 = call %struct.evrpc_req_generic* @mm_calloc(i32 1, i32 32)
  store %struct.evrpc_req_generic* %23, %struct.evrpc_req_generic** %6, align 8
  %24 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %6, align 8
  %25 = icmp eq %struct.evrpc_req_generic* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %85

27:                                               ; preds = %22
  %28 = load %struct.evrpc*, %struct.evrpc** %5, align 8
  %29 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %6, align 8
  %30 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %29, i32 0, i32 3
  store %struct.evrpc* %28, %struct.evrpc** %30, align 8
  %31 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %32 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %6, align 8
  %33 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %32, i32 0, i32 2
  store %struct.evhttp_request* %31, %struct.evhttp_request** %33, align 8
  %34 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %6, align 8
  %35 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.evrpc*, %struct.evrpc** %5, align 8
  %37 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32* @TAILQ_FIRST(i32* %39)
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %82

42:                                               ; preds = %27
  %43 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %6, align 8
  %44 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %43, i32 0, i32 0
  %45 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %46 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @evrpc_hook_associate_meta_(i32* %44, i32 %47)
  %49 = load %struct.evrpc*, %struct.evrpc** %5, align 8
  %50 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %6, align 8
  %54 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %55 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %56 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @evrpc_process_hooks(i32* %52, %struct.evrpc_req_generic* %53, %struct.evhttp_request* %54, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  switch i32 %59, label %68 [
    i32 128, label %60
    i32 129, label %61
    i32 130, label %67
  ]

60:                                               ; preds = %42
  br label %85

61:                                               ; preds = %42
  %62 = load %struct.evrpc*, %struct.evrpc** %5, align 8
  %63 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %6, align 8
  %66 = call i32 @evrpc_pause_request(%struct.TYPE_2__* %64, %struct.evrpc_req_generic* %65, i32 (%struct.evrpc_req_generic*, i32)* @evrpc_request_cb_closure)
  br label %95

67:                                               ; preds = %42
  br label %81

68:                                               ; preds = %42
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, 128
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 130
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %75, 129
  br label %77

77:                                               ; preds = %74, %71, %68
  %78 = phi i1 [ true, %71 ], [ true, %68 ], [ %76, %74 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @EVUTIL_ASSERT(i32 %79)
  br label %81

81:                                               ; preds = %77, %67
  br label %82

82:                                               ; preds = %81, %27
  %83 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %6, align 8
  %84 = call i32 @evrpc_request_cb_closure(%struct.evrpc_req_generic* %83, i32 130)
  br label %95

85:                                               ; preds = %60, %26, %21
  %86 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %6, align 8
  %87 = icmp ne %struct.evrpc_req_generic* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %6, align 8
  %90 = call i32 @evrpc_reqstate_free_(%struct.evrpc_req_generic* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %93 = load i32, i32* @HTTP_SERVUNAVAIL, align 4
  %94 = call i32 @evhttp_send_error(%struct.evhttp_request* %92, i32 %93, i32* null)
  br label %95

95:                                               ; preds = %91, %82, %61
  ret void
}

declare dso_local i64 @evbuffer_get_length(i32) #1

declare dso_local %struct.evrpc_req_generic* @mm_calloc(i32, i32) #1

declare dso_local i32* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @evrpc_hook_associate_meta_(i32*, i32) #1

declare dso_local i32 @evrpc_process_hooks(i32*, %struct.evrpc_req_generic*, %struct.evhttp_request*, i32) #1

declare dso_local i32 @evrpc_pause_request(%struct.TYPE_2__*, %struct.evrpc_req_generic*, i32 (%struct.evrpc_req_generic*, i32)*) #1

declare dso_local i32 @evrpc_request_cb_closure(%struct.evrpc_req_generic*, i32) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @evrpc_reqstate_free_(%struct.evrpc_req_generic*) #1

declare dso_local i32 @evhttp_send_error(%struct.evhttp_request*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
