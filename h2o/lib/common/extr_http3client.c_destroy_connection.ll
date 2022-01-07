; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_destroy_connection.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_destroy_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http3client_conn_t = type { i32, %struct.TYPE_8__, i32, i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.st_h2o_http3client_conn_t* }
%struct.TYPE_5__ = type { %struct.st_h2o_http3client_conn_t* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http3client_conn_t*)* @destroy_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_connection(%struct.st_h2o_http3client_conn_t* %0) #0 {
  %2 = alloca %struct.st_h2o_http3client_conn_t*, align 8
  store %struct.st_h2o_http3client_conn_t* %0, %struct.st_h2o_http3client_conn_t** %2, align 8
  %3 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %2, align 8
  %4 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %3, i32 0, i32 4
  %5 = call i64 @h2o_linklist_is_linked(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %2, align 8
  %9 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %8, i32 0, i32 4
  %10 = call i32 @h2o_linklist_unlink(i32* %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %2, align 8
  %13 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %2, align 8
  %18 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @h2o_hostinfo_getaddr_cancel(i32* %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %2, align 8
  %23 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %22, i32 0, i32 2
  %24 = call i32 @h2o_timer_unlink(i32* %23)
  %25 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %2, align 8
  %26 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %29, align 8
  %31 = call i32 @free(%struct.st_h2o_http3client_conn_t* %30)
  %32 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %2, align 8
  %33 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %36, align 8
  %38 = call i32 @free(%struct.st_h2o_http3client_conn_t* %37)
  %39 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %2, align 8
  %40 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %39, i32 0, i32 0
  %41 = call i32 @h2o_http3_dispose_conn(i32* %40)
  %42 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %2, align 8
  %43 = call i32 @free(%struct.st_h2o_http3client_conn_t* %42)
  ret void
}

declare dso_local i64 @h2o_linklist_is_linked(i32*) #1

declare dso_local i32 @h2o_linklist_unlink(i32*) #1

declare dso_local i32 @h2o_hostinfo_getaddr_cancel(i32*) #1

declare dso_local i32 @h2o_timer_unlink(i32*) #1

declare dso_local i32 @free(%struct.st_h2o_http3client_conn_t*) #1

declare dso_local i32 @h2o_http3_dispose_conn(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
