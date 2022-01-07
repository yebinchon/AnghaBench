; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_inject_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_inject_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_s390_pgm_info = type { i64, i32, i32, i32 }

@PGM_PROTECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i32, i32)* @inject_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inject_fault(%struct.kvm_vcpu* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_s390_pgm_info, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %9, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %9, i32 0, i32 1
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = and i64 %15, -4096
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = add i32 %20, 1
  %22 = shl i32 %21, 10
  %23 = zext i32 %22 to i64
  %24 = or i64 %16, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %13, align 8
  %26 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %9, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %9, i32 0, i32 3
  store i32 0, i32* %27, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @PGM_PROTECTION, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %9, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = or i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 8
  br label %37

37:                                               ; preds = %31, %4
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %39 = call i32 @kvm_s390_inject_prog_irq(%struct.kvm_vcpu* %38, %struct.kvm_s390_pgm_info* %9)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  br label %45

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 1, %44 ]
  ret i32 %46
}

declare dso_local i32 @kvm_s390_inject_prog_irq(%struct.kvm_vcpu*, %struct.kvm_s390_pgm_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
