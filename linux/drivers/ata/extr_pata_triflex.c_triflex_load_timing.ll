; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_triflex.c_triflex_load_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_triflex.c_triflex_load_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i64 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32)* @triflex_load_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @triflex_load_timing(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.pci_dev* @to_pci_dev(i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 116, i32 112
  store i32 %24, i32* %11, align 4
  %25 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %26 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @pci_read_config_dword(%struct.pci_dev* %30, i32 %31, i32* %10)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %44 [
    i32 136, label %35
    i32 137, label %36
    i32 138, label %37
    i32 128, label %38
    i32 129, label %38
    i32 130, label %38
    i32 131, label %39
    i32 132, label %40
    i32 133, label %41
    i32 134, label %42
    i32 135, label %43
  ]

35:                                               ; preds = %3
  store i32 259, i32* %8, align 4
  br label %46

36:                                               ; preds = %3
  store i32 515, i32* %8, align 4
  br label %46

37:                                               ; preds = %3
  store i32 2056, i32* %8, align 4
  br label %46

38:                                               ; preds = %3, %3, %3
  store i32 3855, i32* %8, align 4
  br label %46

39:                                               ; preds = %3
  store i32 514, i32* %8, align 4
  br label %46

40:                                               ; preds = %3
  store i32 516, i32* %8, align 4
  br label %46

41:                                               ; preds = %3
  store i32 1028, i32* %8, align 4
  br label %46

42:                                               ; preds = %3
  store i32 1288, i32* %8, align 4
  br label %46

43:                                               ; preds = %3
  store i32 2056, i32* %8, align 4
  br label %46

44:                                               ; preds = %3
  %45 = call i32 (...) @BUG()
  br label %46

46:                                               ; preds = %44, %43, %42, %41, %40, %39, %38, %37, %36, %35
  %47 = load i32, i32* %12, align 4
  %48 = mul i32 16, %47
  %49 = shl i32 65535, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %12, align 4
  %55 = mul i32 16, %54
  %56 = shl i32 %53, %55
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %46
  %63 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @pci_write_config_dword(%struct.pci_dev* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %46
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
