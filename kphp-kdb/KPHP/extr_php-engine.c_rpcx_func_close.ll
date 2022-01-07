; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpcx_func_close.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpcx_func_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.rpcs_data = type { i32* }

@.str = private unnamed_addr constant [21 x i8] c"rpc connection close\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"worker is unfinished after closing connection\00", align 1
@lease_ready_flag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcx_func_close(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpcs_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = call %struct.rpcs_data* @RPCS_DATA(%struct.connection* %8)
  store %struct.rpcs_data* %9, %struct.rpcs_data** %5, align 8
  %10 = load %struct.rpcs_data*, %struct.rpcs_data** %5, align 8
  %11 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @php_worker_terminate(i32* %16, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @php_worker_main(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.rpcs_data*, %struct.rpcs_data** %5, align 8
  %21 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  br i1 true, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 1
  br label %25

25:                                               ; preds = %22, %15
  %26 = phi i1 [ false, %15 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call i32 (...) @has_pending_scripts()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  store i32 1, i32* @lease_ready_flag, align 4
  %32 = call i32 (...) @run_rpc_lease()
  br label %33

33:                                               ; preds = %31, %25
  br label %34

34:                                               ; preds = %33, %2
  ret i32 0
}

declare dso_local %struct.rpcs_data* @RPCS_DATA(%struct.connection*) #1

declare dso_local i32 @php_worker_terminate(i32*, i32, i8*) #1

declare dso_local i32 @php_worker_main(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @has_pending_scripts(...) #1

declare dso_local i32 @run_rpc_lease(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
