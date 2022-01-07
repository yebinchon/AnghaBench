; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_server_close_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_server_close_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, i64, %struct.TYPE_8__*, i64, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.conn_query* }
%struct.TYPE_8__ = type { i32 (%struct.connection*)*, i32 (%struct.connection*)* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.conn_query = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.conn_query*)* }

@outbound_connections = common dso_local global i32 0, align 4
@conn_connecting = common dso_local global i64 0, align 8
@active_outbound_connections = common dso_local global i32 0, align 4
@conn_none = common dso_local global i64 0, align 8
@ct_listen = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_close_connection(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.conn_query*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.connection*, %struct.connection** %4, align 8
  %8 = call i32 @clear_connection_timeout(%struct.connection* %7)
  %9 = load %struct.connection*, %struct.connection** %4, align 8
  %10 = getelementptr inbounds %struct.connection, %struct.connection* %9, i32 0, i32 8
  %11 = load %struct.conn_query*, %struct.conn_query** %10, align 8
  %12 = icmp ne %struct.conn_query* %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %40, %13
  %15 = load %struct.connection*, %struct.connection** %4, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 8
  %17 = load %struct.conn_query*, %struct.conn_query** %16, align 8
  %18 = load %struct.connection*, %struct.connection** %4, align 8
  %19 = bitcast %struct.connection* %18 to %struct.conn_query*
  %20 = icmp ne %struct.conn_query* %17, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %14
  %22 = load %struct.connection*, %struct.connection** %4, align 8
  %23 = getelementptr inbounds %struct.connection, %struct.connection* %22, i32 0, i32 8
  %24 = load %struct.conn_query*, %struct.conn_query** %23, align 8
  store %struct.conn_query* %24, %struct.conn_query** %6, align 8
  %25 = load %struct.conn_query*, %struct.conn_query** %6, align 8
  %26 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (%struct.conn_query*)*, i32 (%struct.conn_query*)** %28, align 8
  %30 = load %struct.conn_query*, %struct.conn_query** %6, align 8
  %31 = call i32 %29(%struct.conn_query* %30)
  %32 = load %struct.connection*, %struct.connection** %4, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 8
  %34 = load %struct.conn_query*, %struct.conn_query** %33, align 8
  %35 = load %struct.conn_query*, %struct.conn_query** %6, align 8
  %36 = icmp eq %struct.conn_query* %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = load %struct.conn_query*, %struct.conn_query** %6, align 8
  %39 = call i32 @delete_conn_query(%struct.conn_query* %38)
  br label %40

40:                                               ; preds = %37, %21
  br label %14

41:                                               ; preds = %14
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.connection*, %struct.connection** %4, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 3
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %46, align 8
  %48 = icmp ne i32 (%struct.connection*)* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load %struct.connection*, %struct.connection** %4, align 8
  %51 = getelementptr inbounds %struct.connection, %struct.connection* %50, i32 0, i32 3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %53, align 8
  %55 = load %struct.connection*, %struct.connection** %4, align 8
  %56 = call i32 %54(%struct.connection* %55)
  br label %57

57:                                               ; preds = %49, %42
  %58 = load %struct.connection*, %struct.connection** %4, align 8
  %59 = getelementptr inbounds %struct.connection, %struct.connection* %58, i32 0, i32 5
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = icmp ne %struct.TYPE_7__* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.connection*, %struct.connection** %4, align 8
  %64 = getelementptr inbounds %struct.connection, %struct.connection* %63, i32 0, i32 6
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = icmp ne %struct.TYPE_6__* %65, null
  br i1 %66, label %67, label %86

67:                                               ; preds = %62, %57
  %68 = load %struct.connection*, %struct.connection** %4, align 8
  %69 = getelementptr inbounds %struct.connection, %struct.connection* %68, i32 0, i32 7
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load %struct.connection*, %struct.connection** %4, align 8
  %72 = getelementptr inbounds %struct.connection, %struct.connection* %71, i32 0, i32 6
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %74, align 8
  %75 = load %struct.connection*, %struct.connection** %4, align 8
  %76 = getelementptr inbounds %struct.connection, %struct.connection* %75, i32 0, i32 6
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load %struct.connection*, %struct.connection** %4, align 8
  %79 = getelementptr inbounds %struct.connection, %struct.connection* %78, i32 0, i32 7
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %81, align 8
  %82 = load %struct.connection*, %struct.connection** %4, align 8
  %83 = getelementptr inbounds %struct.connection, %struct.connection* %82, i32 0, i32 6
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %83, align 8
  %84 = load %struct.connection*, %struct.connection** %4, align 8
  %85 = getelementptr inbounds %struct.connection, %struct.connection* %84, i32 0, i32 7
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %85, align 8
  br label %86

86:                                               ; preds = %67, %62
  %87 = load %struct.connection*, %struct.connection** %4, align 8
  %88 = getelementptr inbounds %struct.connection, %struct.connection* %87, i32 0, i32 5
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = icmp ne %struct.TYPE_7__* %89, null
  br i1 %90, label %91, label %115

91:                                               ; preds = %86
  %92 = load %struct.connection*, %struct.connection** %4, align 8
  %93 = getelementptr inbounds %struct.connection, %struct.connection* %92, i32 0, i32 5
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* @outbound_connections, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* @outbound_connections, align 4
  %100 = load %struct.connection*, %struct.connection** %4, align 8
  %101 = getelementptr inbounds %struct.connection, %struct.connection* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @conn_connecting, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %91
  %106 = load %struct.connection*, %struct.connection** %4, align 8
  %107 = getelementptr inbounds %struct.connection, %struct.connection* %106, i32 0, i32 5
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @active_outbound_connections, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* @active_outbound_connections, align 4
  br label %114

114:                                              ; preds = %105, %91
  br label %115

115:                                              ; preds = %114, %86
  %116 = load i64, i64* @conn_none, align 8
  %117 = load %struct.connection*, %struct.connection** %4, align 8
  %118 = getelementptr inbounds %struct.connection, %struct.connection* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.connection*, %struct.connection** %4, align 8
  %120 = getelementptr inbounds %struct.connection, %struct.connection* %119, i32 0, i32 4
  store i64 0, i64* %120, align 8
  %121 = load %struct.connection*, %struct.connection** %4, align 8
  %122 = getelementptr inbounds %struct.connection, %struct.connection* %121, i32 0, i32 1
  store i32 -1, i32* %122, align 8
  %123 = load %struct.connection*, %struct.connection** %4, align 8
  %124 = getelementptr inbounds %struct.connection, %struct.connection* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @ct_listen, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %137

129:                                              ; preds = %115
  %130 = load %struct.connection*, %struct.connection** %4, align 8
  %131 = getelementptr inbounds %struct.connection, %struct.connection* %130, i32 0, i32 3
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %133, align 8
  %135 = load %struct.connection*, %struct.connection** %4, align 8
  %136 = call i32 %134(%struct.connection* %135)
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %129, %128
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @clear_connection_timeout(%struct.connection*) #1

declare dso_local i32 @delete_conn_query(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
