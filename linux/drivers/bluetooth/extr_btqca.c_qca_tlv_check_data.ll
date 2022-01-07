; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btqca.c_qca_tlv_check_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btqca.c_qca_tlv_check_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rome_config = type { i32, i32, i32, i32 }
%struct.firmware = type { i64 }
%struct.tlv_type_hdr = type { i32*, i32 }
%struct.tlv_type_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tlv_type_nvm = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"TLV Type\09\09 : 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Length\09\09 : %d bytes\00", align 1
@ROME_SKIP_EVT_NONE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Total Length           : %d bytes\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Patch Data Length      : %d bytes\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Signing Format Version : 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Signature Algorithm    : 0x%x\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Download mode          : 0x%x\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Reserved               : 0x%x\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Product ID             : 0x%04x\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Rom Build Version      : 0x%04x\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Patch Version          : 0x%04x\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Patch Entry Address    : 0x%x\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Unknown TLV type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rome_config*, %struct.firmware*)* @qca_tlv_check_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qca_tlv_check_data(%struct.rome_config* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.rome_config*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tlv_type_hdr*, align 8
  %12 = alloca %struct.tlv_type_patch*, align 8
  %13 = alloca %struct.tlv_type_nvm*, align 8
  store %struct.rome_config* %0, %struct.rome_config** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  %14 = load %struct.firmware*, %struct.firmware** %4, align 8
  %15 = getelementptr inbounds %struct.firmware, %struct.firmware* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.tlv_type_hdr*
  store %struct.tlv_type_hdr* %17, %struct.tlv_type_hdr** %11, align 8
  %18 = load %struct.tlv_type_hdr*, %struct.tlv_type_hdr** %11, align 8
  %19 = getelementptr inbounds %struct.tlv_type_hdr, %struct.tlv_type_hdr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @le32_to_cpu(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 16777215
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 255
  %27 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i8*, i8** @ROME_SKIP_EVT_NONE, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.rome_config*, %struct.rome_config** %3, align 8
  %33 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i8*, i8** @ROME_SKIP_EVT_NONE, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.rome_config*, %struct.rome_config** %3, align 8
  %37 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.rome_config*, %struct.rome_config** %3, align 8
  %39 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %160 [
    i32 128, label %41
    i32 129, label %107
  ]

41:                                               ; preds = %2
  %42 = load %struct.tlv_type_hdr*, %struct.tlv_type_hdr** %11, align 8
  %43 = getelementptr inbounds %struct.tlv_type_hdr, %struct.tlv_type_hdr* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = bitcast i32* %44 to %struct.tlv_type_patch*
  store %struct.tlv_type_patch* %45, %struct.tlv_type_patch** %12, align 8
  %46 = load %struct.tlv_type_patch*, %struct.tlv_type_patch** %12, align 8
  %47 = getelementptr inbounds %struct.tlv_type_patch, %struct.tlv_type_patch* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rome_config*, %struct.rome_config** %3, align 8
  %50 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.rome_config*, %struct.rome_config** %3, align 8
  %52 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rome_config*, %struct.rome_config** %3, align 8
  %55 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.tlv_type_patch*, %struct.tlv_type_patch** %12, align 8
  %57 = getelementptr inbounds %struct.tlv_type_patch, %struct.tlv_type_patch* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = call i32 @BT_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.tlv_type_patch*, %struct.tlv_type_patch** %12, align 8
  %62 = getelementptr inbounds %struct.tlv_type_patch, %struct.tlv_type_patch* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  %65 = call i32 @BT_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load %struct.tlv_type_patch*, %struct.tlv_type_patch** %12, align 8
  %67 = getelementptr inbounds %struct.tlv_type_patch, %struct.tlv_type_patch* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = load %struct.tlv_type_patch*, %struct.tlv_type_patch** %12, align 8
  %71 = getelementptr inbounds %struct.tlv_type_patch, %struct.tlv_type_patch* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = load %struct.tlv_type_patch*, %struct.tlv_type_patch** %12, align 8
  %75 = getelementptr inbounds %struct.tlv_type_patch, %struct.tlv_type_patch* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  %78 = load %struct.tlv_type_patch*, %struct.tlv_type_patch** %12, align 8
  %79 = getelementptr inbounds %struct.tlv_type_patch, %struct.tlv_type_patch* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  %82 = load %struct.tlv_type_patch*, %struct.tlv_type_patch** %12, align 8
  %83 = getelementptr inbounds %struct.tlv_type_patch, %struct.tlv_type_patch* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le16_to_cpu(i32 %84)
  %86 = call i32 @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %85)
  %87 = load %struct.tlv_type_patch*, %struct.tlv_type_patch** %12, align 8
  %88 = getelementptr inbounds %struct.tlv_type_patch, %struct.tlv_type_patch* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le16_to_cpu(i32 %89)
  %91 = call i32 @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %90)
  %92 = load %struct.tlv_type_patch*, %struct.tlv_type_patch** %12, align 8
  %93 = getelementptr inbounds %struct.tlv_type_patch, %struct.tlv_type_patch* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le16_to_cpu(i32 %94)
  %96 = call i32 @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %95)
  %97 = load %struct.tlv_type_patch*, %struct.tlv_type_patch** %12, align 8
  %98 = getelementptr inbounds %struct.tlv_type_patch, %struct.tlv_type_patch* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le16_to_cpu(i32 %99)
  %101 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %100)
  %102 = load %struct.tlv_type_patch*, %struct.tlv_type_patch** %12, align 8
  %103 = getelementptr inbounds %struct.tlv_type_patch, %struct.tlv_type_patch* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le32_to_cpu(i32 %104)
  %106 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %105)
  br label %165

