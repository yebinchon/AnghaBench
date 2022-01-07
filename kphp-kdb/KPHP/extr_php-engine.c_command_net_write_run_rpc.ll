; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_command_net_write_run_rpc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_command_net_write_run_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32*, i32 }
%struct.connection = type { i32 }

@RPC_INVOKE_REQ = common dso_local global i32 0, align 4
@precise_now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @command_net_write_run_rpc(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca %struct.connection*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %5, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.connection*
  store %struct.connection* %16, %struct.connection** %6, align 8
  %17 = load %struct.connection*, %struct.connection** %6, align 8
  %18 = load i32, i32* @RPC_INVOKE_REQ, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @send_rpc_query(%struct.connection* %17, i32 %18, i32 %21, i32* %24, i64 %27)
  %29 = load %struct.connection*, %struct.connection** %6, align 8
  %30 = call i32 @flush_connection_output(%struct.connection* %29)
  %31 = load i32, i32* @precise_now, align 4
  %32 = load %struct.connection*, %struct.connection** %6, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @free(i32* %36)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @send_rpc_query(%struct.connection*, i32, i32, i32*, i64) #1

declare dso_local i32 @flush_connection_output(%struct.connection*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
