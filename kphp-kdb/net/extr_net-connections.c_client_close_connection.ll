; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_client_close_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_client_close_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, %struct.TYPE_8__*, i64, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.conn_query*, %struct.conn_target* }
%struct.TYPE_8__ = type { i32 (%struct.connection*)*, i32 (%struct.connection*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.conn_query = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.conn_query*)* }
%struct.conn_target = type { i64, i64, i64, i64, i32 }

@outbound_connections = common dso_local global i32 0, align 4
@conn_connecting = common dso_local global i64 0, align 8
@active_outbound_connections = common dso_local global i32 0, align 4
@precise_now = common dso_local global i64 0, align 8
@conn_none = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @client_close_connection(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.conn_query*, align 8
  %6 = alloca %struct.conn_target*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.connection*, %struct.connection** %3, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 7
  %9 = load %struct.conn_target*, %struct.conn_target** %8, align 8
  store %struct.conn_target* %9, %struct.conn_target** %6, align 8
  %10 = load %struct.connection*, %struct.connection** %3, align 8
  %11 = call i32 @clear_connection_timeout(%struct.connection* %10)
  %12 = load %struct.connection*, %struct.connection** %3, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 6
  %14 = load %struct.conn_query*, %struct.conn_query** %13, align 8
  %15 = icmp ne %struct.conn_query* %14, null
  br i1 %15, label %16, label %45

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %43, %16
  %18 = load %struct.connection*, %struct.connection** %3, align 8
  %19 = getelementptr inbounds %struct.connection, %struct.connection* %18, i32 0, i32 6
  %20 = load %struct.conn_query*, %struct.conn_query** %19, align 8
  %21 = load %struct.connection*, %struct.connection** %3, align 8
  %22 = bitcast %struct.connection* %21 to %struct.conn_query*
  %23 = icmp ne %struct.conn_query* %20, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %17
  %25 = load %struct.connection*, %struct.connection** %3, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 6
  %27 = load %struct.conn_query*, %struct.conn_query** %26, align 8
  store %struct.conn_query* %27, %struct.conn_query** %5, align 8
  %28 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  %29 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32 (%struct.conn_query*)*, i32 (%struct.conn_query*)** %31, align 8
  %33 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  %34 = call i32 %32(%struct.conn_query* %33)
  %35 = load %struct.connection*, %struct.connection** %3, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 6
  %37 = load %struct.conn_query*, %struct.conn_query** %36, align 8
  %38 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  %39 = icmp eq %struct.conn_query* %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %24
  %41 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  %42 = call i32 @delete_conn_query(%struct.conn_query* %41)
  br label %43

43:                                               ; preds = %40, %24
  br label %17

44:                                               ; preds = %17
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.connection*, %struct.connection** %3, align 8
  %47 = getelementptr inbounds %struct.connection, %struct.connection* %46, i32 0, i32 2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %49, align 8
  %51 = icmp ne i32 (%struct.connection*)* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.connection*, %struct.connection** %3, align 8
  %54 = getelementptr inbounds %struct.connection, %struct.connection* %53, i32 0, i32 2
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %56, align 8
  %58 = load %struct.connection*, %struct.connection** %3, align 8
  %59 = call i32 %57(%struct.connection* %58)
  br label %60

60:                                               ; preds = %52, %45
  %61 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %62 = icmp ne %struct.conn_target* %61, null
  br i1 %62, label %63, label %128

63:                                               ; preds = %60
  %64 = load %struct.connection*, %struct.connection** %3, align 8
  %65 = getelementptr inbounds %struct.connection, %struct.connection* %64, i32 0, i32 5
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load %struct.connection*, %struct.connection** %3, align 8
  %68 = getelementptr inbounds %struct.connection, %struct.connection* %67, i32 0, i32 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %70, align 8
  %71 = load %struct.connection*, %struct.connection** %3, align 8
  %72 = getelementptr inbounds %struct.connection, %struct.connection* %71, i32 0, i32 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load %struct.connection*, %struct.connection** %3, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 5
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %77, align 8
  %78 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %79 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %79, align 8
  %82 = load i32, i32* @outbound_connections, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* @outbound_connections, align 4
  %84 = load %struct.connection*, %struct.connection** %3, align 8
  %85 = getelementptr inbounds %struct.connection, %struct.connection* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @conn_connecting, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %63
  %90 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %91 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* @active_outbound_connections, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* @active_outbound_connections, align 4
  br label %96

96:                                               ; preds = %89, %63
  %97 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %98 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %101 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %99, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %96
  %105 = load i64, i64* @precise_now, align 8
  %106 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %107 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp sge i64 %105, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %104
  %111 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %112 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %110
  %116 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %117 = call i32 @create_new_connections(%struct.conn_target* %116)
  %118 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %119 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @precise_now, align 8
  %122 = icmp sle i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load %struct.conn_target*, %struct.conn_target** %6, align 8
  %125 = call i32 @compute_next_reconnect(%struct.conn_target* %124)
  br label %126

126:                                              ; preds = %123, %115
  br label %127

127:                                              ; preds = %126, %110, %104, %96
  br label %128

128:                                              ; preds = %127, %60
  %129 = load i64, i64* @conn_none, align 8
  %130 = load %struct.connection*, %struct.connection** %3, align 8
  %131 = getelementptr inbounds %struct.connection, %struct.connection* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load %struct.connection*, %struct.connection** %3, align 8
  %133 = getelementptr inbounds %struct.connection, %struct.connection* %132, i32 0, i32 3
  store i64 0, i64* %133, align 8
  %134 = load %struct.connection*, %struct.connection** %3, align 8
  %135 = getelementptr inbounds %struct.connection, %struct.connection* %134, i32 0, i32 1
  store i32 -1, i32* %135, align 8
  %136 = load %struct.connection*, %struct.connection** %3, align 8
  %137 = getelementptr inbounds %struct.connection, %struct.connection* %136, i32 0, i32 2
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %139, align 8
  %141 = load %struct.connection*, %struct.connection** %3, align 8
  %142 = call i32 %140(%struct.connection* %141)
  ret i32 %142
}

declare dso_local i32 @clear_connection_timeout(%struct.connection*) #1

declare dso_local i32 @delete_conn_query(%struct.conn_query*) #1

declare dso_local i32 @create_new_connections(%struct.conn_target*) #1

declare dso_local i32 @compute_next_reconnect(%struct.conn_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
