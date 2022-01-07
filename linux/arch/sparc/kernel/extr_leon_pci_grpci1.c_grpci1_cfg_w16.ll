; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci_grpci1.c_grpci1_cfg_w16.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci_grpci1.c_grpci1_cfg_w16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grpci1_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grpci1_priv*, i32, i32, i32, i32)* @grpci1_cfg_w16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grpci1_cfg_w16(%struct.grpci1_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.grpci1_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.grpci1_priv* %0, %struct.grpci1_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %53

20:                                               ; preds = %5
  %21 = load %struct.grpci1_priv*, %struct.grpci1_priv** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = and i32 %24, -4
  %26 = call i32 @grpci1_cfg_r32(%struct.grpci1_priv* %21, i32 %22, i32 %23, i32 %25, i32* %13)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %6, align 4
  br label %53

31:                                               ; preds = %20
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 3
  %35 = mul nsw i32 8, %34
  %36 = shl i32 65535, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %32, %37
  %39 = load i32, i32* %11, align 4
  %40 = and i32 65535, %39
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 3
  %43 = mul nsw i32 8, %42
  %44 = shl i32 %40, %43
  %45 = or i32 %38, %44
  store i32 %45, i32* %13, align 4
  %46 = load %struct.grpci1_priv*, %struct.grpci1_priv** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, -4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @grpci1_cfg_w32(%struct.grpci1_priv* %46, i32 %47, i32 %48, i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %31, %29, %17
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @grpci1_cfg_r32(%struct.grpci1_priv*, i32, i32, i32, i32*) #1

declare dso_local i32 @grpci1_cfg_w32(%struct.grpci1_priv*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
