; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_setup_intel_patching.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_setup_intel_patching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.firmware = type { i32, i32* }
%struct.sk_buff = type { i32, i32 }
%struct.hci_command_hdr = type { i32, i32 }
%struct.hci_event_hdr = type { i32, i32 }

@HCI_COMMAND_HDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Intel fw corrupted: invalid cmd read\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Intel fw corrupted: invalid cmd len\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@HCI_EVENT_HDR_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Intel fw corrupted: invalid evt len\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Intel fw corrupted: invalid evt read\00", align 1
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"sending Intel patch command (0x%4.4x) failed (%ld)\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"mismatch event length (opcode 0x%4.4x)\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"mismatch event parameter (opcode 0x%4.4x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.firmware*, i32**, i32*)* @btusb_setup_intel_patching to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_setup_intel_patching(%struct.hci_dev* %0, %struct.firmware* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.hci_command_hdr*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.hci_event_hdr*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store %struct.firmware* %1, %struct.firmware** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.hci_event_hdr* null, %struct.hci_event_hdr** %13, align 8
  store i32* null, i32** %14, align 8
  %16 = load %struct.firmware*, %struct.firmware** %7, align 8
  %17 = getelementptr inbounds %struct.firmware, %struct.firmware* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = load i32**, i32*** %8, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.firmware*, %struct.firmware** %7, align 8
  %23 = getelementptr inbounds %struct.firmware, %struct.firmware* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = ptrtoint i32* %21 to i64
  %26 = ptrtoint i32* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = sub nsw i64 %19, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @HCI_COMMAND_HDR_SIZE, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %4
  %35 = load i32**, i32*** %8, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %42 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %236

45:                                               ; preds = %34, %4
  %46 = load i32**, i32*** %8, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %46, align 8
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %15, align 4
  %51 = load i32**, i32*** %8, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = bitcast i32* %52 to %struct.hci_command_hdr*
  store %struct.hci_command_hdr* %53, %struct.hci_command_hdr** %11, align 8
  %54 = load i32**, i32*** %8, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  store i32* %56, i32** %54, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 %58, 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %11, align 8
  %63 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %45
  %67 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %68 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EFAULT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %236

71:                                               ; preds = %45
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %11, align 8
  %77 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le16_to_cpu(i32 %78)
  %80 = icmp eq i32 %79, 64654
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32*, i32** %9, align 8
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %81, %75, %71
  %84 = load i32**, i32*** %8, align 8
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %12, align 8
  %86 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %11, align 8
  %87 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32**, i32*** %8, align 8
  %90 = load i32*, i32** %89, align 8
  %91 = sext i32 %88 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %89, align 8
  %93 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %11, align 8
  %94 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %15, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %136, %83
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @HCI_EVENT_HDR_SIZE, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32**, i32*** %8, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 2
  br label %108

108:                                              ; preds = %102, %98
  %109 = phi i1 [ false, %98 ], [ %107, %102 ]
  br i1 %109, label %110, label %151

110:                                              ; preds = %108
  %111 = load i32**, i32*** %8, align 8
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %111, align 8
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %15, align 4
  %116 = load i32**, i32*** %8, align 8
  %117 = load i32*, i32** %116, align 8
  %118 = bitcast i32* %117 to %struct.hci_event_hdr*
  store %struct.hci_event_hdr* %118, %struct.hci_event_hdr** %13, align 8
  %119 = load i32**, i32*** %8, align 8
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 8
  store i32* %121, i32** %119, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = sub i64 %123, 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %13, align 8
  %128 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %110
  %132 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %133 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %132, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i32, i32* @EFAULT, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %236

136:                                              ; preds = %110
  %137 = load i32**, i32*** %8, align 8
  %138 = load i32*, i32** %137, align 8
  store i32* %138, i32** %14, align 8
  %139 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %13, align 8
  %140 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32**, i32*** %8, align 8
  %143 = load i32*, i32** %142, align 8
  %144 = sext i32 %141 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %142, align 8
  %146 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %13, align 8
  %147 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %15, align 4
  %150 = sub nsw i32 %149, %148
  store i32 %150, i32* %15, align 4
  br label %98

151:                                              ; preds = %108
  %152 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %13, align 8
  %153 = icmp ne %struct.hci_event_hdr* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i32*, i32** %14, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* %15, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157, %154, %151
  %161 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %162 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %161, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %163 = load i32, i32* @EFAULT, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %5, align 4
  br label %236

165:                                              ; preds = %157
  %166 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %167 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %11, align 8
  %168 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @le16_to_cpu(i32 %169)
  %171 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %11, align 8
  %172 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %12, align 8
  %175 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %13, align 8
  %176 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %179 = call %struct.sk_buff* @__hci_cmd_sync_ev(%struct.hci_dev* %166, i32 %170, i32 %173, i32* %174, i32 %177, i32 %178)
  store %struct.sk_buff* %179, %struct.sk_buff** %10, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %181 = call i64 @IS_ERR(%struct.sk_buff* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %165
  %184 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %185 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %11, align 8
  %186 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %189 = call i32 @PTR_ERR(%struct.sk_buff* %188)
  %190 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %184, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %187, i32 %189)
  %191 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %192 = call i32 @PTR_ERR(%struct.sk_buff* %191)
  store i32 %192, i32* %5, align 4
  br label %236

193:                                              ; preds = %165
  %194 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %195 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %13, align 8
  %198 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %196, %199
  br i1 %200, label %201, label %212

201:                                              ; preds = %193
  %202 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %203 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %11, align 8
  %204 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @le16_to_cpu(i32 %205)
  %207 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %202, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %206)
  %208 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %209 = call i32 @kfree_skb(%struct.sk_buff* %208)
  %210 = load i32, i32* @EFAULT, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %5, align 4
  br label %236

212:                                              ; preds = %193
  %213 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %214 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %14, align 8
  %217 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %13, align 8
  %218 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i64 @memcmp(i32 %215, i32* %216, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %212
  %223 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %224 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %11, align 8
  %225 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @le16_to_cpu(i32 %226)
  %228 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %223, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %227)
  %229 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %230 = call i32 @kfree_skb(%struct.sk_buff* %229)
  %231 = load i32, i32* @EFAULT, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %5, align 4
  br label %236

233:                                              ; preds = %212
  %234 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %235 = call i32 @kfree_skb(%struct.sk_buff* %234)
  store i32 0, i32* %5, align 4
  br label %236

236:                                              ; preds = %233, %222, %201, %183, %160, %131, %66, %40
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @__hci_cmd_sync_ev(%struct.hci_dev*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
