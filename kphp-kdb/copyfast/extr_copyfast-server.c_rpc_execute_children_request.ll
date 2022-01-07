; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_rpc_execute_children_request.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_rpc_execute_children_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.connection = type { i32 }
%struct.rpc_children_request = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"rpc_execute_children_request: len = %d\0A\00", align 1
@nodes = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_execute_children_request(%struct.connection* %0, %struct.rpc_children_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.rpc_children_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store %struct.rpc_children_request* %1, %struct.rpc_children_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @verbosity, align 4
  %10 = icmp sge i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @stderr, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %3
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 4
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %44

20:                                               ; preds = %15
  %21 = load %struct.rpc_children_request*, %struct.rpc_children_request** %6, align 8
  %22 = getelementptr inbounds %struct.rpc_children_request, %struct.rpc_children_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @get_node_idx(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nodes, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load %struct.connection*, %struct.connection** %5, align 8
  %34 = load %struct.rpc_children_request*, %struct.rpc_children_request** %6, align 8
  %35 = getelementptr inbounds %struct.rpc_children_request, %struct.rpc_children_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rpc_send_children_old(%struct.connection* %33, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %44

38:                                               ; preds = %20
  %39 = load %struct.connection*, %struct.connection** %5, align 8
  %40 = load %struct.rpc_children_request*, %struct.rpc_children_request** %6, align 8
  %41 = getelementptr inbounds %struct.rpc_children_request, %struct.rpc_children_request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rpc_send_children(%struct.connection* %39, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %32, %19
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @get_node_idx(i32) #1

declare dso_local i32 @rpc_send_children_old(%struct.connection*, i32) #1

declare dso_local i32 @rpc_send_children(%struct.connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
