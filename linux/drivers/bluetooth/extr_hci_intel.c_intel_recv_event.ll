; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_intel.c_intel_recv_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_intel.c_intel_recv_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32*, i32 }
%struct.hci_uart = type { %struct.intel_data* }
%struct.intel_data = type { i32 }
%struct.hci_event_hdr = type { i32, i32 }

@STATE_BOOTLOADER = common dso_local global i32 0, align 4
@STATE_BOOTING = common dso_local global i32 0, align 4
@STATE_FIRMWARE_FAILED = common dso_local global i32 0, align 4
@STATE_DOWNLOADING = common dso_local global i32 0, align 4
@STATE_FIRMWARE_LOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sk_buff*)* @intel_recv_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_recv_event(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_uart*, align 8
  %6 = alloca %struct.intel_data*, align 8
  %7 = alloca %struct.hci_event_hdr*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = call %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev* %8)
  store %struct.hci_uart* %9, %struct.hci_uart** %5, align 8
  %10 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %11 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %10, i32 0, i32 0
  %12 = load %struct.intel_data*, %struct.intel_data** %11, align 8
  store %struct.intel_data* %12, %struct.intel_data** %6, align 8
  %13 = load i32, i32* @STATE_BOOTLOADER, align 4
  %14 = load %struct.intel_data*, %struct.intel_data** %6, align 8
  %15 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %14, i32 0, i32 0
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @STATE_BOOTING, align 4
  %20 = load %struct.intel_data*, %struct.intel_data** %6, align 8
  %21 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %118

25:                                               ; preds = %18, %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = bitcast i32* %28 to i8*
  %30 = bitcast i8* %29 to %struct.hci_event_hdr*
  store %struct.hci_event_hdr* %30, %struct.hci_event_hdr** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 7
  br i1 %34, label %35, label %82

35:                                               ; preds = %25
  %36 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %7, align 8
  %37 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %40, label %82

40:                                               ; preds = %35
  %41 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %7, align 8
  %42 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 5
  br i1 %44, label %45, label %82

45:                                               ; preds = %40
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 6
  br i1 %51, label %52, label %82

52:                                               ; preds = %45
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i32, i32* @STATE_FIRMWARE_FAILED, align 4
  %61 = load %struct.intel_data*, %struct.intel_data** %6, align 8
  %62 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %61, i32 0, i32 0
  %63 = call i32 @set_bit(i32 %60, i32* %62)
  br label %64

64:                                               ; preds = %59, %52
  %65 = load i32, i32* @STATE_DOWNLOADING, align 4
  %66 = load %struct.intel_data*, %struct.intel_data** %6, align 8
  %67 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %66, i32 0, i32 0
  %68 = call i64 @test_and_clear_bit(i32 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load i32, i32* @STATE_FIRMWARE_LOADED, align 4
  %72 = load %struct.intel_data*, %struct.intel_data** %6, align 8
  %73 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %72, i32 0, i32 0
  %74 = call i64 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.intel_data*, %struct.intel_data** %6, align 8
  %78 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %77, i32 0, i32 0
  %79 = load i32, i32* @STATE_DOWNLOADING, align 4
  %80 = call i32 @wake_up_bit(i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %70, %64
  br label %117

82:                                               ; preds = %45, %40, %35, %25
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 9
  br i1 %86, label %87, label %116

87:                                               ; preds = %82
  %88 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %7, align 8
  %89 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 255
  br i1 %91, label %92, label %116

92:                                               ; preds = %87
  %93 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %7, align 8
  %94 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 7
  br i1 %96, label %97, label %116

97:                                               ; preds = %92
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %116

104:                                              ; preds = %97
  %105 = load i32, i32* @STATE_BOOTING, align 4
  %106 = load %struct.intel_data*, %struct.intel_data** %6, align 8
  %107 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %106, i32 0, i32 0
  %108 = call i64 @test_and_clear_bit(i32 %105, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load %struct.intel_data*, %struct.intel_data** %6, align 8
  %112 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %111, i32 0, i32 0
  %113 = load i32, i32* @STATE_BOOTING, align 4
  %114 = call i32 @wake_up_bit(i32* %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %104
  br label %116

116:                                              ; preds = %115, %97, %92, %87, %82
  br label %117

117:                                              ; preds = %116, %81
  br label %118

118:                                              ; preds = %117, %24
  %119 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %121 = call i32 @hci_recv_frame(%struct.hci_dev* %119, %struct.sk_buff* %120)
  ret i32 %121
}

declare dso_local %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @hci_recv_frame(%struct.hci_dev*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
