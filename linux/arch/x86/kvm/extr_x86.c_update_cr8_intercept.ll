; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_update_cr8_intercept.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_update_cr8_intercept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.kvm_vcpu*, i32, i32)* }
%struct.kvm_vcpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @update_cr8_intercept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cr8_intercept(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvm_x86_ops, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32 (%struct.kvm_vcpu*, i32, i32)*, i32 (%struct.kvm_vcpu*, i32, i32)** %6, align 8
  %8 = icmp ne i32 (%struct.kvm_vcpu*, i32, i32)* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %50

10:                                               ; preds = %1
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = call i32 @lapic_in_kernel(%struct.kvm_vcpu* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  br label %50

15:                                               ; preds = %10
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %50

22:                                               ; preds = %15
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %32 = call i32 @kvm_lapic_find_highest_irr(%struct.kvm_vcpu* %31)
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = ashr i32 %38, 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %42 = call i32 @kvm_lapic_get_cr8(%struct.kvm_vcpu* %41)
  store i32 %42, i32* %4, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvm_x86_ops, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32 (%struct.kvm_vcpu*, i32, i32)*, i32 (%struct.kvm_vcpu*, i32, i32)** %44, align 8
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 %45(%struct.kvm_vcpu* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %40, %21, %14, %9
  ret void
}

declare dso_local i32 @lapic_in_kernel(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_lapic_find_highest_irr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_lapic_get_cr8(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
