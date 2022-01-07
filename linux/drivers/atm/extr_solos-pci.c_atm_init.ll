; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_solos-pci.c_atm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_solos-pci.c_atm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solos_card = type { i32, %struct.TYPE_7__*, %struct.TYPE_9__**, i32*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i8*, %struct.solos_card*, %struct.TYPE_6__, i32, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pkt_hdr = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"solos-pci\00", align 1
@fpga_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not register ATM device %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@dev_attr_console = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Could not register console for ATM device %d\0A\00", align 1
@solos_attr_group = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Could not register parameter group for ATM device %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Registered ATM device %d\0A\00", align 1
@ATM_PHY_SIG_FOUND = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to allocate sk_buff in atm_init()\0A\00", align 1
@PKT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solos_card*, %struct.device*)* @atm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_init(%struct.solos_card* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.solos_card*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.pkt_hdr*, align 8
  store %struct.solos_card* %0, %struct.solos_card** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %186, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %12 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %189

15:                                               ; preds = %9
  %16 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %17 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @skb_queue_head_init(i32* %21)
  %23 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %24 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @skb_queue_head_init(i32* %28)
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call %struct.TYPE_9__* @atm_dev_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.device* %30, i32* @fpga_ops, i32 -1, i32* null)
  %32 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %33 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %34, i64 %36
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %37, align 8
  %38 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %39 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %38, i32 0, i32 2
  %40 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %40, i64 %42
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %15
  %47 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %48 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %54 = call i32 @atm_remove(%struct.solos_card* %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %190

57:                                               ; preds = %15
  %58 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %59 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %58, i32 0, i32 2
  %60 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %60, i64 %62
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 4
  %66 = call i64 @device_create_file(%struct.TYPE_8__* %65, i32* @dev_attr_console)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %70 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %68, %57
  %76 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %77 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %76, i32 0, i32 2
  %78 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %78, i64 %80
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = call i64 @sysfs_create_group(i32* %84, i32* @solos_attr_group)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %75
  %88 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %89 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %87, %75
  %95 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %96 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %100 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %99, i32 0, i32 2
  %101 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %101, i64 %103
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dev_info(i32* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %110 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %109, i32 0, i32 2
  %111 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %111, i64 %113
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 8, i32* %117, align 8
  %118 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %119 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %118, i32 0, i32 2
  %120 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %120, i64 %122
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i32 16, i32* %126, align 4
  %127 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %128 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %129 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %128, i32 0, i32 2
  %130 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %130, i64 %132
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  store %struct.solos_card* %127, %struct.solos_card** %135, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %139 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %140 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %139, i32 0, i32 2
  %141 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %141, i64 %143
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  store i8* %138, i8** %146, align 8
  %147 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %148 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %147, i32 0, i32 2
  %149 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %149, i64 %151
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = load i32, i32* @ATM_PHY_SIG_FOUND, align 4
  %155 = call i32 @atm_dev_signal_change(%struct.TYPE_9__* %153, i32 %154)
  %156 = load i32, i32* @GFP_KERNEL, align 4
  %157 = call %struct.sk_buff* @alloc_skb(i32 32, i32 %156)
  store %struct.sk_buff* %157, %struct.sk_buff** %7, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %159 = icmp ne %struct.sk_buff* %158, null
  br i1 %159, label %166, label %160

160:                                              ; preds = %94
  %161 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %162 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %161, i32 0, i32 1
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = call i32 @dev_warn(i32* %164, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %186

166:                                              ; preds = %94
  %167 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %168 = call %struct.pkt_hdr* @skb_put(%struct.sk_buff* %167, i32 32)
  store %struct.pkt_hdr* %168, %struct.pkt_hdr** %8, align 8
  %169 = call i8* @cpu_to_le16(i32 0)
  %170 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %171 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %170, i32 0, i32 3
  store i8* %169, i8** %171, align 8
  %172 = call i8* @cpu_to_le16(i32 0)
  %173 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %174 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %173, i32 0, i32 2
  store i8* %172, i8** %174, align 8
  %175 = call i8* @cpu_to_le16(i32 0)
  %176 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %177 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %176, i32 0, i32 1
  store i8* %175, i8** %177, align 8
  %178 = load i32, i32* @PKT_STATUS, align 4
  %179 = call i8* @cpu_to_le16(i32 %178)
  %180 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %181 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  %182 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %185 = call i32 @fpga_queue(%struct.solos_card* %182, i32 %183, %struct.sk_buff* %184, i32* null)
  br label %186

186:                                              ; preds = %166, %160
  %187 = load i32, i32* %6, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %6, align 4
  br label %9

189:                                              ; preds = %9
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %189, %46
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local %struct.TYPE_9__* @atm_dev_register(i8*, %struct.device*, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @atm_remove(%struct.solos_card*) #1

declare dso_local i64 @device_create_file(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @atm_dev_signal_change(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.pkt_hdr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @fpga_queue(%struct.solos_card*, i32, %struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
