; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_execute_join_ack.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_execute_join_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.connection = type { i32 }
%struct.rpc_join_ack = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"rpc_execute_join_ack: len = %d\0A\00", align 1
@STATS = common dso_local global %struct.TYPE_4__* null, align 8
@NODE_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%p %lld %lld\0A\00", align 1
@CC = common dso_local global i32 0, align 4
@CLUSTER_ID = common dso_local global i32 0, align 4
@ID_MASK = common dso_local global i32 0, align 4
@CLUSTER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_execute_join_ack(%struct.connection* %0, %struct.rpc_join_ack* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.rpc_join_ack*, align 8
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store %struct.rpc_join_ack* %1, %struct.rpc_join_ack** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.rpc_join_ack*, %struct.rpc_join_ack** %6, align 8
  %21 = getelementptr inbounds %struct.rpc_join_ack, %struct.rpc_join_ack* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* @NODE_ID, align 4
  %23 = load i32, i32* @CC, align 4
  %24 = load i32, i32* @NODE_ID, align 4
  %25 = load i32, i32* @CLUSTER_ID, align 4
  %26 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @NODE_ID, align 4
  %28 = load i32, i32* @ID_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %14
  %32 = load i32, i32* @NODE_ID, align 4
  %33 = load i32, i32* @CLUSTER_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @CLUSTER_ID, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %14
  %38 = load i32, i32* @CLUSTER_ID, align 4
  store i32 %38, i32* @NODE_ID, align 4
  store i32 0, i32* %4, align 4
  br label %42

39:                                               ; preds = %31
  %40 = load %struct.connection*, %struct.connection** %5, align 8
  %41 = call i32 @rpc_send_children_request(%struct.connection* %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %37, %13
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @rpc_send_children_request(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
