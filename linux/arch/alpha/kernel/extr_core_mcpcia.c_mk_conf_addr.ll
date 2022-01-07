; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_mcpcia.c_mk_conf_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_mcpcia.c_mk_conf_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i32 }
%struct.pci_controller = type { i64, i32 }

@.str = private unnamed_addr constant [79 x i8] c"mk_conf_addr(bus=%d,devfn=0x%x,hose=%d,where=0x%x, pci_addr=0x%p, type1=0x%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"mk_conf_addr: returning pci_addr 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, %struct.pci_controller*, i64*, i8*)* @mk_conf_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mk_conf_addr(%struct.pci_bus* %0, i32 %1, i32 %2, %struct.pci_controller* %3, i64* %4, i8* %5) #0 {
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_controller*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.pci_controller* %3, %struct.pci_controller** %10, align 8
  store i64* %4, i64** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.pci_controller*, %struct.pci_controller** %10, align 8
  %21 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i64*, i64** %11, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = call i32 @DBG_CFG(i8* %25)
  %27 = load i8*, i8** %12, align 8
  store i8 1, i8* %27, align 1
  %28 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %29 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %32, %6
  %34 = load i32, i32* %13, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, 8
  %38 = or i32 %35, %37
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %38, %39
  %41 = zext i32 %40 to i64
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %14, align 8
  %43 = shl i64 %42, 5
  store i64 %43, i64* %14, align 8
  %44 = load %struct.pci_controller*, %struct.pci_controller** %10, align 8
  %45 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %14, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64*, i64** %11, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i64, i64* %14, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @DBG_CFG(i8* %52)
  ret i32 0
}

declare dso_local i32 @DBG_CFG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
