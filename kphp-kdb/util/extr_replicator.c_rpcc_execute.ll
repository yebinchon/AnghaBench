; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_rpcc_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_rpcc_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32 }
%struct.repl_data = type { i32 }
%struct.repl_handshake_ok = type { i32 }
%struct.repl_error = type { i32 }
%struct.repl_rotate = type { i32 }
%struct.repl_pos_info = type { i32 }

@precise_now = common dso_local global i32 0, align 4
@RPC_PONG = common dso_local global i32 0, align 4
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rpcc_execute: fd=%d, op=%d, len=%d\0A\00", align 1
@P_REPL_DATA = common dso_local global i32 0, align 4
@recv_packet = common dso_local global i64 0, align 8
@MAX_PACKET_INTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"rpcc_execute: received too long packet from connection %d : type=%08x len=%d\0A\00", align 1
@unknown_packets_received = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcc_execute(%struct.connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @precise_now, align 4
  %10 = load %struct.connection*, %struct.connection** %5, align 8
  %11 = getelementptr inbounds %struct.connection, %struct.connection* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @RPC_PONG, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %16, i32* %4, align 4
  br label %157

17:                                               ; preds = %3
  %18 = load i32, i32* @verbosity, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* @stderr, align 4
  %22 = load %struct.connection*, %struct.connection** %5, align 8
  %23 = getelementptr inbounds %struct.connection, %struct.connection* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %20, %17
  %29 = load i32, i32* @verbosity, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.connection*, %struct.connection** %5, align 8
  %33 = call i32 @dump_next_rpc_packet_limit(%struct.connection* %32, i32 64)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @P_REPL_DATA, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %80

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp uge i64 %40, 16
  br i1 %41, label %42, label %80

42:                                               ; preds = %38
  %43 = load %struct.connection*, %struct.connection** %5, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 1
  %45 = call i32 @read_in(i32* %44, i64* @recv_packet, i32 12)
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %46, 12
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.connection*, %struct.connection** %5, align 8
  %51 = load i64, i64* @recv_packet, align 8
  %52 = add nsw i64 %51, 2
  %53 = inttoptr i64 %52 to %struct.repl_data*
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 8
  %56 = sext i32 %55 to i64
  %57 = sub i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i32 @process_data_packet(%struct.connection* %50, %struct.repl_data* %53, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %42
  %63 = load %struct.connection*, %struct.connection** %5, align 8
  %64 = getelementptr inbounds %struct.connection, %struct.connection* %63, i32 0, i32 1
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %65, 8
  %67 = sext i32 %66 to i64
  %68 = sub i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32 @advance_skip_read_ptr(i32* %64, i32 %69)
  %71 = sext i32 %70 to i64
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %72, 8
  %74 = sext i32 %73 to i64
  %75 = sub i64 %74, 4
  %76 = icmp eq i64 %71, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  br label %79

79:                                               ; preds = %62, %42
  store i32 0, i32* %4, align 4
  br label %157

80:                                               ; preds = %38, %34
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @MAX_PACKET_INTS, align 4
  %83 = mul nsw i32 %82, 4
  %84 = icmp sgt i32 %81, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load i32, i32* @stderr, align 4
  %87 = load %struct.connection*, %struct.connection** %5, align 8
  %88 = getelementptr inbounds %struct.connection, %struct.connection* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @fprintf(i32 %86, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* @unknown_packets_received, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* @unknown_packets_received, align 4
  %95 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %95, i32* %4, align 4
  br label %157

96:                                               ; preds = %80
  %97 = load %struct.connection*, %struct.connection** %5, align 8
  %98 = getelementptr inbounds %struct.connection, %struct.connection* %97, i32 0, i32 1
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @read_in(i32* %98, i64* @recv_packet, i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load i32, i32* %6, align 4
  switch i32 %105, label %154 [
    i32 130, label %106
    i32 131, label %117
    i32 128, label %130
    i32 129, label %143
  ]

106:                                              ; preds = %96
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp eq i64 %108, 16
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load %struct.connection*, %struct.connection** %5, align 8
  %112 = load i64, i64* @recv_packet, align 8
  %113 = add nsw i64 %112, 2
  %114 = inttoptr i64 %113 to %struct.repl_handshake_ok*
  %115 = call i32 @process_handshake_ok_packet(%struct.connection* %111, %struct.repl_handshake_ok* %114)
  store i32 0, i32* %4, align 4
  br label %157

116:                                              ; preds = %106
  br label %154

117:                                              ; preds = %96
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp uge i64 %119, 20
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load %struct.connection*, %struct.connection** %5, align 8
  %123 = load i64, i64* @recv_packet, align 8
  %124 = add nsw i64 %123, 2
  %125 = inttoptr i64 %124 to %struct.repl_error*
  %126 = load i32, i32* %7, align 4
  %127 = sub nsw i32 %126, 12
  %128 = call i32 @process_client_error_packet(%struct.connection* %122, %struct.repl_error* %125, i32 %127)
  store i32 0, i32* %4, align 4
  br label %157

129:                                              ; preds = %117
  br label %154

130:                                              ; preds = %96
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = icmp uge i64 %132, 16
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = load %struct.connection*, %struct.connection** %5, align 8
  %136 = load i64, i64* @recv_packet, align 8
  %137 = add nsw i64 %136, 2
  %138 = inttoptr i64 %137 to %struct.repl_rotate*
  %139 = load i32, i32* %7, align 4
  %140 = sub nsw i32 %139, 12
  %141 = call i32 @process_rotate_packet(%struct.connection* %135, %struct.repl_rotate* %138, i32 %140)
  store i32 0, i32* %4, align 4
  br label %157

142:                                              ; preds = %130
  br label %154

143:                                              ; preds = %96
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp eq i64 %145, 16
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = load %struct.connection*, %struct.connection** %5, align 8
  %149 = load i64, i64* @recv_packet, align 8
  %150 = add nsw i64 %149, 2
  %151 = inttoptr i64 %150 to %struct.repl_pos_info*
  %152 = call i32 @process_pos_info_packet(%struct.connection* %148, %struct.repl_pos_info* %151)
  store i32 0, i32* %4, align 4
  br label %157

153:                                              ; preds = %143
  br label %154

154:                                              ; preds = %96, %153, %142, %129, %116
  %155 = load i32, i32* @unknown_packets_received, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* @unknown_packets_received, align 4
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %154, %147, %134, %121, %110, %85, %79, %15
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dump_next_rpc_packet_limit(%struct.connection*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i64*, i32) #1

declare dso_local i32 @process_data_packet(%struct.connection*, %struct.repl_data*, i32) #1

declare dso_local i32 @advance_skip_read_ptr(i32*, i32) #1

declare dso_local i32 @process_handshake_ok_packet(%struct.connection*, %struct.repl_handshake_ok*) #1

declare dso_local i32 @process_client_error_packet(%struct.connection*, %struct.repl_error*, i32) #1

declare dso_local i32 @process_rotate_packet(%struct.connection*, %struct.repl_rotate*, i32) #1

declare dso_local i32 @process_pos_info_packet(%struct.connection*, %struct.repl_pos_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
