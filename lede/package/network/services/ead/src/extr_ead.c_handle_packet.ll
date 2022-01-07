; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_handle_packet.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_handle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_pkthdr = type { i32 }
%struct.ead_packet = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ETHERTYPE_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\FF\FF\FF\FF\FF\FF\00", align 1
@UIP_PROTO_UDP = common dso_local global i64 0, align 8
@EAD_PORT = common dso_local global i32 0, align 4
@EAD_MAGIC = common dso_local global i32 0, align 4
@nid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.pcap_pkthdr*, i32*)* @handle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_packet(i32* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pcap_pkthdr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ead_packet*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = bitcast i32* %8 to %struct.ead_packet*
  store %struct.ead_packet* %9, %struct.ead_packet** %7, align 8
  %10 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %11 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 40
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %92

16:                                               ; preds = %3
  %17 = load %struct.ead_packet*, %struct.ead_packet** %7, align 8
  %18 = getelementptr inbounds %struct.ead_packet, %struct.ead_packet* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ETHERTYPE_IP, align 4
  %22 = call i32 @htons(i32 %21)
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %92

25:                                               ; preds = %16
  %26 = load %struct.ead_packet*, %struct.ead_packet** %7, align 8
  %27 = getelementptr inbounds %struct.ead_packet, %struct.ead_packet* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @memcmp(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %92

33:                                               ; preds = %25
  %34 = load %struct.ead_packet*, %struct.ead_packet** %7, align 8
  %35 = getelementptr inbounds %struct.ead_packet, %struct.ead_packet* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UIP_PROTO_UDP, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %92

40:                                               ; preds = %33
  %41 = load %struct.ead_packet*, %struct.ead_packet** %7, align 8
  %42 = getelementptr inbounds %struct.ead_packet, %struct.ead_packet* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @EAD_PORT, align 4
  %45 = call i32 @htons(i32 %44)
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %92

48:                                               ; preds = %40
  %49 = load %struct.ead_packet*, %struct.ead_packet** %7, align 8
  %50 = getelementptr inbounds %struct.ead_packet, %struct.ead_packet* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @EAD_MAGIC, align 4
  %54 = call i64 @htonl(i32 %53)
  %55 = icmp ne i64 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %92

57:                                               ; preds = %48
  %58 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %59 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.ead_packet*, %struct.ead_packet** %7, align 8
  %63 = getelementptr inbounds %struct.ead_packet, %struct.ead_packet* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @ntohl(i32 %65)
  %67 = add i64 40, %66
  %68 = icmp ult i64 %61, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %92

70:                                               ; preds = %57
  %71 = load %struct.ead_packet*, %struct.ead_packet** %7, align 8
  %72 = getelementptr inbounds %struct.ead_packet, %struct.ead_packet* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 65535
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load %struct.ead_packet*, %struct.ead_packet** %7, align 8
  %78 = getelementptr inbounds %struct.ead_packet, %struct.ead_packet* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @nid, align 4
  %82 = call i32 @htons(i32 %81)
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %92

85:                                               ; preds = %76, %70
  %86 = load %struct.ead_packet*, %struct.ead_packet** %7, align 8
  %87 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %88 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = call i32 @parse_message(%struct.ead_packet* %86, i64 %90)
  br label %92

92:                                               ; preds = %85, %84, %69, %56, %47, %39, %32, %24, %15
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @parse_message(%struct.ead_packet*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
