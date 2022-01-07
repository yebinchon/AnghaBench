; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_tftp_send_message.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_tftp_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_message = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i64*, i32 }
%struct.TYPE_4__ = type { i32 }

@working_mode = common dso_local global i32 0, align 4
@tftp_rrq = common dso_local global i64 0, align 8
@CLIENT = common dso_local global i32 0, align 4
@port = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.udp_message* (%struct.TYPE_5__*, i32)* @tftp_send_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.udp_message* @tftp_send_message(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udp_message*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.udp_message* @tftp_udp_message_create(i32 %6)
  store %struct.udp_message* %7, %struct.udp_message** %5, align 8
  %8 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %9 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @memcpy(i32 %10, i32 %13, i32 16)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* @working_mode, align 4
  %19 = sub nsw i32 1, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %17, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %24 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %26 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %2
  %30 = call i64 (...) @tftp_get_response_packet_type()
  %31 = load i64, i64* @tftp_rrq, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @working_mode, align 4
  %35 = load i32, i32* @CLIENT, align 4
  %36 = icmp eq i32 %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ false, %29 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i64, i64* @port, align 8
  %42 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %43 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %37, %2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %50 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %54 = call i32 @udp_queue_message(i32* %52, %struct.udp_message* %53)
  %55 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  ret %struct.udp_message* %55
}

declare dso_local %struct.udp_message* @tftp_udp_message_create(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tftp_get_response_packet_type(...) #1

declare dso_local i32 @udp_queue_message(i32*, %struct.udp_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
