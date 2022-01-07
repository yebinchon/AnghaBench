; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_hpt3x2n.c_hpt3x2n_pci_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_hpt3x2n.c_hpt3x2n_pci_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"BIOS clock data not set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @hpt3x2n_pci_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpt3x2n_pci_clock(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call i64 @pci_resource_start(%struct.pci_dev* %10, i32 4)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = add i64 %12, 144
  %14 = call i32 @inl(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 12
  %17 = icmp ne i32 %16, 703710
  br i1 %17, label %18, label %37

18:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %31, %18
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 128
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call i32 @pci_read_config_word(%struct.pci_dev* %24, i32 120, i32* %8)
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 511
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = call i32 @udelay(i32 15)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %20

34:                                               ; preds = %20
  %35 = load i32, i32* %9, align 4
  %36 = sdiv i32 %35, 128
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %1
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 511
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %40, 77
  %42 = sdiv i32 %41, 192
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ult i64 %44, 40
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 33, i32* %2, align 4
  br label %56

47:                                               ; preds = %37
  %48 = load i64, i64* %4, align 8
  %49 = icmp ult i64 %48, 45
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 40, i32* %2, align 4
  br label %56

51:                                               ; preds = %47
  %52 = load i64, i64* %4, align 8
  %53 = icmp ult i64 %52, 55
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 50, i32* %2, align 4
  br label %56

55:                                               ; preds = %51
  store i32 66, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %54, %50, %46
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
