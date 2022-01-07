; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_fail_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_fail_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@C_FAILED = common dso_local global i32 0, align 4
@total_failed_connections = common dso_local global i32 0, align 4
@conn_connecting = common dso_local global i64 0, align 8
@total_connect_failures = common dso_local global i32 0, align 4
@C_WANTRD = common dso_local global i32 0, align 4
@C_WANTWR = common dso_local global i32 0, align 4
@active_outbound_connections = common dso_local global i32 0, align 4
@active_connections = common dso_local global i32 0, align 4
@conn_error = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fail_connection(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @C_FAILED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @total_failed_connections, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @total_failed_connections, align 4
  %14 = load %struct.connection*, %struct.connection** %3, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @conn_connecting, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* @total_connect_failures, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @total_connect_failures, align 4
  br label %22

22:                                               ; preds = %19, %11
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* @C_FAILED, align 4
  %25 = load %struct.connection*, %struct.connection** %3, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @C_WANTRD, align 4
  %30 = load i32, i32* @C_WANTWR, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load %struct.connection*, %struct.connection** %3, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.connection*, %struct.connection** %3, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @conn_connecting, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %23
  %43 = load %struct.connection*, %struct.connection** %3, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @active_outbound_connections, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @active_outbound_connections, align 4
  %51 = load i32, i32* @active_connections, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @active_connections, align 4
  br label %53

53:                                               ; preds = %42, %23
  %54 = load i64, i64* @conn_error, align 8
  %55 = load %struct.connection*, %struct.connection** %3, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.connection*, %struct.connection** %3, align 8
  %58 = getelementptr inbounds %struct.connection, %struct.connection* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.connection*, %struct.connection** %3, align 8
  %64 = getelementptr inbounds %struct.connection, %struct.connection* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %53
  %66 = load %struct.connection*, %struct.connection** %3, align 8
  %67 = getelementptr inbounds %struct.connection, %struct.connection* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @put_event_into_heap(i32 %68)
  ret i32 0
}

declare dso_local i32 @put_event_into_heap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
