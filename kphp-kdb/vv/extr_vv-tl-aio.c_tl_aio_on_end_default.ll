; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_tl_aio_on_end_default.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_tl_aio_on_end_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { %struct.tl_saved_query* }
%struct.tl_saved_query = type { i32, i32 }

@finished_aio_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_aio_on_end_default(%struct.conn_query* %0) #0 {
  %2 = alloca %struct.conn_query*, align 8
  %3 = alloca %struct.tl_saved_query*, align 8
  store %struct.conn_query* %0, %struct.conn_query** %2, align 8
  %4 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %5 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %4, i32 0, i32 0
  %6 = load %struct.tl_saved_query*, %struct.tl_saved_query** %5, align 8
  store %struct.tl_saved_query* %6, %struct.tl_saved_query** %3, align 8
  %7 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %8 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %8, align 4
  %11 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %12 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %17 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @finished_aio_queue, align 4
  %22 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %23 = call i32 @queue_add_finished_aio(i32 %21, %struct.tl_saved_query* %22)
  store i32 %23, i32* @finished_aio_queue, align 4
  br label %24

24:                                               ; preds = %20, %15, %1
  %25 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %26 = call i32 @tl_delete_aio_query(%struct.conn_query* %25)
  ret i32 0
}

declare dso_local i32 @queue_add_finished_aio(i32, %struct.tl_saved_query*) #1

declare dso_local i32 @tl_delete_aio_query(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
