; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_reset_coproc_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_reset_coproc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.coproc_reg = type { i32, i64, i32 (%struct.kvm_vcpu*, %struct.coproc_reg*)* }

@NR_CP15_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.coproc_reg*, i64, i64*)* @reset_coproc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_coproc_regs(%struct.kvm_vcpu* %0, %struct.coproc_reg* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.coproc_reg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.coproc_reg* %1, %struct.coproc_reg** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %62, %4
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %11
  %16 = load %struct.coproc_reg*, %struct.coproc_reg** %6, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %16, i64 %17
  %19 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %18, i32 0, i32 2
  %20 = load i32 (%struct.kvm_vcpu*, %struct.coproc_reg*)*, i32 (%struct.kvm_vcpu*, %struct.coproc_reg*)** %19, align 8
  %21 = icmp ne i32 (%struct.kvm_vcpu*, %struct.coproc_reg*)* %20, null
  br i1 %21, label %22, label %61

22:                                               ; preds = %15
  %23 = load %struct.coproc_reg*, %struct.coproc_reg** %6, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %23, i64 %24
  %26 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.coproc_reg*, %struct.coproc_reg** %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %28, i64 %29
  %31 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %30, i32 0, i32 2
  %32 = load i32 (%struct.kvm_vcpu*, %struct.coproc_reg*)*, i32 (%struct.kvm_vcpu*, %struct.coproc_reg*)** %31, align 8
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %34 = load %struct.coproc_reg*, %struct.coproc_reg** %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %34, i64 %35
  %37 = call i32 %32(%struct.kvm_vcpu* %33, %struct.coproc_reg* %36)
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %22
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @NR_CP15_REGS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = load i64*, i64** %8, align 8
  %47 = call i32 @set_bit(i32 %45, i64* %46)
  %48 = load %struct.coproc_reg*, %struct.coproc_reg** %6, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %48, i64 %49
  %51 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i64*, i64** %8, align 8
  %58 = call i32 @set_bit(i32 %56, i64* %57)
  br label %59

59:                                               ; preds = %54, %44
  br label %60

60:                                               ; preds = %59, %40, %22
  br label %61

61:                                               ; preds = %60, %15
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %9, align 8
  br label %11

65:                                               ; preds = %11
  ret void
}

declare dso_local i32 @set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
