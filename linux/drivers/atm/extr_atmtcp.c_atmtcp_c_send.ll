; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_atmtcp.c_atmtcp_c_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_atmtcp.c_atmtcp_c_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { {}*, %struct.TYPE_2__*, {}*, %struct.atm_dev* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.atm_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.atmtcp_hdr = type { i64, i32, i32 }
%struct.atmtcp_control = type { i32 }

@ATMTCP_HDR_MAGIC = common dso_local global i64 0, align 8
@vcc_sklist_lock = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, %struct.sk_buff*)* @atmtcp_c_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmtcp_c_send(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.atm_dev*, align 8
  %7 = alloca %struct.atmtcp_hdr*, align 8
  %8 = alloca %struct.atm_vcc*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %121

16:                                               ; preds = %2
  %17 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %18 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %17, i32 0, i32 3
  %19 = load %struct.atm_dev*, %struct.atm_dev** %18, align 8
  store %struct.atm_dev* %19, %struct.atm_dev** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.atmtcp_hdr*
  store %struct.atmtcp_hdr* %23, %struct.atmtcp_hdr** %7, align 8
  %24 = load %struct.atmtcp_hdr*, %struct.atmtcp_hdr** %7, align 8
  %25 = getelementptr inbounds %struct.atmtcp_hdr, %struct.atmtcp_hdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ATMTCP_HDR_MAGIC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.atmtcp_control*
  %34 = call i32 @atmtcp_recv_control(%struct.atmtcp_control* %33)
  store i32 %34, i32* %10, align 4
  br label %102

35:                                               ; preds = %16
  %36 = call i32 @read_lock(i32* @vcc_sklist_lock)
  %37 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %38 = load %struct.atmtcp_hdr*, %struct.atmtcp_hdr** %7, align 8
  %39 = getelementptr inbounds %struct.atmtcp_hdr, %struct.atmtcp_hdr* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohs(i32 %40)
  %42 = load %struct.atmtcp_hdr*, %struct.atmtcp_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.atmtcp_hdr, %struct.atmtcp_hdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ntohs(i32 %44)
  %46 = call %struct.atm_vcc* @find_vcc(%struct.atm_dev* %37, i32 %41, i32 %45)
  store %struct.atm_vcc* %46, %struct.atm_vcc** %8, align 8
  %47 = call i32 @read_unlock(i32* @vcc_sklist_lock)
  %48 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %49 = icmp ne %struct.atm_vcc* %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %35
  %51 = load i32, i32* @EUNATCH, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  %53 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %54 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = call i32 @atomic_inc(i32* %56)
  br label %102

58:                                               ; preds = %35
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call i32 @skb_pull(%struct.sk_buff* %59, i32 16)
  %61 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.sk_buff* @atm_alloc_charge(%struct.atm_vcc* %61, i32 %64, i32 %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %9, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* @ENOBUFS, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %10, align 4
  br label %102

72:                                               ; preds = %58
  %73 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %74 = call i32 @__net_timestamp(%struct.sk_buff* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @skb_put(%struct.sk_buff* %76, i32 %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %75, i32 %80, i32 %83)
  %85 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %86 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %85, i32 0, i32 2
  %87 = bitcast {}** %86 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %88 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %87, align 8
  %89 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %91 = call i32 %88(%struct.atm_vcc* %89, %struct.sk_buff* %90)
  %92 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %93 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = call i32 @atomic_inc(i32* %95)
  %97 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %98 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = call i32 @atomic_inc(i32* %100)
  br label %102

102:                                              ; preds = %72, %69, %50, %29
  %103 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %104 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %103, i32 0, i32 0
  %105 = bitcast {}** %104 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %106 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %105, align 8
  %107 = icmp ne i32 (%struct.atm_vcc*, %struct.sk_buff*)* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %110 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %109, i32 0, i32 0
  %111 = bitcast {}** %110 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %112 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %111, align 8
  %113 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %115 = call i32 %112(%struct.atm_vcc* %113, %struct.sk_buff* %114)
  br label %119

116:                                              ; preds = %102
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = call i32 @dev_kfree_skb(%struct.sk_buff* %117)
  br label %119

119:                                              ; preds = %116, %108
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %15
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @atmtcp_recv_control(%struct.atmtcp_control*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.atm_vcc* @find_vcc(%struct.atm_dev*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @atm_alloc_charge(%struct.atm_vcc*, i32, i32) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
