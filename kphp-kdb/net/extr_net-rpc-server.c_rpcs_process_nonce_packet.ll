; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-server.c_rpcs_process_nonce_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-server.c_rpcs_process_nonce_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_nonce_packet = type { i32, i64, i32 }
%struct.connection = type { i32 }
%struct.rpcs_data = type { i32, i64, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.connection*, %struct.rpc_nonce_packet*)* }

@rpcs_process_nonce_packet.P = internal global %struct.rpc_nonce_packet zeroinitializer, align 8
@RPC_NONCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*)* @rpcs_process_nonce_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcs_process_nonce_packet(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.rpcs_data*, align 8
  %5 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %6 = load %struct.connection*, %struct.connection** %3, align 8
  %7 = call %struct.rpcs_data* @RPCS_DATA(%struct.connection* %6)
  store %struct.rpcs_data* %7, %struct.rpcs_data** %4, align 8
  %8 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %9 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, -2
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %14 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RPC_NONCE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  store i32 -2, i32* %2, align 4
  br label %76

19:                                               ; preds = %12
  %20 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %21 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 24
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -3, i32* %2, align 4
  br label %76

26:                                               ; preds = %19
  %27 = load %struct.connection*, %struct.connection** %3, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 0
  %29 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %30 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @read_in(i32* %28, %struct.rpc_nonce_packet* @rpcs_process_nonce_packet.P, i32 %31)
  %33 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %34 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* getelementptr inbounds (%struct.rpc_nonce_packet, %struct.rpc_nonce_packet* @rpcs_process_nonce_packet.P, i32 0, i32 0), align 8
  switch i32 %39, label %55 [
    i32 128, label %40
  ]

40:                                               ; preds = %26
  %41 = load i32, i32* getelementptr inbounds (%struct.rpc_nonce_packet, %struct.rpc_nonce_packet* @rpcs_process_nonce_packet.P, i32 0, i32 2), align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 -3, i32* %2, align 4
  br label %76

44:                                               ; preds = %40
  %45 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %46 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %52 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %51, i32 0, i32 3
  store i32 1, i32* %52, align 4
  br label %54

53:                                               ; preds = %44
  store i32 -5, i32* %2, align 4
  br label %76

54:                                               ; preds = %50
  br label %65

55:                                               ; preds = %26
  %56 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %57 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.rpcs_data*, %struct.rpcs_data** %4, align 8
  %63 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %62, i32 0, i32 3
  store i32 1, i32* %63, align 4
  br label %65

64:                                               ; preds = %55
  store i32 -4, i32* %2, align 4
  br label %76

65:                                               ; preds = %61, %54
  %66 = load %struct.connection*, %struct.connection** %3, align 8
  %67 = call %struct.TYPE_2__* @RPCS_FUNC(%struct.connection* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32 (%struct.connection*, %struct.rpc_nonce_packet*)*, i32 (%struct.connection*, %struct.rpc_nonce_packet*)** %68, align 8
  %70 = load %struct.connection*, %struct.connection** %3, align 8
  %71 = call i32 %69(%struct.connection* %70, %struct.rpc_nonce_packet* @rpcs_process_nonce_packet.P)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  store i32 -6, i32* %2, align 4
  br label %76

75:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %74, %64, %53, %43, %25, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.rpcs_data* @RPCS_DATA(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, %struct.rpc_nonce_packet*, i32) #1

declare dso_local %struct.TYPE_2__* @RPCS_FUNC(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
