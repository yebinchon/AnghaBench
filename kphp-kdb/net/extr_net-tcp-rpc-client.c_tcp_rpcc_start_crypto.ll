; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-client.c_tcp_rpcc_start_crypto.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-client.c_tcp_rpcc_start_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.tcp_rpc_data = type { i32, i32 }
%struct.aes_key_data = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"rpcc_start_crypto: key_select = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_rpcc_start_crypto(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcp_rpc_data*, align 8
  %9 = alloca %struct.aes_key_data, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.connection*, %struct.connection** %5, align 8
  %11 = call %struct.tcp_rpc_data* @TCP_RPC_DATA(%struct.connection* %10)
  store %struct.tcp_rpc_data* %11, %struct.tcp_rpc_data** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.connection*, %struct.connection** %5, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %80

19:                                               ; preds = %3
  %20 = load %struct.connection*, %struct.connection** %5, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = load %struct.connection*, %struct.connection** %5, align 8
  %27 = getelementptr inbounds %struct.connection, %struct.connection* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %8, align 8
  %33 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %25, %19
  store i32 -1, i32* %4, align 4
  br label %80

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (...) @get_crypto_key_id()
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %37
  store i32 -1, i32* %4, align 4
  br label %80

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %8, align 8
  %48 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tcp_rpc_data*, %struct.tcp_rpc_data** %8, align 8
  %51 = getelementptr inbounds %struct.tcp_rpc_data, %struct.tcp_rpc_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.connection*, %struct.connection** %5, align 8
  %54 = getelementptr inbounds %struct.connection, %struct.connection* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.connection*, %struct.connection** %5, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.connection*, %struct.connection** %5, align 8
  %60 = getelementptr inbounds %struct.connection, %struct.connection* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.connection*, %struct.connection** %5, align 8
  %63 = getelementptr inbounds %struct.connection, %struct.connection* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.connection*, %struct.connection** %5, align 8
  %66 = getelementptr inbounds %struct.connection, %struct.connection* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.connection*, %struct.connection** %5, align 8
  %69 = getelementptr inbounds %struct.connection, %struct.connection* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @aes_create_keys(%struct.aes_key_data* %9, i32 1, i8* %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67, i32 %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %80

74:                                               ; preds = %45
  %75 = load %struct.connection*, %struct.connection** %5, align 8
  %76 = call i64 @aes_crypto_init(%struct.connection* %75, %struct.aes_key_data* %9, i32 4)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 -1, i32* %4, align 4
  br label %80

79:                                               ; preds = %74
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %78, %73, %44, %36, %18
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.tcp_rpc_data* @TCP_RPC_DATA(%struct.connection*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @get_crypto_key_id(...) #1

declare dso_local i64 @aes_create_keys(%struct.aes_key_data*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @aes_crypto_init(%struct.connection*, %struct.aes_key_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
