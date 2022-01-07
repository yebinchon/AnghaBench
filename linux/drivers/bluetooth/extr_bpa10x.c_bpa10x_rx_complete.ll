; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bpa10x.c_bpa10x_rx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bpa10x.c_bpa10x_rx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bpa10x_data = type { i32, i32** }

@.str = private unnamed_addr constant [29 x i8] c"%s urb %p status %d count %d\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@bpa10x_recv_pkts = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"corrupted event packet\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"urb %p failed to resubmit (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @bpa10x_rx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpa10x_rx_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.bpa10x_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 4
  %9 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  store %struct.hci_dev* %9, %struct.hci_dev** %3, align 8
  %10 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %11 = call %struct.bpa10x_data* @hci_get_drvdata(%struct.hci_dev* %10)
  store %struct.bpa10x_data* %11, %struct.bpa10x_data** %4, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.urb*, %struct.urb** %2, align 8
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.urb*, %struct.urb** %2, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14, %struct.urb* %15, i32 %18, i32 %21)
  %23 = load i32, i32* @HCI_RUNNING, align 4
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 1
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %105

29:                                               ; preds = %1
  %30 = load %struct.urb*, %struct.urb** %2, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %87

34:                                               ; preds = %29
  %35 = load %struct.urb*, %struct.urb** %2, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @usb_pipebulk(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %40 = load %struct.bpa10x_data*, %struct.bpa10x_data** %4, align 8
  %41 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.urb*, %struct.urb** %2, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.urb*, %struct.urb** %2, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @bpa10x_recv_pkts, align 4
  %54 = load i32, i32* @bpa10x_recv_pkts, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = call i32* @h4_recv_buf(%struct.hci_dev* %39, i32* %46, i32 %49, i32 %52, i32 %53, i32 %55)
  %57 = load %struct.bpa10x_data*, %struct.bpa10x_data** %4, align 8
  %58 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %57, i32 0, i32 1
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  store i32* %56, i32** %62, align 8
  %63 = load %struct.bpa10x_data*, %struct.bpa10x_data** %4, align 8
  %64 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = call i64 @IS_ERR(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %34
  %73 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %74 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %76 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.bpa10x_data*, %struct.bpa10x_data** %4, align 8
  %81 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %80, i32 0, i32 1
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %72, %34
  br label %87

87:                                               ; preds = %86, %29
  %88 = load %struct.urb*, %struct.urb** %2, align 8
  %89 = load %struct.bpa10x_data*, %struct.bpa10x_data** %4, align 8
  %90 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %89, i32 0, i32 0
  %91 = call i32 @usb_anchor_urb(%struct.urb* %88, i32* %90)
  %92 = load %struct.urb*, %struct.urb** %2, align 8
  %93 = load i32, i32* @GFP_ATOMIC, align 4
  %94 = call i32 @usb_submit_urb(%struct.urb* %92, i32 %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %87
  %98 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %99 = load %struct.urb*, %struct.urb** %2, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sub nsw i32 0, %100
  %102 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %99, i32 %101)
  %103 = load %struct.urb*, %struct.urb** %2, align 8
  %104 = call i32 @usb_unanchor_urb(%struct.urb* %103)
  br label %105

105:                                              ; preds = %28, %97, %87
  ret void
}

declare dso_local %struct.bpa10x_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, i32, %struct.urb*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_pipebulk(i32) #1

declare dso_local i32* @h4_recv_buf(%struct.hci_dev*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

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
