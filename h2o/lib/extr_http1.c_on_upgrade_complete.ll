; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_on_upgrade_complete.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_on_upgrade_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.st_h2o_http1_conn_t* }
%struct.st_h2o_http1_conn_t = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32 (i8*, %struct.TYPE_6__*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*)* @on_upgrade_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_upgrade_complete(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st_h2o_http1_conn_t*, align 8
  %6 = alloca i32 (i8*, %struct.TYPE_6__*, i64)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %11, align 8
  store %struct.st_h2o_http1_conn_t* %12, %struct.st_h2o_http1_conn_t** %5, align 8
  %13 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %5, align 8
  %14 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32 (i8*, %struct.TYPE_6__*, i64)*, i32 (i8*, %struct.TYPE_6__*, i64)** %15, align 8
  store i32 (i8*, %struct.TYPE_6__*, i64)* %16, i32 (i8*, %struct.TYPE_6__*, i64)** %6, align 8
  %17 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %5, align 8
  %18 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  store i64 0, i64* %9, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %5, align 8
  %25 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %8, align 8
  %27 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %5, align 8
  %28 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  %30 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %5, align 8
  %31 = call i32 @close_connection(%struct.st_h2o_http1_conn_t* %30, i32 0)
  br label %35

32:                                               ; preds = %2
  %33 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %5, align 8
  %34 = call i32 @close_connection(%struct.st_h2o_http1_conn_t* %33, i32 1)
  br label %35

35:                                               ; preds = %32, %23
  %36 = load i32 (i8*, %struct.TYPE_6__*, i64)*, i32 (i8*, %struct.TYPE_6__*, i64)** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 %36(i8* %37, %struct.TYPE_6__* %38, i64 %39)
  ret void
}

declare dso_local i32 @close_connection(%struct.st_h2o_http1_conn_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
