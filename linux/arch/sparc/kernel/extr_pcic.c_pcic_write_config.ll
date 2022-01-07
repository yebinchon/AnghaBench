; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pcic.c_pcic_write_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pcic.c_pcic_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @pcic_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcic_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %107

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %104 [
    i32 1, label %22
    i32 2, label %52
    i32 4, label %89
  ]

22:                                               ; preds = %20
  %23 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %24 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, -4
  %29 = call i32 @pcic_read_config_dword(i64 %25, i32 %26, i32 %28, i32* %12)
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 3
  %33 = mul nsw i32 8, %32
  %34 = shl i32 255, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %30, %35
  %37 = load i32, i32* %11, align 4
  %38 = and i32 255, %37
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 3
  %41 = mul nsw i32 8, %40
  %42 = shl i32 %38, %41
  %43 = or i32 %36, %42
  store i32 %43, i32* %12, align 4
  %44 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %45 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, -4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @pcic_write_config_dword(i64 %46, i32 %47, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %107

52:                                               ; preds = %20
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %107

59:                                               ; preds = %52
  %60 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %61 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, -4
  %66 = call i32 @pcic_read_config_dword(i64 %62, i32 %63, i32 %65, i32* %12)
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, 3
  %70 = mul nsw i32 8, %69
  %71 = shl i32 65535, %70
  %72 = xor i32 %71, -1
  %73 = and i32 %67, %72
  %74 = load i32, i32* %11, align 4
  %75 = and i32 65535, %74
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 3
  %78 = mul nsw i32 8, %77
  %79 = shl i32 %75, %78
  %80 = or i32 %73, %79
  store i32 %80, i32* %12, align 4
  %81 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %82 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %85, -4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @pcic_write_config_dword(i64 %83, i32 %84, i32 %86, i32 %87)
  store i32 %88, i32* %6, align 4
  br label %107

89:                                               ; preds = %20
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, 3
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %107

96:                                               ; preds = %89
  %97 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %98 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @pcic_write_config_dword(i64 %99, i32 %100, i32 %101, i32 %102)
  store i32 %103, i32* %6, align 4
  br label %107

104:                                              ; preds = %20
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %104, %96, %93, %59, %56, %22, %17
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @pcic_read_config_dword(i64, i32, i32, i32*) #1

declare dso_local i32 @pcic_write_config_dword(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
