; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_kvm_s390_check_low_addr_prot_real.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_kvm_s390_check_low_addr_prot_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%union.ctlreg0 = type { i32 }

@PGM_PROTECTION = common dso_local global i32 0, align 4
@GACC_STORE = common dso_local global i32 0, align 4
@PROT_TYPE_LA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_s390_check_low_addr_prot_real(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.ctlreg0, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = bitcast %union.ctlreg0* %6 to i32*
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = bitcast %union.ctlreg0* %6 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @is_low_address(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %31

24:                                               ; preds = %19
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %26 = load i32, i32* @PGM_PROTECTION, align 4
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* @GACC_STORE, align 4
  %29 = load i32, i32* @PROT_TYPE_LA, align 4
  %30 = call i32 @trans_exc(%struct.kvm_vcpu* %25, i32 %26, i64 %27, i32 0, i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %23
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @is_low_address(i64) #1

declare dso_local i32 @trans_exc(%struct.kvm_vcpu*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
