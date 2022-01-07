; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_tftp_udp_message_create.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_tftp_udp_message_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_message = type { i64, i32 }

@sent_rrq_packets = common dso_local global i32 0, align 4
@sent_ack_packets = common dso_local global i32 0, align 4
@sent_data_packets = common dso_local global i32 0, align 4
@sent_oack_packets = common dso_local global i32 0, align 4
@sent_error_packets = common dso_local global i32 0, align 4
@tftp_udp_sent_packets = common dso_local global i32 0, align 4
@tftp_udp_sent_bytes = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@msg_out = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.udp_message* (i32)* @tftp_udp_message_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.udp_message* @tftp_udp_message_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.udp_message*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @tftp_get_response_packet_type()
  switch i32 %4, label %20 [
    i32 128, label %5
    i32 132, label %8
    i32 131, label %11
    i32 129, label %14
    i32 130, label %17
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @sent_rrq_packets, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @sent_rrq_packets, align 4
  br label %20

8:                                                ; preds = %1
  %9 = load i32, i32* @sent_ack_packets, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @sent_ack_packets, align 4
  br label %20

11:                                               ; preds = %1
  %12 = load i32, i32* @sent_data_packets, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @sent_data_packets, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @sent_oack_packets, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @sent_oack_packets, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @sent_error_packets, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @sent_error_packets, align 4
  br label %20

20:                                               ; preds = %1, %17, %14, %11, %8, %5
  %21 = load i32, i32* @tftp_udp_sent_packets, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @tftp_udp_sent_packets, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @tftp_udp_sent_bytes, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* @tftp_udp_sent_bytes, align 4
  %26 = load i32, i32* @verbosity, align 4
  %27 = icmp sge i32 %26, 3
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load i64, i64* @msg_out, align 8
  %30 = load i64, i64* @msg_out, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 @hexdump(i64 %29, i64 %33)
  br label %35

35:                                               ; preds = %28, %20
  %36 = call %struct.udp_message* @malloc(i32 16)
  store %struct.udp_message* %36, %struct.udp_message** %3, align 8
  %37 = load %struct.udp_message*, %struct.udp_message** %3, align 8
  %38 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %37, i32 0, i32 1
  %39 = load i64, i64* @msg_out, align 8
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @rwm_create(i32* %38, i64 %39, i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.udp_message*, %struct.udp_message** %3, align 8
  %47 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.udp_message*, %struct.udp_message** %3, align 8
  ret %struct.udp_message* %48
}

declare dso_local i32 @tftp_get_response_packet_type(...) #1

declare dso_local i32 @hexdump(i64, i64) #1

declare dso_local %struct.udp_message* @malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rwm_create(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
