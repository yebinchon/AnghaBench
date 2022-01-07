; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.btmrvl_private = type { i32, i64 }
%struct.btmrvl_sdio_card = type { %struct.TYPE_2__*, %struct.btmrvl_private* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [48 x i8] c"sbi_interrupt(%p) card or priv is NULL, card=%p\00", align 1
@sdio_ireg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @btmrvl_sdio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btmrvl_sdio_interrupt(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.btmrvl_private*, align 8
  %4 = alloca %struct.btmrvl_sdio_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %9 = call %struct.btmrvl_sdio_card* @sdio_get_drvdata(%struct.sdio_func* %8)
  store %struct.btmrvl_sdio_card* %9, %struct.btmrvl_sdio_card** %4, align 8
  %10 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %11 = icmp ne %struct.btmrvl_sdio_card* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %14 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %13, i32 0, i32 1
  %15 = load %struct.btmrvl_private*, %struct.btmrvl_private** %14, align 8
  %16 = icmp ne %struct.btmrvl_private* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %19 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %20 = call i32 @BT_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.sdio_func* %18, %struct.btmrvl_sdio_card* %19)
  br label %61

21:                                               ; preds = %12
  %22 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %23 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %22, i32 0, i32 1
  %24 = load %struct.btmrvl_private*, %struct.btmrvl_private** %23, align 8
  store %struct.btmrvl_private* %24, %struct.btmrvl_private** %3, align 8
  %25 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %26 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %61

30:                                               ; preds = %21
  %31 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %32 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %39 = call i32 @btmrvl_sdio_read_to_clear(%struct.btmrvl_sdio_card* %38, i32* %6)
  store i32 %39, i32* %7, align 4
  br label %43

40:                                               ; preds = %30
  %41 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %42 = call i32 @btmrvl_sdio_write_to_clear(%struct.btmrvl_sdio_card* %41, i32* %6)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %61

47:                                               ; preds = %43
  %48 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %49 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %48, i32 0, i32 0
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @spin_lock_irqsave(i32* %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @sdio_ireg, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* @sdio_ireg, align 4
  %55 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %56 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %55, i32 0, i32 0
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i32 %57)
  %59 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %60 = call i32 @btmrvl_interrupt(%struct.btmrvl_private* %59)
  br label %61

61:                                               ; preds = %47, %46, %29, %17
  ret void
}

declare dso_local %struct.btmrvl_sdio_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @BT_ERR(i8*, %struct.sdio_func*, %struct.btmrvl_sdio_card*) #1

declare dso_local i32 @btmrvl_sdio_read_to_clear(%struct.btmrvl_sdio_card*, i32*) #1

declare dso_local i32 @btmrvl_sdio_write_to_clear(%struct.btmrvl_sdio_card*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @btmrvl_interrupt(%struct.btmrvl_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
