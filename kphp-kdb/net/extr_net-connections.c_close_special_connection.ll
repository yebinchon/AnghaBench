; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_close_special_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_close_special_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.connection = type { i64, i64, i64 }

@ct_listen = common dso_local global i64 0, align 8
@active_special_connections = common dso_local global i64 0, align 8
@max_special_connections = common dso_local global i64 0, align 8
@Connections = common dso_local global %struct.TYPE_2__* null, align 8
@EVT_RWX = common dso_local global i32 0, align 4
@EVT_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_special_connection(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %3 = load %struct.connection*, %struct.connection** %2, align 8
  %4 = getelementptr inbounds %struct.connection, %struct.connection* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ct_listen, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %44

8:                                                ; preds = %1
  %9 = load i64, i64* @active_special_connections, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* @active_special_connections, align 8
  %11 = load i64, i64* @max_special_connections, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Connections, align 8
  %15 = load %struct.connection*, %struct.connection** %2, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ct_listen, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %13
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Connections, align 8
  %25 = load %struct.connection*, %struct.connection** %2, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.connection*, %struct.connection** %2, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %23
  %36 = load %struct.connection*, %struct.connection** %2, align 8
  %37 = getelementptr inbounds %struct.connection, %struct.connection* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @EVT_RWX, align 4
  %40 = load i32, i32* @EVT_LEVEL, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @epoll_insert(i64 %38, i32 %41)
  br label %43

43:                                               ; preds = %35, %23, %13, %8
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @epoll_insert(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
