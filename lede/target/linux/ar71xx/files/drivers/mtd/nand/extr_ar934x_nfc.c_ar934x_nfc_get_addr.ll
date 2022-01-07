; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_get_addr.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar934x_nfc = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar934x_nfc*, i32, i32, i32*, i32*)* @ar934x_nfc_get_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar934x_nfc_get_addr(%struct.ar934x_nfc* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.ar934x_nfc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ar934x_nfc* %0, %struct.ar934x_nfc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 65535
  %18 = shl i32 %17, 16
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %8, align 4
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 15
  store i32 %21, i32* %12, align 4
  br label %69

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %68

25:                                               ; preds = %22
  %26 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %6, align 8
  %27 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 255
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 255
  %35 = shl i32 %34, 8
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = shl i32 %40, 16
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %8, align 4
  %45 = ashr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = shl i32 %46, 24
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  br label %67

50:                                               ; preds = %25
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 4095
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 65535
  %55 = shl i32 %54, 16
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %6, align 8
  %59 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 4
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load i32, i32* %8, align 4
  %64 = ashr i32 %63, 16
  %65 = and i32 %64, 15
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %62, %50
  br label %67

67:                                               ; preds = %66, %30
  br label %68

68:                                               ; preds = %67, %22
  br label %69

69:                                               ; preds = %68, %15
  %70 = load i32, i32* %11, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
