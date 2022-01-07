; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_tl_aio_on_timeout_default.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_tl_aio_on_timeout_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { %struct.tl_saved_query* }
%struct.tl_saved_query = type { i32, i32 (%struct.tl_saved_query*)*, i32, i32 }

@expired_aio_queries = common dso_local global i32 0, align 4
@TL_ERROR_AIO_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_aio_on_timeout_default(%struct.conn_query* %0) #0 {
  %2 = alloca %struct.conn_query*, align 8
  %3 = alloca %struct.tl_saved_query*, align 8
  store %struct.conn_query* %0, %struct.conn_query** %2, align 8
  %4 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %5 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %4, i32 0, i32 0
  %6 = load %struct.tl_saved_query*, %struct.tl_saved_query** %5, align 8
  store %struct.tl_saved_query* %6, %struct.tl_saved_query** %3, align 8
  %7 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %8 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %8, align 8
  %11 = load i32, i32* @expired_aio_queries, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @expired_aio_queries, align 4
  %13 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %14 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @TL_ERROR_AIO_TIMEOUT, align 4
  %19 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %20 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %22 = call i32 @tl_aio_fail_start(%struct.tl_saved_query* %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %25 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %27 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %23
  %31 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %32 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %31, i32 0, i32 1
  %33 = load i32 (%struct.tl_saved_query*)*, i32 (%struct.tl_saved_query*)** %32, align 8
  %34 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %35 = call i32 %33(%struct.tl_saved_query* %34)
  %36 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %37 = call i32 @zfree(%struct.tl_saved_query* %36, i32 24)
  br label %38

38:                                               ; preds = %30, %23
  %39 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %40 = call i32 @tl_delete_aio_query(%struct.conn_query* %39)
  ret i32 0
}

declare dso_local i32 @tl_aio_fail_start(%struct.tl_saved_query*) #1

declare dso_local i32 @zfree(%struct.tl_saved_query*, i32) #1

declare dso_local i32 @tl_delete_aio_query(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
