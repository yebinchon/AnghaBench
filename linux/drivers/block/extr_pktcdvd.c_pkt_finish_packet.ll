; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_finish_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_finish_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_data = type { i32, i64 }
%struct.bio = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_data*, i64)* @pkt_finish_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_finish_packet(%struct.packet_data* %0, i64 %1) #0 {
  %3 = alloca %struct.packet_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.packet_data* %0, %struct.packet_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.packet_data*, %struct.packet_data** %3, align 8
  %10 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %8, %2
  br label %12

12:                                               ; preds = %17, %11
  %13 = load %struct.packet_data*, %struct.packet_data** %3, align 8
  %14 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %13, i32 0, i32 0
  %15 = call %struct.bio* @bio_list_pop(i32* %14)
  store %struct.bio* %15, %struct.bio** %5, align 8
  %16 = icmp ne %struct.bio* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.bio*, %struct.bio** %5, align 8
  %22 = call i32 @bio_endio(%struct.bio* %21)
  br label %12

23:                                               ; preds = %12
  ret void
}

declare dso_local %struct.bio* @bio_list_pop(i32*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