107:                                              ; preds = %2
  store i32 0, i32* %9, align 4
  %108 = load %struct.tlv_type_hdr*, %struct.tlv_type_hdr** %11, align 8
  %109 = getelementptr inbounds %struct.tlv_type_hdr, %struct.tlv_type_hdr* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %5, align 8
  br label %111

111:                                              ; preds = %151, %107
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %159

115:                                              ; preds = %111
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = bitcast i32* %119 to %struct.tlv_type_nvm*
  store %struct.tlv_type_nvm* %120, %struct.tlv_type_nvm** %13, align 8
  %121 = load %struct.tlv_type_nvm*, %struct.tlv_type_nvm** %13, align 8
  %122 = getelementptr inbounds %struct.tlv_type_nvm, %struct.tlv_type_nvm* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le16_to_cpu(i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load %struct.tlv_type_nvm*, %struct.tlv_type_nvm** %13, align 8
  %126 = getelementptr inbounds %struct.tlv_type_nvm, %struct.tlv_type_nvm* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @le16_to_cpu(i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %7, align 4
  switch i32 %129, label %151 [
    i32 130, label %130
    i32 131, label %144
  ]

130:                                              ; preds = %115
  %131 = load %struct.tlv_type_nvm*, %struct.tlv_type_nvm** %13, align 8
  %132 = getelementptr inbounds %struct.tlv_type_nvm, %struct.tlv_type_nvm* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, 128
  store i32 %136, i32* %134, align 4
  %137 = load %struct.rome_config*, %struct.rome_config** %3, align 8
  %138 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.tlv_type_nvm*, %struct.tlv_type_nvm** %13, align 8
  %141 = getelementptr inbounds %struct.tlv_type_nvm, %struct.tlv_type_nvm* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  store i32 %139, i32* %143, align 4
  br label %151

144:                                              ; preds = %115
  %145 = load %struct.tlv_type_nvm*, %struct.tlv_type_nvm** %13, align 8
  %146 = getelementptr inbounds %struct.tlv_type_nvm, %struct.tlv_type_nvm* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, 1
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %115, %144, %130
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 16, %153
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = add i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %9, align 4
  br label %111

159:                                              ; preds = %111
  br label %165

160:                                              ; preds = %2
  %161 = load %struct.rome_config*, %struct.rome_config** %3, align 8
  %162 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @BT_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %160, %159, %41
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
