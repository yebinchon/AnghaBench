; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_eni.c_alloc_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_eni.c_alloc_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eni_tx = type { i32 }
%struct.eni_dev = type { %struct.eni_tx* }

@NR_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.eni_tx* (%struct.eni_dev*, i32)* @alloc_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.eni_tx* @alloc_tx(%struct.eni_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.eni_tx*, align 8
  %4 = alloca %struct.eni_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.eni_dev* %0, %struct.eni_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NR_CHAN, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load %struct.eni_dev*, %struct.eni_dev** %4, align 8
  %17 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %16, i32 0, i32 0
  %18 = load %struct.eni_tx*, %struct.eni_tx** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.eni_tx, %struct.eni_tx* %18, i64 %20
  %22 = getelementptr inbounds %struct.eni_tx, %struct.eni_tx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %15
  %26 = load %struct.eni_dev*, %struct.eni_dev** %4, align 8
  %27 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %26, i32 0, i32 0
  %28 = load %struct.eni_tx*, %struct.eni_tx** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.eni_tx, %struct.eni_tx* %28, i64 %30
  store %struct.eni_tx* %31, %struct.eni_tx** %3, align 8
  br label %37

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %11

36:                                               ; preds = %11
  store %struct.eni_tx* null, %struct.eni_tx** %3, align 8
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.eni_tx*, %struct.eni_tx** %3, align 8
  ret %struct.eni_tx* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
