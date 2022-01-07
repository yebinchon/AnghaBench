; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_isoc_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_isoc_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i64, %struct.TYPE_3__*, i32, %struct.hci_dev* }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.hci_dev = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.btusb_data = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s urb %p status %d count %d\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"corrupted SCO packet\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@BTUSB_ISOC_RUNNING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"urb %p failed to resubmit (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @btusb_isoc_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btusb_isoc_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.btusb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 5
  %11 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  store %struct.hci_dev* %11, %struct.hci_dev** %3, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = call %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev* %12)
  store %struct.btusb_data* %13, %struct.btusb_data** %4, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = load %struct.urb*, %struct.urb** %2, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.urb*, %struct.urb** %2, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16, %struct.urb* %17, i32 %20, i32 %23)
  %25 = load i32, i32* @HCI_RUNNING, align 4
  %26 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 1
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  br label %145

31:                                               ; preds = %1
  %32 = load %struct.urb*, %struct.urb** %2, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %100

36:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %96, %36
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.urb*, %struct.urb** %2, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %99

43:                                               ; preds = %37
  %44 = load %struct.urb*, %struct.urb** %2, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %7, align 4
  %52 = load %struct.urb*, %struct.urb** %2, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  %60 = load %struct.urb*, %struct.urb** %2, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %43
  br label %96

70:                                               ; preds = %43
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %73 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, %71
  store i32 %76, i32* %74, align 4
  %77 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %78 = load %struct.urb*, %struct.urb** %2, align 8
  %79 = getelementptr inbounds %struct.urb, %struct.urb* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load i32, i32* %8, align 4
  %85 = call i64 @btusb_recv_isoc(%struct.btusb_data* %77, i64 %83, i32 %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %70
  %88 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %89 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %91 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %87, %70
  br label %96

96:                                               ; preds = %95, %69
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %37

99:                                               ; preds = %37
  br label %109

100:                                              ; preds = %31
  %101 = load %struct.urb*, %struct.urb** %2, align 8
  %102 = getelementptr inbounds %struct.urb, %struct.urb* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ENOENT, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %145

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %99
  %110 = load i32, i32* @BTUSB_ISOC_RUNNING, align 4
  %111 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %112 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %111, i32 0, i32 1
  %113 = call i32 @test_bit(i32 %110, i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  br label %145

116:                                              ; preds = %109
  %117 = load %struct.urb*, %struct.urb** %2, align 8
  %118 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %119 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %118, i32 0, i32 0
  %120 = call i32 @usb_anchor_urb(%struct.urb* %117, i32* %119)
  %121 = load %struct.urb*, %struct.urb** %2, align 8
  %122 = load i32, i32* @GFP_ATOMIC, align 4
  %123 = call i32 @usb_submit_urb(%struct.urb* %121, i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %116
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @EPERM, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp ne i32 %127, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %126
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @ENODEV, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp ne i32 %132, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %138 = load %struct.urb*, %struct.urb** %2, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sub nsw i32 0, %139
  %141 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %138, i32 %140)
  br label %142

142:                                              ; preds = %136, %131, %126
  %143 = load %struct.urb*, %struct.urb** %2, align 8
  %144 = call i32 @usb_unanchor_urb(%struct.urb* %143)
  br label %145

145:                                              ; preds = %30, %107, %115, %142, %116
  ret void
}

declare dso_local %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, i32, %struct.urb*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @btusb_recv_isoc(%struct.btusb_data*, i64, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
