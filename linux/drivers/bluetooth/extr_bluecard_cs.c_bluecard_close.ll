; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bluecard_cs.c_bluecard_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bluecard_cs.c_bluecard_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bluecard_info = type { i32, i32, %struct.hci_dev*, %struct.TYPE_4__* }
%struct.hci_dev = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@CARD_READY = common dso_local global i32 0, align 4
@REG_CONTROL_BT_RESET = common dso_local global i32 0, align 4
@REG_CONTROL_CARD_RESET = common dso_local global i32 0, align 4
@REG_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bluecard_info*)* @bluecard_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bluecard_close(%struct.bluecard_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bluecard_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  store %struct.bluecard_info* %0, %struct.bluecard_info** %3, align 8
  %6 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %7 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %10, i64 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %16 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %15, i32 0, i32 2
  %17 = load %struct.hci_dev*, %struct.hci_dev** %16, align 8
  store %struct.hci_dev* %17, %struct.hci_dev** %5, align 8
  %18 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %19 = icmp ne %struct.hci_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %49

23:                                               ; preds = %1
  %24 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %25 = call i32 @bluecard_hci_close(%struct.hci_dev* %24)
  %26 = load i32, i32* @CARD_READY, align 4
  %27 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %28 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %27, i32 0, i32 1
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  %30 = load i32, i32* @REG_CONTROL_BT_RESET, align 4
  %31 = load i32, i32* @REG_CONTROL_CARD_RESET, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %34 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.bluecard_info*, %struct.bluecard_info** %3, align 8
  %36 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @REG_CONTROL, align 4
  %40 = add i32 %38, %39
  %41 = call i32 @outb(i32 %37, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = add i32 %42, 48
  %44 = call i32 @outb(i32 128, i32 %43)
  %45 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %46 = call i32 @hci_unregister_dev(%struct.hci_dev* %45)
  %47 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %48 = call i32 @hci_free_dev(%struct.hci_dev* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %23, %20
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @bluecard_hci_close(%struct.hci_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @hci_unregister_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
