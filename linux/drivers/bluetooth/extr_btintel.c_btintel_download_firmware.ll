; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.firmware = type { i32, i32* }
%struct.hci_command_hdr = type { i64, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to send firmware header (%d)\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to send firmware pkey (%d)\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to send firmware signature (%d)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"boot_param=0x%x\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to send firmware data (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btintel_download_firmware(%struct.hci_dev* %0, %struct.firmware* %1, i32* %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hci_command_hdr*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %12 = load %struct.firmware*, %struct.firmware** %5, align 8
  %13 = getelementptr inbounds %struct.firmware, %struct.firmware* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @btintel_secure_send(%struct.hci_dev* %11, i32 0, i32 128, i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @bt_dev_err(%struct.hci_dev* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %118

22:                                               ; preds = %3
  %23 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %24 = load %struct.firmware*, %struct.firmware** %5, align 8
  %25 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 128
  %28 = call i32 @btintel_secure_send(%struct.hci_dev* %23, i32 3, i32 256, i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @bt_dev_err(%struct.hci_dev* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %118

35:                                               ; preds = %22
  %36 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %37 = load %struct.firmware*, %struct.firmware** %5, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 388
  %41 = call i32 @btintel_secure_send(%struct.hci_dev* %36, i32 2, i32 256, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @bt_dev_err(%struct.hci_dev* %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %118

48:                                               ; preds = %35
  %49 = load %struct.firmware*, %struct.firmware** %5, align 8
  %50 = getelementptr inbounds %struct.firmware, %struct.firmware* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 644
  store i32* %52, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %116, %48
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.firmware*, %struct.firmware** %5, align 8
  %56 = getelementptr inbounds %struct.firmware, %struct.firmware* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = ptrtoint i32* %54 to i64
  %59 = ptrtoint i32* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  %62 = load %struct.firmware*, %struct.firmware** %5, align 8
  %63 = getelementptr inbounds %struct.firmware, %struct.firmware* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %61, %65
  br i1 %66, label %67, label %117

67:                                               ; preds = %53
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = bitcast i32* %71 to i8*
  %73 = bitcast i8* %72 to %struct.hci_command_hdr*
  store %struct.hci_command_hdr* %73, %struct.hci_command_hdr** %10, align 8
  %74 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %10, align 8
  %75 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = icmp eq i32 %77, 64526
  br i1 %78, label %79, label %88

79:                                               ; preds = %67
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 16
  %82 = call i32 @get_unaligned_le32(i32* %81)
  %83 = load i32*, i32** %6, align 8
  store i32 %82, i32* %83, align 4
  %84 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @bt_dev_dbg(%struct.hci_dev* %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %79, %67
  %89 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %10, align 8
  %90 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 16, %91
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = srem i32 %97, 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %88
  %101 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @btintel_secure_send(%struct.hci_dev* %101, i32 1, i32 %102, i32* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @bt_dev_err(%struct.hci_dev* %108, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  br label %118

111:                                              ; preds = %100
  %112 = load i32, i32* %9, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32* %115, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %111, %88
  br label %53

117:                                              ; preds = %53
  br label %118

118:                                              ; preds = %117, %107, %44, %31, %18
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @btintel_secure_send(%struct.hci_dev*, i32, i32, i32*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @bt_dev_dbg(%struct.hci_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
