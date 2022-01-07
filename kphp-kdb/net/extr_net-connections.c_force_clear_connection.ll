; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_force_clear_connection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_force_clear_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.connection*, i32)* }

@.str = private unnamed_addr constant [27 x i8] c"socket %d: forced closing\0A\00", align 1
@conn_connecting = common dso_local global i64 0, align 8
@active_connections = common dso_local global i32 0, align 4
@C_SPECIAL = common dso_local global i32 0, align 4
@total_connect_failures = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @force_clear_connection(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %3 = load %struct.connection*, %struct.connection** %2, align 8
  %4 = getelementptr inbounds %struct.connection, %struct.connection* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.connection*, %struct.connection** %2, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @conn_connecting, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load i32, i32* @active_connections, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* @active_connections, align 4
  %15 = load %struct.connection*, %struct.connection** %2, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @C_SPECIAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load %struct.connection*, %struct.connection** %2, align 8
  %23 = call i32 @close_special_connection(%struct.connection* %22)
  br label %24

24:                                               ; preds = %21, %12
  br label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @total_connect_failures, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @total_connect_failures, align 4
  br label %28

28:                                               ; preds = %25, %24
  %29 = load %struct.connection*, %struct.connection** %2, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.connection*, i32)*, i32 (%struct.connection*, i32)** %32, align 8
  %34 = load %struct.connection*, %struct.connection** %2, align 8
  %35 = call i32 %33(%struct.connection* %34, i32 0)
  %36 = load %struct.connection*, %struct.connection** %2, align 8
  %37 = call i32 @clear_connection_timeout(%struct.connection* %36)
  %38 = load %struct.connection*, %struct.connection** %2, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %28
  %43 = load %struct.connection*, %struct.connection** %2, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %42, %28
  %48 = load %struct.connection*, %struct.connection** %2, align 8
  %49 = call i32 @memset(%struct.connection* %48, i32 0, i32 40)
  ret i32 1
}

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @close_special_connection(%struct.connection*) #1

declare dso_local i32 @clear_connection_timeout(%struct.connection*) #1

declare dso_local i32 @memset(%struct.connection*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
