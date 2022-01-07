; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btqca.c_qca_read_soc_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btqca.c_qca_read_soc_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.edl_event_hdr = type { i64, i64, i32 }
%struct.rome_version = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"QCA Version Request\00", align 1
@EDL_PATCH_VER_REQ_CMD = common dso_local global i8 0, align 1
@EDL_PATCH_CMD_OPCODE = common dso_local global i32 0, align 4
@EDL_PATCH_CMD_LEN = common dso_local global i32 0, align 4
@HCI_EV_VENDOR = common dso_local global i32 0, align 4
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Reading QCA version information failed (%d)\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"QCA Version size mismatch len %d\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"QCA TLV with no header\00", align 1
@EDL_CMD_REQ_RES_EVT = common dso_local global i32 0, align 4
@EDL_APP_VER_RES_EVT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"QCA Wrong packet received %d %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"%s: Product:0x%08x\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%s: Patch  :0x%08x\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"%s: ROM    :0x%08x\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"%s: SOC    :0x%08x\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"QCA Failed to get version (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qca_read_soc_version(%struct.hci_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.edl_event_hdr*, align 8
  %8 = alloca %struct.rome_version*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %12 = call i32 @bt_dev_dbg(%struct.hci_dev* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = load i8, i8* @EDL_PATCH_VER_REQ_CMD, align 1
  store i8 %13, i8* %9, align 1
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = load i32, i32* @EDL_PATCH_CMD_OPCODE, align 4
  %16 = load i32, i32* @EDL_PATCH_CMD_LEN, align 4
  %17 = load i32, i32* @HCI_EV_VENDOR, align 4
  %18 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %19 = call %struct.sk_buff* @__hci_cmd_sync_ev(%struct.hci_dev* %14, i32 %15, i32 %16, i8* %9, i32 %17, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i64 @IS_ERR(%struct.sk_buff* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.sk_buff* %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %146

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 40
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EILSEQ, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %135

44:                                               ; preds = %30
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.edl_event_hdr*
  store %struct.edl_event_hdr* %48, %struct.edl_event_hdr** %7, align 8
  %49 = load %struct.edl_event_hdr*, %struct.edl_event_hdr** %7, align 8
  %50 = icmp ne %struct.edl_event_hdr* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %44
  %52 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %53 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @EILSEQ, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  br label %135

56:                                               ; preds = %44
  %57 = load %struct.edl_event_hdr*, %struct.edl_event_hdr** %7, align 8
  %58 = getelementptr inbounds %struct.edl_event_hdr, %struct.edl_event_hdr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @EDL_CMD_REQ_RES_EVT, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.edl_event_hdr*, %struct.edl_event_hdr** %7, align 8
  %64 = getelementptr inbounds %struct.edl_event_hdr, %struct.edl_event_hdr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @EDL_APP_VER_RES_EVT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %62, %56
  %69 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %70 = load %struct.edl_event_hdr*, %struct.edl_event_hdr** %7, align 8
  %71 = getelementptr inbounds %struct.edl_event_hdr, %struct.edl_event_hdr* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.edl_event_hdr*, %struct.edl_event_hdr** %7, align 8
  %74 = getelementptr inbounds %struct.edl_event_hdr, %struct.edl_event_hdr* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %72, i64 %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %10, align 4
  br label %135

79:                                               ; preds = %62
  %80 = load %struct.edl_event_hdr*, %struct.edl_event_hdr** %7, align 8
  %81 = getelementptr inbounds %struct.edl_event_hdr, %struct.edl_event_hdr* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.rome_version*
  store %struct.rome_version* %83, %struct.rome_version** %8, align 8
  %84 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %85 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rome_version*, %struct.rome_version** %8, align 8
  %88 = getelementptr inbounds %struct.rome_version, %struct.rome_version* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le32_to_cpu(i32 %89)
  %91 = call i32 @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %86, i32 %90)
  %92 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %93 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.rome_version*, %struct.rome_version** %8, align 8
  %96 = getelementptr inbounds %struct.rome_version, %struct.rome_version* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le16_to_cpu(i32 %97)
  %99 = call i32 @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %94, i32 %98)
  %100 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %101 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rome_version*, %struct.rome_version** %8, align 8
  %104 = getelementptr inbounds %struct.rome_version, %struct.rome_version* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le16_to_cpu(i32 %105)
  %107 = call i32 @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %102, i32 %106)
  %108 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %109 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.rome_version*, %struct.rome_version** %8, align 8
  %112 = getelementptr inbounds %struct.rome_version, %struct.rome_version* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le32_to_cpu(i32 %113)
  %115 = call i32 @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %110, i32 %114)
  %116 = load %struct.rome_version*, %struct.rome_version** %8, align 8
  %117 = getelementptr inbounds %struct.rome_version, %struct.rome_version* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le32_to_cpu(i32 %118)
  %120 = shl i32 %119, 16
  %121 = load %struct.rome_version*, %struct.rome_version** %8, align 8
  %122 = getelementptr inbounds %struct.rome_version, %struct.rome_version* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le16_to_cpu(i32 %123)
  %125 = and i32 %124, 65535
  %126 = or i32 %120, %125
  %127 = load i32*, i32** %5, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %79
  %132 = load i32, i32* @EILSEQ, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %131, %79
  br label %135

135:                                              ; preds = %134, %68, %51, %36
  %136 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %137 = call i32 @kfree_skb(%struct.sk_buff* %136)
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %142 = load i32, i32* %10, align 4
  %143 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %140, %135
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %23
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @bt_dev_dbg(%struct.hci_dev*, i8*) #1

declare dso_local %struct.sk_buff* @__hci_cmd_sync_ev(%struct.hci_dev*, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
