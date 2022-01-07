; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_execute_handshake_accept.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_execute_handshake_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.connection = type { i32 }
%struct.rpc_handshake_accept = type { i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"rpc_execute_handshake_accept: remote_id = %lld, len = %d\0A\00", align 1
@STATS = common dso_local global %struct.TYPE_4__* null, align 8
@precise_now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_execute_handshake_accept(%struct.connection* %0, %struct.rpc_handshake_accept* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.rpc_handshake_accept*, align 8
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store %struct.rpc_handshake_accept* %1, %struct.rpc_handshake_accept** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.rpc_handshake_accept*, %struct.rpc_handshake_accept** %6, align 8
  %9 = getelementptr inbounds %struct.rpc_handshake_accept, %struct.rpc_handshake_accept* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 8
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.rpc_handshake_accept*, %struct.rpc_handshake_accept** %6, align 8
  %24 = getelementptr inbounds %struct.rpc_handshake_accept, %struct.rpc_handshake_accept* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @get_relative_by_id(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %17
  %29 = load %struct.connection*, %struct.connection** %5, align 8
  %30 = load %struct.rpc_handshake_accept*, %struct.rpc_handshake_accept** %6, align 8
  %31 = getelementptr inbounds %struct.rpc_handshake_accept, %struct.rpc_handshake_accept* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rpc_send_handshake_reject(%struct.connection* %29, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %48

34:                                               ; preds = %17
  %35 = load i32, i32* @precise_now, align 4
  %36 = load %struct.connection*, %struct.connection** %5, align 8
  %37 = getelementptr inbounds %struct.connection, %struct.connection* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.rpc_handshake_accept*, %struct.rpc_handshake_accept** %6, align 8
  %39 = getelementptr inbounds %struct.rpc_handshake_accept, %struct.rpc_handshake_accept* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rpc_handshake_accept*, %struct.rpc_handshake_accept** %6, align 8
  %42 = getelementptr inbounds %struct.rpc_handshake_accept, %struct.rpc_handshake_accept* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @update_relatives_binlog_position(i32 %40, i32 %43)
  %45 = icmp sge i32 %44, 1
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %34, %28, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @get_relative_by_id(i32) #1

declare dso_local i32 @rpc_send_handshake_reject(%struct.connection*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @update_relatives_binlog_position(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
