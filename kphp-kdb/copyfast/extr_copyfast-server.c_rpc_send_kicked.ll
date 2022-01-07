; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_rpc_send_kicked.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_rpc_send_kicked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.rpc_kicked = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"rpc_send_kicked\0A\00", align 1
@Q = common dso_local global i64 0, align 8
@RPC_TYPE_KICKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_send_kicked(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.rpc_kicked*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = load i32, i32* @verbosity, align 4
  %5 = icmp sge i32 %4, 2
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i64, i64* @Q, align 8
  %11 = inttoptr i64 %10 to %struct.rpc_kicked*
  store %struct.rpc_kicked* %11, %struct.rpc_kicked** %3, align 8
  %12 = load %struct.rpc_kicked*, %struct.rpc_kicked** %3, align 8
  %13 = load %struct.connection*, %struct.connection** %2, align 8
  %14 = load i32, i32* @RPC_TYPE_KICKED, align 4
  %15 = call i32 @rpc_create_query(%struct.rpc_kicked* %12, i32 4, %struct.connection* %13, i32 %14)
  %16 = load %struct.rpc_kicked*, %struct.rpc_kicked** %3, align 8
  %17 = load %struct.connection*, %struct.connection** %2, align 8
  %18 = call i32 @rpc_send_query(%struct.rpc_kicked* %16, %struct.connection* %17)
  ret i32 %18
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @rpc_create_query(%struct.rpc_kicked*, i32, %struct.connection*, i32) #1

declare dso_local i32 @rpc_send_query(%struct.rpc_kicked*, %struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
