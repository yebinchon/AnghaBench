; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-server.c_tcp_rpcs_process_nonce_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-server.c_tcp_rpcs_process_nonce_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rpc_nonce_packet = type { i32, i64, i32 }
%struct.connection = type { i32 }
%struct.raw_message = type { i32 }
%struct.tcp_rpc_data = type { i32, i64, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.connection*, %struct.tcp_rpc_nonce_packet*)* }

@tcp_rpcs_process_nonce_packet.P = internal global %struct.tcp_rpc_nonce_packet zeroinitializer, align 8
@RPC_NONCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, %struct.raw_message*)* @tcp_rpcs_process_nonce_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_rpcs_process_nonce_packet(%struct.connection* %0, %struct.raw_message* %1) #0 {
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
  br label %127

21:                                               ; preds = %14
  %22 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %23 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 24
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 -3, i32* %3, align 4
  br label %127

28:                                               ; preds = %21
  %29 = load %struct.raw_message*, %struct.raw_message** %5, align 8
  %30 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %31 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @rwm_fetch_data(%struct.raw_message* %29, %struct.tcp_rpc_nonce_packet* @tcp_rpcs_process_nonce_packet.P, i32 %32)
  %34 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %35 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcs_process_nonce_packet.P, i32 0, i32 0), align 8
  switch i32 %40, label %106 [
    i32 128, label %41
    i32 129, label %56
  ]

41:                                               ; preds = %28
  %42 = load i32, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcs_process_nonce_packet.P, i32 0, i32 2), align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 -3, i32* %3, align 4
  br label %127

45:                                               ; preds = %41
  %46 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %47 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %53 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %52, i32 0, i32 3
  store i32 1, i32* %53, align 4
  br label %55

54:                                               ; preds = %45
  store i32 -5, i32* %3, align 4
  br label %127

55:                                               ; preds = %51
  br label %116

56:                                               ; preds = %28
  %57 = load i32, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcs_process_nonce_packet.P, i32 0, i32 2), align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcs_process_nonce_packet.P, i32 0, i32 2), align 8
  %61 = call i32 (...) @get_crypto_key_id()
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59, %56
  %64 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %65 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %71 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %70, i32 0, i32 3
  store i32 1, i32* %71, align 4
  br label %116

72:                                               ; preds = %63
  store i32 -3, i32* %3, align 4
  br label %127

73:                                               ; preds = %59
  %74 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %75 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 2
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %73
  %80 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %81 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %87 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %86, i32 0, i32 3
  store i32 1, i32* %87, align 4
  br label %116

88:                                               ; preds = %79
  store i32 -5, i32* %3, align 4
  br label %127

89:                                               ; preds = %73
  %90 = call i64 @time(i32 0)
  %91 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %92 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %91, i32 0, i32 4
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcs_process_nonce_packet.P, i32 0, i32 1), align 8
  %94 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %95 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %93, %96
  %98 = call i32 @abs(i64 %97)
  %99 = icmp sgt i32 %98, 30
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  store i32 -6, i32* %3, align 4
  br label %127

101:                                              ; preds = %89
  %102 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %103 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, -2
  store i32 %105, i32* %103, align 4
  br label %116

106:                                              ; preds = %28
  %107 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %108 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %6, align 8
  %114 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %113, i32 0, i32 3
  store i32 1, i32* %114, align 4
  br label %116

115:                                              ; preds = %106
  store i32 -4, i32* %3, align 4
  br label %127

116:                                              ; preds = %112, %101, %85, %69, %55
  %117 = load %struct.connection*, %struct.connection** %4, align 8
  %118 = call %struct.TYPE_2__* @TCP_RPCS_FUNC(%struct.connection* %117)
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32 (%struct.connection*, %struct.tcp_rpc_nonce_packet*)*, i32 (%struct.connection*, %struct.tcp_rpc_nonce_packet*)** %119, align 8
  %121 = load %struct.connection*, %struct.connection** %4, align 8
  %122 = call i32 %120(%struct.connection* %121, %struct.tcp_rpc_nonce_packet* @tcp_rpcs_process_nonce_packet.P)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  store i32 -6, i32* %3, align 4
  br label %127

126:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %125, %115, %100, %88, %72, %54, %44, %27, %20
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.tcp_rpc_data* @TCP_RPC_DATA(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rwm_fetch_data(%struct.raw_message*, %struct.tcp_rpc_nonce_packet*, i32) #1

declare dso_local i32 @get_crypto_key_id(...) #1

declare dso_local i64 @time(i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local %struct.TYPE_2__* @TCP_RPCS_FUNC(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
