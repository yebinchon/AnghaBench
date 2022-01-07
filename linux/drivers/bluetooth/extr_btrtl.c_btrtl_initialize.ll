; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_btrtl_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_btrtl_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrtl_device_info = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i64, i64 }
%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_rp_read_local_version = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"examining hci_ver=%02x hci_rev=%04x lmp_ver=%02x lmp_subver=%04x\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"unknown IC info, lmp subver %04x, hci rev %04x, hci ver %04x\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"firmware file %s not found\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s-%s.bin\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s.bin\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"mandatory config file %s not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrtl_device_info* @btrtl_initialize(%struct.hci_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.btrtl_device_info*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.btrtl_device_info*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.hci_rp_read_local_version*, align 8
  %9 = alloca [40 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.btrtl_device_info* @kzalloc(i32 32, i32 %14)
  store %struct.btrtl_device_info* %15, %struct.btrtl_device_info** %6, align 8
  %16 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %17 = icmp ne %struct.btrtl_device_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  br label %190

21:                                               ; preds = %2
  %22 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %23 = call %struct.sk_buff* @btrtl_read_local_version(%struct.hci_dev* %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call i64 @IS_ERR(%struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = call i32 @PTR_ERR(%struct.sk_buff* %28)
  store i32 %29, i32* %13, align 4
  br label %187

30:                                               ; preds = %21
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.hci_rp_read_local_version*
  store %struct.hci_rp_read_local_version* %34, %struct.hci_rp_read_local_version** %8, align 8
  %35 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %36 = load %struct.hci_rp_read_local_version*, %struct.hci_rp_read_local_version** %8, align 8
  %37 = getelementptr inbounds %struct.hci_rp_read_local_version, %struct.hci_rp_read_local_version* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hci_rp_read_local_version*, %struct.hci_rp_read_local_version** %8, align 8
  %40 = getelementptr inbounds %struct.hci_rp_read_local_version, %struct.hci_rp_read_local_version* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hci_rp_read_local_version*, %struct.hci_rp_read_local_version** %8, align 8
  %43 = getelementptr inbounds %struct.hci_rp_read_local_version, %struct.hci_rp_read_local_version* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hci_rp_read_local_version*, %struct.hci_rp_read_local_version** %8, align 8
  %46 = getelementptr inbounds %struct.hci_rp_read_local_version, %struct.hci_rp_read_local_version* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.hci_dev*, i8*, i32, i32, i32, ...) @rtl_dev_info(%struct.hci_dev* %35, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41, i32 %44, i32 %47)
  %49 = load %struct.hci_rp_read_local_version*, %struct.hci_rp_read_local_version** %8, align 8
  %50 = getelementptr inbounds %struct.hci_rp_read_local_version, %struct.hci_rp_read_local_version* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %12, align 4
  %52 = load %struct.hci_rp_read_local_version*, %struct.hci_rp_read_local_version** %8, align 8
  %53 = getelementptr inbounds %struct.hci_rp_read_local_version, %struct.hci_rp_read_local_version* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.hci_rp_read_local_version*, %struct.hci_rp_read_local_version** %8, align 8
  %57 = getelementptr inbounds %struct.hci_rp_read_local_version, %struct.hci_rp_read_local_version* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le16_to_cpu(i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = call i32 @kfree_skb(%struct.sk_buff* %60)
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %66 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.TYPE_2__* @btrtl_match_ic(i32 %62, i32 %63, i32 %64, i32 %67)
  %69 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %70 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %69, i32 0, i32 2
  store %struct.TYPE_2__* %68, %struct.TYPE_2__** %70, align 8
  %71 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %72 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = icmp ne %struct.TYPE_2__* %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %30
  %76 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 (%struct.hci_dev*, i8*, i32, i32, i32, ...) @rtl_dev_info(%struct.hci_dev* %76, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78, i32 %79)
  %81 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  store %struct.btrtl_device_info* %81, %struct.btrtl_device_info** %3, align 8
  br label %193

82:                                               ; preds = %30
  %83 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %84 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %91 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %92 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %91, i32 0, i32 5
  %93 = call i32 @rtl_read_rom_version(%struct.hci_dev* %90, i32* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %187

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %82
  %99 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %100 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %101 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %106 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %105, i32 0, i32 4
  %107 = call i8* @rtl_load_file(%struct.hci_dev* %99, i8* %104, i32* %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %110 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %112 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %98
  %116 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %117 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %118 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %117, i32 0, i32 2
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @rtl_dev_err(%struct.hci_dev* %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %121)
  %123 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %124 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %13, align 4
  br label %187

126:                                              ; preds = %98
  %127 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %128 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %185

133:                                              ; preds = %126
  %134 = load i8*, i8** %5, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %145

136:                                              ; preds = %133
  %137 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 0
  %138 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %139 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %138, i32 0, i32 2
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i8*, i8** %5, align 8
  %144 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %137, i32 40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %142, i8* %143)
  br label %153

145:                                              ; preds = %133
  %146 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 0
  %147 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %148 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %147, i32 0, i32 2
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %146, i32 40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %151)
  br label %153

153:                                              ; preds = %145, %136
  %154 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %155 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 0
  %156 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %157 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %156, i32 0, i32 3
  %158 = call i8* @rtl_load_file(%struct.hci_dev* %154, i8* %155, i32* %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %161 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %163 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %162, i32 0, i32 2
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %184

168:                                              ; preds = %153
  %169 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %170 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp sle i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %168
  %174 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %175 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %176 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %175, i32 0, i32 2
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @rtl_dev_err(%struct.hci_dev* %174, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %179)
  %181 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %182 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %13, align 4
  br label %187

184:                                              ; preds = %168, %153
  br label %185

185:                                              ; preds = %184, %126
  %186 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  store %struct.btrtl_device_info* %186, %struct.btrtl_device_info** %3, align 8
  br label %193

187:                                              ; preds = %173, %115, %96, %27
  %188 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %6, align 8
  %189 = call i32 @btrtl_free(%struct.btrtl_device_info* %188)
  br label %190

190:                                              ; preds = %187, %18
  %191 = load i32, i32* %13, align 4
  %192 = call %struct.btrtl_device_info* @ERR_PTR(i32 %191)
  store %struct.btrtl_device_info* %192, %struct.btrtl_device_info** %3, align 8
  br label %193

193:                                              ; preds = %190, %185, %75
  %194 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %3, align 8
  ret %struct.btrtl_device_info* %194
}

declare dso_local %struct.btrtl_device_info* @kzalloc(i32, i32) #1

declare dso_local %struct.sk_buff* @btrtl_read_local_version(%struct.hci_dev*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @rtl_dev_info(%struct.hci_dev*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @btrtl_match_ic(i32, i32, i32, i32) #1

declare dso_local i32 @rtl_read_rom_version(%struct.hci_dev*, i32*) #1

declare dso_local i8* @rtl_load_file(%struct.hci_dev*, i8*, i32*) #1

declare dso_local i32 @rtl_dev_err(%struct.hci_dev*, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @btrtl_free(%struct.btrtl_device_info*) #1

declare dso_local %struct.btrtl_device_info* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
