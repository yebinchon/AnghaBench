; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_calculate_key_target.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_calculate_key_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.rpc_cluster_bucket = type opaque

@.str = private unnamed_addr constant [46 x i8] c"calculate_key_target: key = %s, key_len = %d\0A\00", align 1
@CC = common dso_local global %struct.TYPE_4__* null, align 8
@RPC_FUN_STRING_FORWARD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_cluster_bucket* @calculate_key_target(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.rpc_cluster_bucket*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i8*], align 16
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  store i8* %11, i8** %12, align 16
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 1
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 2
  store i8* null, i8** %17, align 16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CC, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @RPC_FUN_STRING_FORWARD, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %26 = call i32 @RPC_FUN_START(i32 %24, i8** %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store %struct.rpc_cluster_bucket* null, %struct.rpc_cluster_bucket** %3, align 8
  br label %34

30:                                               ; preds = %2
  %31 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 2
  %32 = load i8*, i8** %31, align 16
  %33 = bitcast i8* %32 to %struct.rpc_cluster_bucket*
  store %struct.rpc_cluster_bucket* %33, %struct.rpc_cluster_bucket** %3, align 8
  br label %34

34:                                               ; preds = %30, %29
  %35 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %3, align 8
  ret %struct.rpc_cluster_bucket* %35
}

declare dso_local i32 @vkprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @RPC_FUN_START(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
