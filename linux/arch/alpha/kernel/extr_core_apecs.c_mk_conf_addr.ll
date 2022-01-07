; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_apecs.c_mk_conf_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_apecs.c_mk_conf_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@.str = private unnamed_addr constant [77 x i8] c"mk_conf_addr(bus=%d ,device_fn=0x%x, where=0x%x, pci_addr=0x%p, type1=0x%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"mk_conf_addr: device (%d) > 20, returning -1\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"mk_conf_addr: returning pci_addr 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i64*, i8*)* @mk_conf_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mk_conf_addr(%struct.pci_bus* %0, i32 %1, i32 %2, i64* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i64*, i64** %10, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @DBGC(i8* %22)
  %24 = load i32, i32* %13, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = lshr i32 %27, 3
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp sgt i32 %29, 20
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @DBGC(i8* %34)
  store i32 -1, i32* %6, align 4
  br label %59

36:                                               ; preds = %26
  %37 = load i8*, i8** %11, align 8
  store i8 0, i8* %37, align 1
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 %38, 8
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %39, %40
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %12, align 8
  br label %53

43:                                               ; preds = %5
  %44 = load i8*, i8** %11, align 8
  store i8 1, i8* %44, align 1
  %45 = load i32, i32* %13, align 4
  %46 = shl i32 %45, 16
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 %46, %48
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %49, %50
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %12, align 8
  br label %53

53:                                               ; preds = %43, %36
  %54 = load i64, i64* %12, align 8
  %55 = load i64*, i64** %10, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i64, i64* %12, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @DBGC(i8* %57)
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %53, %31
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @DBGC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
