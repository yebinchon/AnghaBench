; ModuleID = '/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_request_cb_closure.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_request_cb_closure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_req_generic = type { i32*, i32*, %struct.evhttp_request*, %struct.evrpc* }
%struct.evhttp_request = type { i32 }
%struct.evrpc = type { i32 (i32*, i32)*, i32, i32 (%struct.evrpc_req_generic*, i32)*, i32, i32* (i32)*, i32, i32* (i32)* }

@EVRPC_TERMINATE = common dso_local global i32 0, align 4
@HTTP_SERVUNAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @evrpc_request_cb_closure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evrpc_request_cb_closure(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evrpc_req_generic*, align 8
  %6 = alloca %struct.evrpc*, align 8
  %7 = alloca %struct.evhttp_request*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.evrpc_req_generic*
  store %struct.evrpc_req_generic* %9, %struct.evrpc_req_generic** %5, align 8
  %10 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %5, align 8
  %11 = call i32 @EVUTIL_ASSERT(%struct.evrpc_req_generic* %10)
  %12 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %5, align 8
  %13 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %12, i32 0, i32 3
  %14 = load %struct.evrpc*, %struct.evrpc** %13, align 8
  store %struct.evrpc* %14, %struct.evrpc** %6, align 8
  %15 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %5, align 8
  %16 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %15, i32 0, i32 2
  %17 = load %struct.evhttp_request*, %struct.evhttp_request** %16, align 8
  store %struct.evhttp_request* %17, %struct.evhttp_request** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @EVRPC_TERMINATE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %74

22:                                               ; preds = %2
  %23 = load %struct.evrpc*, %struct.evrpc** %6, align 8
  %24 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %23, i32 0, i32 6
  %25 = load i32* (i32)*, i32* (i32)** %24, align 8
  %26 = load %struct.evrpc*, %struct.evrpc** %6, align 8
  %27 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32* %25(i32 %28)
  %30 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %5, align 8
  %31 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %5, align 8
  %33 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %74

37:                                               ; preds = %22
  %38 = load %struct.evrpc*, %struct.evrpc** %6, align 8
  %39 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %38, i32 0, i32 0
  %40 = load i32 (i32*, i32)*, i32 (i32*, i32)** %39, align 8
  %41 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %5, align 8
  %42 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %45 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 %40(i32* %43, i32 %46)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %74

50:                                               ; preds = %37
  %51 = load %struct.evrpc*, %struct.evrpc** %6, align 8
  %52 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %51, i32 0, i32 4
  %53 = load i32* (i32)*, i32* (i32)** %52, align 8
  %54 = load %struct.evrpc*, %struct.evrpc** %6, align 8
  %55 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32* %53(i32 %56)
  %58 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %5, align 8
  %59 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  %60 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %5, align 8
  %61 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %74

65:                                               ; preds = %50
  %66 = load %struct.evrpc*, %struct.evrpc** %6, align 8
  %67 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %66, i32 0, i32 2
  %68 = load i32 (%struct.evrpc_req_generic*, i32)*, i32 (%struct.evrpc_req_generic*, i32)** %67, align 8
  %69 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %5, align 8
  %70 = load %struct.evrpc*, %struct.evrpc** %6, align 8
  %71 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 %68(%struct.evrpc_req_generic* %69, i32 %72)
  br label %80

74:                                               ; preds = %64, %49, %36, %21
  %75 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %5, align 8
  %76 = call i32 @evrpc_reqstate_free_(%struct.evrpc_req_generic* %75)
  %77 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %78 = load i32, i32* @HTTP_SERVUNAVAIL, align 4
  %79 = call i32 @evhttp_send_error(%struct.evhttp_request* %77, i32 %78, i32* null)
  br label %80

80:                                               ; preds = %74, %65
  ret void
}

declare dso_local i32 @EVUTIL_ASSERT(%struct.evrpc_req_generic*) #1

declare dso_local i32 @evrpc_reqstate_free_(%struct.evrpc_req_generic*) #1

declare dso_local i32 @evhttp_send_error(%struct.evhttp_request*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
