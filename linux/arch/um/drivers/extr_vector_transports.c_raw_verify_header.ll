; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_raw_verify_header.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_raw_verify_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.vector_private = type { i32, i32 }
%struct.virtio_net_hdr = type { i64, i32 }

@VIRTIO_NET_HDR_GSO_NONE = common dso_local global i64 0, align 8
@GSO_ERROR = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_F_DATA_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sk_buff*, %struct.vector_private*)* @raw_verify_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_verify_header(i32* %0, %struct.sk_buff* %1, %struct.vector_private* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.vector_private*, align 8
  %8 = alloca %struct.virtio_net_hdr*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.vector_private* %2, %struct.vector_private** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to %struct.virtio_net_hdr*
  store %struct.virtio_net_hdr* %10, %struct.virtio_net_hdr** %8, align 8
  %11 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %8, align 8
  %12 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VIRTIO_NET_HDR_GSO_NONE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load %struct.vector_private*, %struct.vector_private** %7, align 8
  %18 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 65536
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = call i64 (...) @net_ratelimit()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.vector_private*, %struct.vector_private** %7, align 8
  %26 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GSO_ERROR, align 4
  %29 = call i32 @netdev_err(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %21
  br label %31

31:                                               ; preds = %30, %16, %3
  %32 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %8, align 8
  %33 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VIRTIO_NET_HDR_F_DATA_VALID, align 4
  %36 = and i32 %34, %35
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %44

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %8, align 8
  %42 = call i32 (...) @virtio_legacy_is_little_endian()
  %43 = call i32 @virtio_net_hdr_to_skb(%struct.sk_buff* %40, %struct.virtio_net_hdr* %41, i32 %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %38
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(i32, i32) #1

declare dso_local i32 @virtio_net_hdr_to_skb(%struct.sk_buff*, %struct.virtio_net_hdr*, i32) #1

declare dso_local i32 @virtio_legacy_is_little_endian(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
