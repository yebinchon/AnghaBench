; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_rpcs_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_rpcs_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }
%struct.repl_handshake = type { i32 }
%struct.repl_error = type { i32 }
%struct.repl_data_ack = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rpcs_execute: fd=%d, op=%d, len=%d\0A\00", align 1
@MAX_PACKET_INTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"rpcs_execute: received too long packet from connection %d : type=%08x len=%d\0A\00", align 1
@unknown_packets_received = common dso_local global i32 0, align 4
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@recv_packet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcs_execute(%struct.connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @verbosity, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load i32, i32* @stderr, align 4
  %12 = load %struct.connection*, %struct.connection** %5, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %10, %3
  %19 = load i32, i32* @verbosity, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.connection*, %struct.connection** %5, align 8
  %23 = call i32 @dump_next_rpc_packet_limit(%struct.connection* %22, i32 64)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MAX_PACKET_INTS, align 4
  %27 = mul nsw i32 %26, 4
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i32, i32* @stderr, align 4
  %31 = load %struct.connection*, %struct.connection** %5, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @unknown_packets_received, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @unknown_packets_received, align 4
  %39 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %39, i32* %4, align 4
  br label %93

40:                                               ; preds = %24
  %41 = load %struct.connection*, %struct.connection** %5, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 1
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @read_in(i32* %42, i32* @recv_packet, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %6, align 4
  switch i32 %49, label %90 [
    i32 128, label %50
    i32 129, label %64
    i32 130, label %78
  ]

50:                                               ; preds = %40
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp uge i64 %52, 16
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.connection*, %struct.connection** %5, align 8
  %56 = load i32, i32* @recv_packet, align 4
  %57 = add nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to %struct.repl_handshake*
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %60, 12
  %62 = call i32 @process_handshake_packet(%struct.connection* %55, %struct.repl_handshake* %59, i32 %61)
  store i32 0, i32* %4, align 4
  br label %93

63:                                               ; preds = %50
  br label %90

64:                                               ; preds = %40
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp uge i64 %66, 20
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load %struct.connection*, %struct.connection** %5, align 8
  %70 = load i32, i32* @recv_packet, align 4
  %71 = add nsw i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to %struct.repl_error*
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %74, 12
  %76 = call i32 @process_server_error_packet(%struct.connection* %69, %struct.repl_error* %73, i32 %75)
  store i32 0, i32* %4, align 4
  br label %93

77:                                               ; preds = %64
  br label %90

78:                                               ; preds = %40
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp eq i64 %80, 16
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load %struct.connection*, %struct.connection** %5, align 8
  %84 = load i32, i32* @recv_packet, align 4
  %85 = add nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to %struct.repl_data_ack*
  %88 = call i32 @process_data_ack_packet(%struct.connection* %83, %struct.repl_data_ack* %87)
  store i32 0, i32* %4, align 4
  br label %93

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %40, %89, %77, %63
  %91 = load i32, i32* @unknown_packets_received, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @unknown_packets_received, align 4
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %82, %68, %54, %29
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dump_next_rpc_packet_limit(%struct.connection*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i32*, i32) #1

declare dso_local i32 @process_handshake_packet(%struct.connection*, %struct.repl_handshake*, i32) #1

declare dso_local i32 @process_server_error_packet(%struct.connection*, %struct.repl_error*, i32) #1

declare dso_local i32 @process_data_ack_packet(%struct.connection*, %struct.repl_data_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
