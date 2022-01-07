; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-footbridge/extr_dc21285.c_dc21285_write_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-footbridge/extr_dc21285.c_dc21285_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@CSR_PCICMD = common dso_local global i32* null, align 8
@PCICMD_ABORT = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @dc21285_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc21285_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @dc21285_base_address(%struct.pci_bus* %14, i32 %15)
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %33 [
    i32 1, label %21
    i32 2, label %25
    i32 4, label %29
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* %11, align 4
  %23 = load i64, i64* %12, align 8
  %24 = load i32, i32* %9, align 4
  call void asm sideeffect "strb\09$0, [$1, $2]", "r,r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %22, i64 %23, i32 %24) #2, !srcloc !2
  br label %33

25:                                               ; preds = %19
  %26 = load i32, i32* %11, align 4
  %27 = load i64, i64* %12, align 8
  %28 = load i32, i32* %9, align 4
  call void asm sideeffect "strh\09$0, [$1, $2]", "r,r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %26, i64 %27, i32 %28) #2, !srcloc !3
  br label %33

29:                                               ; preds = %19
  %30 = load i32, i32* %11, align 4
  %31 = load i64, i64* %12, align 8
  %32 = load i32, i32* %9, align 4
  call void asm sideeffect "str\09$0, [$1, $2]", "r,r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %30, i64 %31, i32 %32) #2, !srcloc !4
  br label %33

33:                                               ; preds = %19, %29, %25, %21
  br label %34

34:                                               ; preds = %33, %5
  %35 = load i32*, i32** @CSR_PCICMD, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @PCICMD_ABORT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @PCICMD_ABORT, align 4
  %44 = or i32 65535, %43
  %45 = and i32 %42, %44
  %46 = load i32*, i32** @CSR_PCICMD, align 8
  store i32 %45, i32* %46, align 4
  store i32 -1, i32* %6, align 4
  br label %49

47:                                               ; preds = %34
  %48 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %41
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i64 @dc21285_base_address(%struct.pci_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 572}
!3 = !{i32 677}
!4 = !{i32 782}
