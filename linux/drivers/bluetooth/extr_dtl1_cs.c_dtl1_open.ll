; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_dtl1_cs.c_dtl1_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_dtl1_cs.c_dtl1_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtl1_info = type { i32, %struct.hci_dev*, i32, %struct.TYPE_4__*, i32, i32*, i32, i32, i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__**, i32 }
%struct.TYPE_3__ = type { i32 }

@RECV_WAIT_NSH = common dso_local global i32 0, align 4
@NSHL = common dso_local global i32 0, align 4
@XMIT_WAITING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't allocate HCI device\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HCI_PCCARD = common dso_local global i32 0, align 4
@dtl1_hci_open = common dso_local global i32 0, align 4
@dtl1_hci_close = common dso_local global i32 0, align 4
@dtl1_hci_flush = common dso_local global i32 0, align 4
@dtl1_hci_send_frame = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i64 0, align 8
@UART_IER = common dso_local global i64 0, align 8
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i64 0, align 8
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@UART_MCR_OUT2 = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i64 0, align 8
@UART_MSR_RI = common dso_local global i32 0, align 4
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't register HCI device\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dtl1_info*)* @dtl1_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtl1_open(%struct.dtl1_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dtl1_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  store %struct.dtl1_info* %0, %struct.dtl1_info** %3, align 8
  %7 = load %struct.dtl1_info*, %struct.dtl1_info** %3, align 8
  %8 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %11, i64 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.dtl1_info*, %struct.dtl1_info** %3, align 8
  %17 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %16, i32 0, i32 2
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.dtl1_info*, %struct.dtl1_info** %3, align 8
  %20 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %19, i32 0, i32 8
  %21 = call i32 @skb_queue_head_init(i32* %20)
  %22 = load i32, i32* @RECV_WAIT_NSH, align 4
  %23 = load %struct.dtl1_info*, %struct.dtl1_info** %3, align 8
  %24 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @NSHL, align 4
  %26 = load %struct.dtl1_info*, %struct.dtl1_info** %3, align 8
  %27 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.dtl1_info*, %struct.dtl1_info** %3, align 8
  %29 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %28, i32 0, i32 5
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @XMIT_WAITING, align 4
  %31 = load %struct.dtl1_info*, %struct.dtl1_info** %3, align 8
  %32 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %31, i32 0, i32 4
  %33 = call i32 @set_bit(i32 %30, i32* %32)
  %34 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %34, %struct.hci_dev** %6, align 8
  %35 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %36 = icmp ne %struct.hci_dev* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %1
  %38 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %143

41:                                               ; preds = %1
  %42 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %43 = load %struct.dtl1_info*, %struct.dtl1_info** %3, align 8
  %44 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %43, i32 0, i32 1
  store %struct.hci_dev* %42, %struct.hci_dev** %44, align 8
  %45 = load i32, i32* @HCI_PCCARD, align 4
  %46 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %47 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %49 = load %struct.dtl1_info*, %struct.dtl1_info** %3, align 8
  %50 = call i32 @hci_set_drvdata(%struct.hci_dev* %48, %struct.dtl1_info* %49)
  %51 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %52 = load %struct.dtl1_info*, %struct.dtl1_info** %3, align 8
  %53 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %51, i32* %55)
  %57 = load i32, i32* @dtl1_hci_open, align 4
  %58 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @dtl1_hci_close, align 4
  %61 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %62 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @dtl1_hci_flush, align 4
  %64 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %65 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @dtl1_hci_send_frame, align 4
  %67 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %68 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.dtl1_info*, %struct.dtl1_info** %3, align 8
  %70 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %69, i32 0, i32 2
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load i32, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = load i64, i64* @UART_MCR, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @outb(i32 0, i64 %76)
  %78 = load i32, i32* %5, align 4
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* @UART_IER, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @outb(i32 0, i64 %81)
  %83 = load i32, i32* @UART_LCR_WLEN8, align 4
  %84 = load i32, i32* %5, align 4
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* @UART_LCR, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @outb(i32 %83, i64 %87)
  %89 = load i32, i32* @UART_MCR_DTR, align 4
  %90 = load i32, i32* @UART_MCR_RTS, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @UART_MCR_OUT2, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %5, align 4
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* @UART_MCR, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @outb(i32 %93, i64 %97)
  %99 = load %struct.dtl1_info*, %struct.dtl1_info** %3, align 8
  %100 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %103, i64 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* @UART_MSR, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @inb(i64 %110)
  %112 = load i32, i32* @UART_MSR_RI, align 4
  %113 = and i32 %111, %112
  %114 = load %struct.dtl1_info*, %struct.dtl1_info** %3, align 8
  %115 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @UART_IER_RLSI, align 4
  %117 = load i32, i32* @UART_IER_RDI, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @UART_IER_THRI, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %5, align 4
  %122 = zext i32 %121 to i64
  %123 = load i64, i64* @UART_IER, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @outb(i32 %120, i64 %124)
  %126 = load %struct.dtl1_info*, %struct.dtl1_info** %3, align 8
  %127 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %126, i32 0, i32 2
  %128 = load i64, i64* %4, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = call i32 @msleep(i32 2000)
  %131 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %132 = call i64 @hci_register_dev(%struct.hci_dev* %131)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %41
  %135 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %136 = load %struct.dtl1_info*, %struct.dtl1_info** %3, align 8
  %137 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %136, i32 0, i32 1
  store %struct.hci_dev* null, %struct.hci_dev** %137, align 8
  %138 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %139 = call i32 @hci_free_dev(%struct.hci_dev* %138)
  %140 = load i32, i32* @ENODEV, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %143

142:                                              ; preds = %41
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %134, %37
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @hci_set_drvdata(%struct.hci_dev*, %struct.dtl1_info*) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
