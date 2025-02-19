; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_solos-pci.c_solos_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_solos-pci.c_solos_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solos_card = type { i32, i32, i64*, i64 }

@IRQ_CLEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @solos_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solos_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.solos_card*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.solos_card*
  store %struct.solos_card* %8, %struct.solos_card** %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %10 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IRQ_CLEAR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @iowrite32(i32 0, i64 %13)
  %15 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %16 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %23 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %22, i32 0, i32 1
  %24 = call i32 @tasklet_schedule(i32* %23)
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %27 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %26, i32 0, i32 0
  %28 = call i32 @wake_up(i32* %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @IRQ_RETVAL(i32 %30)
  ret i32 %31
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
