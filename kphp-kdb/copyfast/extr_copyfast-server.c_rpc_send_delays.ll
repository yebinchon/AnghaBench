; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_rpc_send_delays.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_rpc_send_delays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.rpc_delays = type { i64, i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"rpc_send_delays: slow_delay = %lf, medium_delay = %lf\0A\00", align 1
@slow_delay = common dso_local global i32 0, align 4
@medium_delay = common dso_local global i32 0, align 4
@Q = common dso_local global i64 0, align 8
@RPC_TYPE_DELAYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_send_delays(%struct.connection* %0, i64 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rpc_delays*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @verbosity, align 4
  %7 = icmp sge i32 %6, 2
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* @slow_delay, align 4
  %11 = load i32, i32* @medium_delay, align 4
  %12 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %8, %2
  %14 = load i64, i64* @Q, align 8
  %15 = inttoptr i64 %14 to %struct.rpc_delays*
  store %struct.rpc_delays* %15, %struct.rpc_delays** %5, align 8
  %16 = load %struct.rpc_delays*, %struct.rpc_delays** %5, align 8
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = load i32, i32* @RPC_TYPE_DELAYS, align 4
  %19 = call i32 @rpc_create_query(%struct.rpc_delays* %16, i32 16, %struct.connection* %17, i32 %18)
  %20 = load i32, i32* @medium_delay, align 4
  %21 = load %struct.rpc_delays*, %struct.rpc_delays** %5, align 8
  %22 = getelementptr inbounds %struct.rpc_delays, %struct.rpc_delays* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @slow_delay, align 4
  %24 = load %struct.rpc_delays*, %struct.rpc_delays** %5, align 8
  %25 = getelementptr inbounds %struct.rpc_delays, %struct.rpc_delays* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.rpc_delays*, %struct.rpc_delays** %5, align 8
  %28 = getelementptr inbounds %struct.rpc_delays, %struct.rpc_delays* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.rpc_delays*, %struct.rpc_delays** %5, align 8
  %30 = load %struct.connection*, %struct.connection** %3, align 8
  %31 = call i32 @rpc_send_query(%struct.rpc_delays* %29, %struct.connection* %30)
  ret i32 %31
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @rpc_create_query(%struct.rpc_delays*, i32, %struct.connection*, i32) #1

declare dso_local i32 @rpc_send_query(%struct.rpc_delays*, %struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
