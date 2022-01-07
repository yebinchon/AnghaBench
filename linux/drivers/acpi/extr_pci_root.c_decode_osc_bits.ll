; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_root.c_decode_osc_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_root.c_decode_osc_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_osc_bit_struct = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"_OSC: %s [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_pci_root*, i8*, i32, %struct.pci_osc_bit_struct*, i32)* @decode_osc_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_osc_bits(%struct.acpi_pci_root* %0, i8* %1, i32 %2, %struct.pci_osc_bit_struct* %3, i32 %4) #0 {
  %6 = alloca %struct.acpi_pci_root*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_osc_bit_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [80 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pci_osc_bit_struct*, align 8
  store %struct.acpi_pci_root* %0, %struct.acpi_pci_root** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.pci_osc_bit_struct* %3, %struct.pci_osc_bit_struct** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %15 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %15, align 16
  store i32 0, i32* %12, align 4
  %16 = load %struct.pci_osc_bit_struct*, %struct.pci_osc_bit_struct** %9, align 8
  store %struct.pci_osc_bit_struct* %16, %struct.pci_osc_bit_struct** %14, align 8
  br label %17

17:                                               ; preds = %50, %5
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.pci_osc_bit_struct*, %struct.pci_osc_bit_struct** %14, align 8
  %24 = getelementptr inbounds %struct.pci_osc_bit_struct, %struct.pci_osc_bit_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %21
  %29 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 80, %34
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %41 = load %struct.pci_osc_bit_struct*, %struct.pci_osc_bit_struct** %14, align 8
  %42 = getelementptr inbounds %struct.pci_osc_bit_struct, %struct.pci_osc_bit_struct* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @snprintf(i8* %32, i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %43)
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %28, %21
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  %53 = load %struct.pci_osc_bit_struct*, %struct.pci_osc_bit_struct** %14, align 8
  %54 = getelementptr inbounds %struct.pci_osc_bit_struct, %struct.pci_osc_bit_struct* %53, i32 1
  store %struct.pci_osc_bit_struct* %54, %struct.pci_osc_bit_struct** %14, align 8
  br label %17

55:                                               ; preds = %17
  %56 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %6, align 8
  %57 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %62 = call i32 @dev_info(i32* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %60, i8* %61)
  ret void
}

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
