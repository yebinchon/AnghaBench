; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_execute_handshake.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_rpc_execute_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.connection = type { i32, i32 }
%struct.rpc_handshake = type { i32, i32, i32 }
%struct.node = type { i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"rpc_execute_handshake: remote_id = %lld, len = %d\0A\00", align 1
@precise_now = common dso_local global i32 0, align 4
@STATS = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_execute_handshake(%struct.connection* %0, %struct.rpc_handshake* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.rpc_handshake*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.node, align 4
  %9 = alloca { i64, i32 }, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store %struct.rpc_handshake* %1, %struct.rpc_handshake** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.rpc_handshake*, %struct.rpc_handshake** %6, align 8
  %11 = getelementptr inbounds %struct.rpc_handshake, %struct.rpc_handshake* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 12
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

19:                                               ; preds = %3
  %20 = load %struct.connection*, %struct.connection** %5, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load %struct.rpc_handshake*, %struct.rpc_handshake** %6, align 8
  %25 = getelementptr inbounds %struct.rpc_handshake, %struct.rpc_handshake* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.rpc_handshake*, %struct.rpc_handshake** %6, align 8
  %29 = getelementptr inbounds %struct.rpc_handshake, %struct.rpc_handshake* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.connection*, %struct.connection** %5, align 8
  %33 = bitcast { i64, i32 }* %9 to i8*
  %34 = bitcast %struct.node* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 12, i1 false)
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %36 = load i64, i64* %35, align 4
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @add_parent(i64 %36, i32 %38, %struct.connection* %32)
  %40 = load %struct.rpc_handshake*, %struct.rpc_handshake** %6, align 8
  %41 = getelementptr inbounds %struct.rpc_handshake, %struct.rpc_handshake* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rpc_handshake*, %struct.rpc_handshake** %6, align 8
  %44 = getelementptr inbounds %struct.rpc_handshake, %struct.rpc_handshake* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @update_relatives_binlog_position(i32 %42, i32 %45)
  %47 = icmp sge i32 %46, 1
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* @precise_now, align 4
  %51 = load %struct.connection*, %struct.connection** %5, align 8
  %52 = getelementptr inbounds %struct.connection, %struct.connection* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.connection*, %struct.connection** %5, align 8
  %59 = load %struct.rpc_handshake*, %struct.rpc_handshake** %6, align 8
  %60 = getelementptr inbounds %struct.rpc_handshake, %struct.rpc_handshake* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @rpc_send_handshake_accept(%struct.connection* %58, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %19, %18
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @add_parent(i64, i32, %struct.connection*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @update_relatives_binlog_position(i32, i32) #1

declare dso_local i32 @rpc_send_handshake_accept(%struct.connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
