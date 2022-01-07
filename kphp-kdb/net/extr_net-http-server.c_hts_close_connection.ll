; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-http-server.c_hts_close_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-http-server.c_hts_close_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.connection*, i32)* }

@http_connections = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hts_close_connection(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @http_connections, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* @http_connections, align 4
  %7 = load %struct.connection*, %struct.connection** %3, align 8
  %8 = call %struct.TYPE_2__* @HTS_FUNC(%struct.connection* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.connection*, i32)*, i32 (%struct.connection*, i32)** %9, align 8
  %11 = icmp ne i32 (%struct.connection*, i32)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.connection*, %struct.connection** %3, align 8
  %14 = call %struct.TYPE_2__* @HTS_FUNC(%struct.connection* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.connection*, i32)*, i32 (%struct.connection*, i32)** %15, align 8
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 %16(%struct.connection* %17, i32 %18)
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.connection*, %struct.connection** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @server_close_connection(%struct.connection* %21, i32 %22)
  ret i32 %23
}

declare dso_local %struct.TYPE_2__* @HTS_FUNC(%struct.connection*) #1

declare dso_local i32 @server_close_connection(%struct.connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
