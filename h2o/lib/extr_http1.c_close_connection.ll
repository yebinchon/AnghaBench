; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_close_connection.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_close_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1_conn_t = type { i32, i32*, i32, i32*, i32, i32 }

@H1_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http1_conn_t*, i32)* @close_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_connection(%struct.st_h2o_http1_conn_t* %0, i32 %1) #0 {
  %3 = alloca %struct.st_h2o_http1_conn_t*, align 8
  %4 = alloca i32, align 4
  store %struct.st_h2o_http1_conn_t* %0, %struct.st_h2o_http1_conn_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %3, align 8
  %6 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @H1_CLOSE, align 4
  %11 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %3, align 8
  %12 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %11, i32 0, i32 5
  %13 = call i32 @H2O_PROBE_CONN0(i32 %10, i32* %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %3, align 8
  %16 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %15, i32 0, i32 4
  %17 = call i32 @h2o_timer_unlink(i32* %16)
  %18 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %3, align 8
  %19 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %3, align 8
  %24 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %23, i32 0, i32 3
  %25 = call i32 @h2o_buffer_dispose(i32** %24)
  br label %26

26:                                               ; preds = %22, %14
  %27 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %3, align 8
  %28 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %27, i32 0, i32 2
  %29 = call i32 @h2o_dispose_request(i32* %28)
  %30 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %3, align 8
  %31 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %3, align 8
  %39 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @h2o_socket_close(i32* %40)
  br label %42

42:                                               ; preds = %37, %34, %26
  %43 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %3, align 8
  %44 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %43, i32 0, i32 0
  %45 = call i32 @h2o_linklist_unlink(i32* %44)
  %46 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %3, align 8
  %47 = call i32 @free(%struct.st_h2o_http1_conn_t* %46)
  ret void
}

declare dso_local i32 @H2O_PROBE_CONN0(i32, i32*) #1

declare dso_local i32 @h2o_timer_unlink(i32*) #1

declare dso_local i32 @h2o_buffer_dispose(i32**) #1

declare dso_local i32 @h2o_dispose_request(i32*) #1

declare dso_local i32 @h2o_socket_close(i32*) #1

declare dso_local i32 @h2o_linklist_unlink(i32*) #1

declare dso_local i32 @free(%struct.st_h2o_http1_conn_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
