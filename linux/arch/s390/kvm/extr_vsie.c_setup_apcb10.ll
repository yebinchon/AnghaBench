; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_setup_apcb10.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_setup_apcb10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_s390_apcb1 = type { i32*, i32*, i32* }
%struct.kvm_s390_apcb0 = type { i32*, i32*, i32* }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_s390_apcb1*, i64, %struct.kvm_s390_apcb1*)* @setup_apcb10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_apcb10(%struct.kvm_vcpu* %0, %struct.kvm_s390_apcb1* %1, i64 %2, %struct.kvm_s390_apcb1* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.kvm_s390_apcb1*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.kvm_s390_apcb1*, align 8
  %10 = alloca %struct.kvm_s390_apcb0, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store %struct.kvm_s390_apcb1* %1, %struct.kvm_s390_apcb1** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.kvm_s390_apcb1* %3, %struct.kvm_s390_apcb1** %9, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i64 @read_guest_real(%struct.kvm_vcpu* %11, i64 %12, %struct.kvm_s390_apcb0* %10, i32 24)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %67

18:                                               ; preds = %4
  %19 = load %struct.kvm_s390_apcb1*, %struct.kvm_s390_apcb1** %9, align 8
  %20 = getelementptr inbounds %struct.kvm_s390_apcb1, %struct.kvm_s390_apcb1* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.kvm_s390_apcb0, %struct.kvm_s390_apcb0* %10, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %23, %27
  %29 = load %struct.kvm_s390_apcb1*, %struct.kvm_s390_apcb1** %7, align 8
  %30 = getelementptr inbounds %struct.kvm_s390_apcb1, %struct.kvm_s390_apcb1* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.kvm_s390_apcb1*, %struct.kvm_s390_apcb1** %9, align 8
  %34 = getelementptr inbounds %struct.kvm_s390_apcb1, %struct.kvm_s390_apcb1* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.kvm_s390_apcb0, %struct.kvm_s390_apcb0* %10, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %37, %41
  %43 = sext i32 %42 to i64
  %44 = and i64 %43, -281474976710656
  %45 = trunc i64 %44 to i32
  %46 = load %struct.kvm_s390_apcb1*, %struct.kvm_s390_apcb1** %7, align 8
  %47 = getelementptr inbounds %struct.kvm_s390_apcb1, %struct.kvm_s390_apcb1* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.kvm_s390_apcb1*, %struct.kvm_s390_apcb1** %9, align 8
  %51 = getelementptr inbounds %struct.kvm_s390_apcb1, %struct.kvm_s390_apcb1* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.kvm_s390_apcb0, %struct.kvm_s390_apcb0* %10, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %54, %58
  %60 = sext i32 %59 to i64
  %61 = and i64 %60, -281474976710656
  %62 = trunc i64 %61 to i32
  %63 = load %struct.kvm_s390_apcb1*, %struct.kvm_s390_apcb1** %7, align 8
  %64 = getelementptr inbounds %struct.kvm_s390_apcb1, %struct.kvm_s390_apcb1* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %62, i32* %66, align 4
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %18, %15
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @read_guest_real(%struct.kvm_vcpu*, i64, %struct.kvm_s390_apcb0*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
