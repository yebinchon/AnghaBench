; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_intercept.c_kvm_s390_get_ilen.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_intercept.c_kvm_s390_get_ilen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_s390_sie_block* }
%struct.kvm_s390_sie_block = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_s390_get_ilen(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_s390_sie_block*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  store %struct.kvm_s390_sie_block* %8, %struct.kvm_s390_sie_block** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %11, align 8
  %13 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %48 [
    i32 133, label %15
    i32 132, label %15
    i32 130, label %15
    i32 129, label %15
    i32 131, label %15
    i32 128, label %40
  ]

15:                                               ; preds = %1, %1, %1, %1, %1
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %18, align 8
  %20 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 8
  %23 = call i32 @insn_length(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %3, align 8
  %25 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %15
  %30 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %3, align 8
  %31 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 4
  %34 = and i32 %33, 6
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  store i32 4, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %29
  br label %39

39:                                               ; preds = %38, %15
  br label %48

40:                                               ; preds = %1
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %43, align 8
  %45 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 6
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %1, %40, %39
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @insn_length(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
