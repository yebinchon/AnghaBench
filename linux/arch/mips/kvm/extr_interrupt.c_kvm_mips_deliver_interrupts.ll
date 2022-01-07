; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_interrupt.c_kvm_mips_deliver_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_interrupt.c_kvm_mips_deliver_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (%struct.kvm_vcpu*, i32, i32)*, i64 (%struct.kvm_vcpu*, i32, i32)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@MIPS_EXC_MAX = common dso_local global i32 0, align 4
@kvm_mips_callbacks = common dso_local global %struct.TYPE_4__* null, align 8
@KVM_MIPS_IRQ_CLEAR_ALL_AT_ONCE = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@KVM_MIPS_IRQ_DELIVER_ALL_AT_ONCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_mips_deliver_interrupts(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i64* %10, i64** %5, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i64* %13, i64** %6, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %84

22:                                               ; preds = %17, %2
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @__ffs(i64 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %44, %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MIPS_EXC_MAX, align 4
  %29 = icmp ule i32 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_mips_callbacks, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64 (%struct.kvm_vcpu*, i32, i32)*, i64 (%struct.kvm_vcpu*, i32, i32)** %32, align 8
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i64 %33(%struct.kvm_vcpu* %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load i32, i32* @KVM_MIPS_IRQ_CLEAR_ALL_AT_ONCE, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %53

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i64*, i64** %6, align 8
  %46 = load i32, i32* @BITS_PER_BYTE, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 1
  %52 = call i32 @find_next_bit(i64* %45, i32 %49, i32 %51)
  store i32 %52, i32* %7, align 4
  br label %26

53:                                               ; preds = %42, %26
  %54 = load i64*, i64** %5, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @__ffs(i64 %55)
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %75, %53
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @MIPS_EXC_MAX, align 4
  %60 = icmp ule i32 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_mips_callbacks, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64 (%struct.kvm_vcpu*, i32, i32)*, i64 (%struct.kvm_vcpu*, i32, i32)** %63, align 8
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i64 %64(%struct.kvm_vcpu* %65, i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load i32, i32* @KVM_MIPS_IRQ_DELIVER_ALL_AT_ONCE, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  br label %84

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %61
  %76 = load i64*, i64** %5, align 8
  %77 = load i32, i32* @BITS_PER_BYTE, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, 1
  %83 = call i32 @find_next_bit(i64* %76, i32 %80, i32 %82)
  store i32 %83, i32* %7, align 4
  br label %57

84:                                               ; preds = %21, %73, %57
  ret void
}

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
