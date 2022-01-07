; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_find_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_find_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pata_macio_timing = type { i32 }
%struct.pata_macio_priv = type { %struct.pata_macio_timing* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pata_macio_timing* (%struct.pata_macio_priv*, i32)* @pata_macio_find_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pata_macio_timing* @pata_macio_find_timing(%struct.pata_macio_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.pata_macio_timing*, align 8
  %4 = alloca %struct.pata_macio_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pata_macio_priv* %0, %struct.pata_macio_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %9 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %8, i32 0, i32 0
  %10 = load %struct.pata_macio_timing*, %struct.pata_macio_timing** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.pata_macio_timing, %struct.pata_macio_timing* %10, i64 %12
  %14 = getelementptr inbounds %struct.pata_macio_timing, %struct.pata_macio_timing* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %7
  %18 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %19 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %18, i32 0, i32 0
  %20 = load %struct.pata_macio_timing*, %struct.pata_macio_timing** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pata_macio_timing, %struct.pata_macio_timing* %20, i64 %22
  %24 = getelementptr inbounds %struct.pata_macio_timing, %struct.pata_macio_timing* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %30 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %29, i32 0, i32 0
  %31 = load %struct.pata_macio_timing*, %struct.pata_macio_timing** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pata_macio_timing, %struct.pata_macio_timing* %31, i64 %33
  store %struct.pata_macio_timing* %34, %struct.pata_macio_timing** %3, align 8
  br label %40

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %7

39:                                               ; preds = %7
  store %struct.pata_macio_timing* null, %struct.pata_macio_timing** %3, align 8
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.pata_macio_timing*, %struct.pata_macio_timing** %3, align 8
  ret %struct.pata_macio_timing* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
