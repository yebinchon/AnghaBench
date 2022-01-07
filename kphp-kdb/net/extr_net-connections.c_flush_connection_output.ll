; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_flush_connection_output.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_flush_connection_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@C_WANTWR = common dso_local global i32 0, align 4
@C_INCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flush_connection_output(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = call i64 @out_total_processed_bytes(%struct.connection* %5)
  %7 = load %struct.connection*, %struct.connection** %3, align 8
  %8 = call i64 @out_total_unprocessed_bytes(%struct.connection* %7)
  %9 = add nsw i64 %6, %8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load i32, i32* @C_WANTWR, align 4
  %13 = load %struct.connection*, %struct.connection** %3, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.connection*)**
  %22 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %21, align 8
  %23 = load %struct.connection*, %struct.connection** %3, align 8
  %24 = call i32 %22(%struct.connection* %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.connection*, %struct.connection** %3, align 8
  %26 = call i64 @out_total_processed_bytes(%struct.connection* %25)
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %11
  %29 = load %struct.connection*, %struct.connection** %3, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @C_INCONN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load %struct.connection*, %struct.connection** %3, align 8
  %37 = getelementptr inbounds %struct.connection, %struct.connection* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.connection*, %struct.connection** %3, align 8
  %40 = call i32 @compute_conn_events(%struct.connection* %39)
  %41 = call i32 @epoll_insert(i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %35, %28, %11
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %42
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @out_total_processed_bytes(%struct.connection*) #1

declare dso_local i64 @out_total_unprocessed_bytes(%struct.connection*) #1

declare dso_local i32 @epoll_insert(i32, i32) #1

declare dso_local i32 @compute_conn_events(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
