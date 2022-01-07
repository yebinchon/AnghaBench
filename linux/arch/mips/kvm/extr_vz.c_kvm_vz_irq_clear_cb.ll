; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_irq_clear_cb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_irq_clear_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MIPS_EXC_MAX = common dso_local global i32 0, align 4
@kvm_vz_priority_to_irq = common dso_local global i32* null, align 8
@cpu_has_guestctl2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32)* @kvm_vz_irq_clear_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vz_irq_clear_cb(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MIPS_EXC_MAX, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32*, i32** @kvm_vz_priority_to_irq, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %11
  %19 = phi i32 [ %16, %11 ], [ 0, %17 ]
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %55 [
    i32 128, label %21
    i32 131, label %38
    i32 130, label %38
    i32 129, label %38
  ]

21:                                               ; preds = %18
  %22 = load i32, i32* @cpu_has_guestctl2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = call i32 (...) @read_c0_guestctl2()
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 %26, 14
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @clear_c0_guestctl2(i32 %31)
  br label %33

33:                                               ; preds = %30, %24
  br label %37

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @clear_gc0_cause(i32 %35)
  br label %37

37:                                               ; preds = %34, %33
  br label %56

38:                                               ; preds = %18, %18, %18
  %39 = load i32, i32* @cpu_has_guestctl2, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = call i32 (...) @read_c0_guestctl2()
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %43, 14
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @clear_c0_guestctl2(i32 %48)
  br label %50

50:                                               ; preds = %47, %41
  br label %54

51:                                               ; preds = %38
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @clear_gc0_cause(i32 %52)
  br label %54

54:                                               ; preds = %51, %50
  br label %56

55:                                               ; preds = %18
  br label %56

56:                                               ; preds = %55, %54, %37
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @clear_bit(i32 %57, i32* %60)
  ret i32 1
}

declare dso_local i32 @read_c0_guestctl2(...) #1

declare dso_local i32 @clear_c0_guestctl2(i32) #1

declare dso_local i32 @clear_gc0_cause(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
