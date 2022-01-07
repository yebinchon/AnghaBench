; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_ioapic_read_indirect.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_ioapic_read_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_ioapic = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IOAPIC_NUM_PINS = common dso_local global i64 0, align 8
@IOAPIC_VERSION_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_ioapic*, i64, i64)* @ioapic_read_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ioapic_read_indirect(%struct.kvm_ioapic* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.kvm_ioapic*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_ioapic* %0, %struct.kvm_ioapic** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %11 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %29 [
    i32 128, label %13
    i32 130, label %22
    i32 129, label %22
  ]

13:                                               ; preds = %3
  %14 = load i64, i64* @IOAPIC_NUM_PINS, align 8
  %15 = sub i64 %14, 1
  %16 = and i64 %15, 255
  %17 = shl i64 %16, 16
  %18 = load i32, i32* @IOAPIC_VERSION_ID, align 4
  %19 = and i32 %18, 255
  %20 = sext i32 %19 to i64
  %21 = or i64 %17, %20
  store i64 %21, i64* %7, align 8
  br label %62

22:                                               ; preds = %3, %3
  %23 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 15
  %27 = shl i32 %26, 24
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %7, align 8
  br label %62

29:                                               ; preds = %3
  %30 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 16
  %34 = ashr i32 %33, 1
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @IOAPIC_NUM_PINS, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %41 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  br label %48

47:                                               ; preds = %29
  store i32 -1, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %39
  %49 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %50 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %9, align 4
  %56 = ashr i32 %55, 32
  br label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi i32 [ %56, %54 ], [ %58, %57 ]
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %59, %22, %13
  %63 = load i64, i64* %7, align 8
  ret i64 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
