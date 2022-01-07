; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_cleanup_connection.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_cleanup_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1_conn_t = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_4__*, i32* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http1_conn_t*)* @cleanup_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_connection(%struct.st_h2o_http1_conn_t* %0) #0 {
  %2 = alloca %struct.st_h2o_http1_conn_t*, align 8
  store %struct.st_h2o_http1_conn_t* %0, %struct.st_h2o_http1_conn_t** %2, align 8
  %3 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %4 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %10 = call i32 @close_connection(%struct.st_h2o_http1_conn_t* %9, i32 1)
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %13 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %20 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %26 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %11
  %30 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %31 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %35 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @h2o_buffer_consume(i32* %33, i64 %36)
  br label %38

38:                                               ; preds = %29, %11
  %39 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %40 = call i32 @init_request(%struct.st_h2o_http1_conn_t* %39)
  %41 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %42 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %46 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %50 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  %52 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %53 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %55 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %57 = call i32 @reqread_start(%struct.st_h2o_http1_conn_t* %56)
  br label %58

58:                                               ; preds = %38, %8
  ret void
}

declare dso_local i32 @close_connection(%struct.st_h2o_http1_conn_t*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_buffer_consume(i32*, i64) #1

declare dso_local i32 @init_request(%struct.st_h2o_http1_conn_t*) #1

declare dso_local i32 @reqread_start(%struct.st_h2o_http1_conn_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
