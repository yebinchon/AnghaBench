; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_push_data_ack_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_push_data_ack_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.repl_data_ack = type { i32, i32, i64, i64, i32 }

@P_REPL_DATA_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection*, i32, i32, i64)* @push_data_ack_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_data_ack_packet(%struct.connection* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.repl_data_ack*, align 8
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = call %struct.repl_data_ack* @alloc_packet(i32 32)
  store %struct.repl_data_ack* %10, %struct.repl_data_ack** %9, align 8
  %11 = load i32, i32* @P_REPL_DATA_ACK, align 4
  %12 = load %struct.repl_data_ack*, %struct.repl_data_ack** %9, align 8
  %13 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.repl_data_ack*, %struct.repl_data_ack** %9, align 8
  %16 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.repl_data_ack*, %struct.repl_data_ack** %9, align 8
  %19 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.repl_data_ack*, %struct.repl_data_ack** %9, align 8
  %22 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %21, i32 0, i32 3
  store i64 %20, i64* %22, align 8
  %23 = load %struct.repl_data_ack*, %struct.repl_data_ack** %9, align 8
  %24 = getelementptr inbounds %struct.repl_data_ack, %struct.repl_data_ack* %23, i32 0, i32 2
  store i64 %20, i64* %24, align 8
  %25 = load %struct.connection*, %struct.connection** %5, align 8
  %26 = call i32 @push_packet(%struct.connection* %25, i32 32)
  ret void
}

declare dso_local %struct.repl_data_ack* @alloc_packet(i32) #1

declare dso_local i32 @push_packet(%struct.connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
