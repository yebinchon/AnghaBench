; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_connection_cb_cleanup.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_connection_cb_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i64, i64, %struct.evcon_requestq, i32, i32, %struct.timeval }
%struct.evcon_requestq = type { i32 }
%struct.timeval = type { i32, i32 }
%struct.evhttp_request = type { i32, i32 (%struct.evhttp_request*, i32)*, i32* }

@evhttp_connection_retry = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*)* @evhttp_connection_cb_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_connection_cb_cleanup(%struct.evhttp_connection* %0) #0 {
  %2 = alloca %struct.evhttp_connection*, align 8
  %3 = alloca %struct.evcon_requestq, align 4
  %4 = alloca %struct.timeval, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.evhttp_request*, align 8
  %7 = alloca %struct.evhttp_request*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %2, align 8
  %8 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %9 = call i32 @evhttp_connection_reset_(%struct.evhttp_connection* %8)
  %10 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %11 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %16 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %19 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %78

22:                                               ; preds = %14, %1
  %23 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %24 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %23, i32 0, i32 5
  %25 = bitcast %struct.timeval* %4 to i8*
  %26 = bitcast %struct.timeval* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 8, i1 false)
  %27 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %28 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %27, i32 0, i32 3
  %29 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %30 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @evhttp_connection_retry, align 4
  %33 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %34 = call i32 @evtimer_assign(i32* %28, i32 %31, i32 %32, %struct.evhttp_connection* %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %67, %22
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %39 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 2
  store i32 %45, i32* %43, align 4
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 1000000
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1000000
  store i32 %52, i32* %50, align 4
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %49, %42
  %57 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 2
  store i32 %59, i32* %57, align 4
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 3600
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  store i32 3600, i32* %64, align 4
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %56
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %35

70:                                               ; preds = %35
  %71 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %72 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %71, i32 0, i32 3
  %73 = call i32 @event_add(i32* %72, %struct.timeval* %4)
  %74 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %75 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  br label %118

78:                                               ; preds = %14
  %79 = call i32 @TAILQ_INIT(%struct.evcon_requestq* %3)
  br label %80

80:                                               ; preds = %85, %78
  %81 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %82 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %81, i32 0, i32 2
  %83 = call %struct.evhttp_request* @TAILQ_FIRST(%struct.evcon_requestq* %82)
  %84 = icmp ne %struct.evhttp_request* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %87 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %86, i32 0, i32 2
  %88 = call %struct.evhttp_request* @TAILQ_FIRST(%struct.evcon_requestq* %87)
  store %struct.evhttp_request* %88, %struct.evhttp_request** %6, align 8
  %89 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %90 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %89, i32 0, i32 2
  %91 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %92 = load i32, i32* @next, align 4
  %93 = call i32 @TAILQ_REMOVE(%struct.evcon_requestq* %90, %struct.evhttp_request* %91, i32 %92)
  %94 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %95 = load i32, i32* @next, align 4
  %96 = call i32 @TAILQ_INSERT_TAIL(%struct.evcon_requestq* %3, %struct.evhttp_request* %94, i32 %95)
  br label %80

97:                                               ; preds = %80
  br label %98

98:                                               ; preds = %101, %97
  %99 = call %struct.evhttp_request* @TAILQ_FIRST(%struct.evcon_requestq* %3)
  %100 = icmp ne %struct.evhttp_request* %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %98
  %102 = call %struct.evhttp_request* @TAILQ_FIRST(%struct.evcon_requestq* %3)
  store %struct.evhttp_request* %102, %struct.evhttp_request** %7, align 8
  %103 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %104 = load i32, i32* @next, align 4
  %105 = call i32 @TAILQ_REMOVE(%struct.evcon_requestq* %3, %struct.evhttp_request* %103, i32 %104)
  %106 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %107 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %106, i32 0, i32 2
  store i32* null, i32** %107, align 8
  %108 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %109 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %108, i32 0, i32 1
  %110 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %109, align 8
  %111 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %112 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %113 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 %110(%struct.evhttp_request* %111, i32 %114)
  %116 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %117 = call i32 @evhttp_request_free_auto(%struct.evhttp_request* %116)
  br label %98

118:                                              ; preds = %70, %98
  ret void
}

declare dso_local i32 @evhttp_connection_reset_(%struct.evhttp_connection*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @evtimer_assign(i32*, i32, i32, %struct.evhttp_connection*) #1

declare dso_local i32 @event_add(i32*, %struct.timeval*) #1

declare dso_local i32 @TAILQ_INIT(%struct.evcon_requestq*) #1

declare dso_local %struct.evhttp_request* @TAILQ_FIRST(%struct.evcon_requestq*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.evcon_requestq*, %struct.evhttp_request*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.evcon_requestq*, %struct.evhttp_request*, i32) #1

declare dso_local i32 @evhttp_request_free_auto(%struct.evhttp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
