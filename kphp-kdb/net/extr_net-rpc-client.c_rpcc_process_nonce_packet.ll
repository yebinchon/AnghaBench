; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-client.c_rpcc_process_nonce_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-client.c_rpcc_process_nonce_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_nonce_packet = type { i32, i32, i32, i64 }
%struct.connection = type { i32, i32 }
%struct.rpcc_data = type { i32, i64, i32, i32, i64 }

@rpcc_process_nonce_packet.P = internal global %struct.rpc_nonce_packet zeroinitializer, align 8
@RPC_NONCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"Processing nonce packet, crypto schema: %d, key select: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Processed nonce packet, crypto flags = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*)* @rpcc_process_nonce_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcc_process_nonce_packet(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.rpcc_data*, align 8
  %5 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %6 = load %struct.connection*, %struct.connection** %3, align 8
  %7 = call %struct.rpcc_data* @RPCC_DATA(%struct.connection* %6)
  store %struct.rpcc_data* %7, %struct.rpcc_data** %4, align 8
  %8 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %9 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, -2
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %14 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RPC_NONCE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  store i32 -2, i32* %2, align 4
  br label %64

19:                                               ; preds = %12
  %20 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %21 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 24
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -3, i32* %2, align 4
  br label %64

26:                                               ; preds = %19
  %27 = load %struct.connection*, %struct.connection** %3, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 1
  %29 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %30 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @read_in(i32* %28, %struct.rpc_nonce_packet* @rpcc_process_nonce_packet.P, i32 %31)
  %33 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %34 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* getelementptr inbounds (%struct.rpc_nonce_packet, %struct.rpc_nonce_packet* @rpcc_process_nonce_packet.P, i32 0, i32 0), align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.rpc_nonce_packet, %struct.rpc_nonce_packet* @rpcc_process_nonce_packet.P, i32 0, i32 1), align 4
  %41 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* getelementptr inbounds (%struct.rpc_nonce_packet, %struct.rpc_nonce_packet* @rpcc_process_nonce_packet.P, i32 0, i32 0), align 8
  switch i32 %42, label %58 [
    i32 128, label %43
  ]

43:                                               ; preds = %26
  %44 = load i32, i32* getelementptr inbounds (%struct.rpc_nonce_packet, %struct.rpc_nonce_packet* @rpcc_process_nonce_packet.P, i32 0, i32 1), align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 -3, i32* %2, align 4
  br label %64

47:                                               ; preds = %43
  %48 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %49 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %55 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %54, i32 0, i32 3
  store i32 1, i32* %55, align 4
  br label %57

56:                                               ; preds = %47
  store i32 -5, i32* %2, align 4
  br label %64

57:                                               ; preds = %53
  br label %59

58:                                               ; preds = %26
  store i32 -4, i32* %2, align 4
  br label %64

59:                                               ; preds = %57
  %60 = load %struct.rpcc_data*, %struct.rpcc_data** %4, align 8
  %61 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %58, %56, %46, %25, %18
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.rpcc_data* @RPCC_DATA(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, %struct.rpc_nonce_packet*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
