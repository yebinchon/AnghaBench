; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_send_divorce.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_send_divorce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.connection = type { i32 }
%struct.rpc_divorce = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"rpc_send_divorce\0A\00", align 1
@Q = common dso_local global i64 0, align 8
@RPC_TYPE_DIVORCE = common dso_local global i32 0, align 4
@STATS = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_send_divorce(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.rpc_divorce*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load i32, i32* @verbosity, align 4
  %6 = icmp sge i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i64, i64* @Q, align 8
  %12 = inttoptr i64 %11 to %struct.rpc_divorce*
  store %struct.rpc_divorce* %12, %struct.rpc_divorce** %4, align 8
  %13 = load %struct.rpc_divorce*, %struct.rpc_divorce** %4, align 8
  %14 = load %struct.connection*, %struct.connection** %3, align 8
  %15 = load i32, i32* @RPC_TYPE_DIVORCE, align 4
  %16 = call i64 @rpc_create_query(%struct.rpc_divorce* %13, i32 4, %struct.connection* %14, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %28

19:                                               ; preds = %10
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.rpc_divorce*, %struct.rpc_divorce** %4, align 8
  %26 = load %struct.connection*, %struct.connection** %3, align 8
  %27 = call i32 @rpc_send_query(%struct.rpc_divorce* %25, %struct.connection* %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %19, %18
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @rpc_create_query(%struct.rpc_divorce*, i32, %struct.connection*, i32) #1

declare dso_local i32 @rpc_send_query(%struct.rpc_divorce*, %struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
