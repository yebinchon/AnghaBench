; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-client.c_tcp_rpcc_process_nonce_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-client.c_tcp_rpcc_process_nonce_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rpc_nonce_packet = type { i32, i32, i32, i64 }
%struct.connection = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.raw_message = type { i32 }
%struct.tcp_rpc_data = type { i32, i64, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 (%struct.connection*, i32, i32)* }

@tcp_rpcc_process_nonce_packet.P = internal global %struct.tcp_rpc_nonce_packet zeroinitializer, align 8
@RPC_NONCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"Processing nonce packet, crypto schema: %d, key select: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Processed nonce packet, crypto flags = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, %struct.raw_message*)* @tcp_rpcc_process_nonce_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_rpcc_process_nonce_packet(%struct.connection* %0, %struct.raw_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.raw_message*, align 8
  %6 = alloca %struct.tcp_rpc_data*, align 8
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store %struct.raw_message* %1, %struct.raw_message** %5, align 8
  %8 = load %struct.connection*, %struct.connection** %4, align 8
  %9 = call %struct.tcp_rpc_data* @TCP_RPC_DATA(%struct.connection* %8)
  store %struct.tcp_rpc_data* %9, %struct.tcp_rpc_data** %6, align 8
  %10 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %11 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, -2
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %16 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RPC_NONCE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %2
  store i32 -2, i32* %3, align 4
  br label %117

21:                                               ; preds = %14
  %22 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %23 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 24
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 -3, i32* %3, align 4
  br label %117

28:                                               ; preds = %21
  %29 = load %struct.raw_message*, %struct.raw_message** %5, align 8
  %30 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %31 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @rwm_fetch_data(%struct.raw_message* %29, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_process_nonce_packet.P, i32 %32)
  %34 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %35 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_process_nonce_packet.P, i32 0, i32 0), align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_process_nonce_packet.P, i32 0, i32 1), align 4
  %42 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_process_nonce_packet.P, i32 0, i32 0), align 8
  switch i32 %43, label %111 [
    i32 128, label %44
    i32 129, label %74
  ]

44:                                               ; preds = %28
  %45 = load i32, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_process_nonce_packet.P, i32 0, i32 1), align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 -3, i32* %3, align 4
  br label %117

48:                                               ; preds = %44
  %49 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %50 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %48
  %55 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %56 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 2
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load %struct.connection*, %struct.connection** %4, align 8
  %62 = getelementptr inbounds %struct.connection, %struct.connection* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  br label %69

69:                                               ; preds = %60, %54
  %70 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %71 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %70, i32 0, i32 3
  store i32 1, i32* %71, align 4
  br label %73

72:                                               ; preds = %48
  store i32 -5, i32* %3, align 4
  br label %117

73:                                               ; preds = %69
  br label %112

74:                                               ; preds = %28
  %75 = load i32, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_process_nonce_packet.P, i32 0, i32 1), align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_process_nonce_packet.P, i32 0, i32 1), align 4
  %79 = call i32 (...) @get_crypto_key_id()
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %74
  store i32 -3, i32* %3, align 4
  br label %117

82:                                               ; preds = %77
  %83 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %84 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 2
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  store i32 -5, i32* %3, align 4
  br label %117

89:                                               ; preds = %82
  %90 = load i64, i64* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_process_nonce_packet.P, i32 0, i32 3), align 8
  %91 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %92 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %90, %93
  %95 = call i32 @abs(i64 %94)
  %96 = icmp sgt i32 %95, 30
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store i32 -6, i32* %3, align 4
  br label %117

98:                                               ; preds = %89
  %99 = load %struct.connection*, %struct.connection** %4, align 8
  %100 = call %struct.TYPE_4__* @TCP_RPCC_FUNC(%struct.connection* %99)
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32 (%struct.connection*, i32, i32)*, i32 (%struct.connection*, i32, i32)** %101, align 8
  %103 = load %struct.connection*, %struct.connection** %4, align 8
  %104 = load i32, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_process_nonce_packet.P, i32 0, i32 2), align 8
  %105 = load i32, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_process_nonce_packet.P, i32 0, i32 1), align 4
  %106 = call i32 %102(%struct.connection* %103, i32 %104, i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  store i32 -6, i32* %3, align 4
  br label %117

110:                                              ; preds = %98
  br label %112

111:                                              ; preds = %28
  store i32 -4, i32* %3, align 4
  br label %117

112:                                              ; preds = %110, %73
  %113 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %114 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %112, %111, %109, %97, %88, %81, %72, %47, %27, %20
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.tcp_rpc_data* @TCP_RPC_DATA(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rwm_fetch_data(%struct.raw_message*, %struct.tcp_rpc_nonce_packet*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @get_crypto_key_id(...) #1

declare dso_local i32 @abs(i64) #1

declare dso_local %struct.TYPE_4__* @TCP_RPCC_FUNC(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
