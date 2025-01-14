; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_run_rpc_send_message.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_run_rpc_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.connection* }
%struct.connection = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@rpc_worker = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"going to send %d bytes to session [%016llx:%016llx]\0A\00", align 1
@RPC_SEND_SESSION_MSG = common dso_local global i32 0, align 4
@php_script = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @php_worker_run_rpc_send_message(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @rpc_worker, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.connection*, %struct.connection** %15, align 8
  store %struct.connection* %16, %struct.connection** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %6, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30)
  %32 = load %struct.connection*, %struct.connection** %5, align 8
  %33 = load i32, i32* @RPC_SEND_SESSION_MSG, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @send_rpc_query(%struct.connection* %32, i32 %33, i32 %36, i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %13, %2
  %41 = load i32, i32* @php_script, align 4
  %42 = call i32 @php_script_query_readed(i32 %41)
  %43 = load i32, i32* @php_script, align 4
  %44 = call i32 @php_script_query_answered(i32 %43)
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @send_rpc_query(%struct.connection*, i32, i32, i32*, i32) #1

declare dso_local i32 @php_script_query_readed(i32) #1

declare dso_local i32 @php_script_query_answered(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
