; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_insert_conn_query_into_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_insert_conn_query_into_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32, %struct.conn_query*, %struct.conn_query* }
%struct.TYPE_3__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@conn_event_wakeup_gateway = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @insert_conn_query_into_list(%struct.conn_query* %0, %struct.conn_query* %1) #0 {
  %3 = alloca %struct.conn_query*, align 8
  %4 = alloca %struct.conn_query*, align 8
  store %struct.conn_query* %0, %struct.conn_query** %3, align 8
  store %struct.conn_query* %1, %struct.conn_query** %4, align 8
  %5 = load %struct.conn_query*, %struct.conn_query** %4, align 8
  %6 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %7 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %6, i32 0, i32 4
  store %struct.conn_query* %5, %struct.conn_query** %7, align 8
  %8 = load %struct.conn_query*, %struct.conn_query** %4, align 8
  %9 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %8, i32 0, i32 3
  %10 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %11 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %12 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %11, i32 0, i32 3
  store %struct.conn_query* %10, %struct.conn_query** %12, align 8
  %13 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %14 = load %struct.conn_query*, %struct.conn_query** %4, align 8
  %15 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %14, i32 0, i32 3
  %16 = load %struct.conn_query*, %struct.conn_query** %15, align 8
  %17 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %16, i32 0, i32 4
  store %struct.conn_query* %13, %struct.conn_query** %17, align 8
  %18 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %19 = load %struct.conn_query*, %struct.conn_query** %4, align 8
  %20 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %19, i32 0, i32 3
  store %struct.conn_query* %18, %struct.conn_query** %20, align 8
  %21 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %22 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 @assert(%struct.TYPE_4__* %23)
  %25 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %26 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %31 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %33 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %39 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @conn_event_wakeup_gateway, align 4
  %42 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %43 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  %45 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %46 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %2
  %51 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %52 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %51, i32 0, i32 0
  %53 = call i32 @insert_event_timer(%struct.TYPE_3__* %52)
  br label %54

54:                                               ; preds = %50, %2
  ret i32 0
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @insert_event_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
