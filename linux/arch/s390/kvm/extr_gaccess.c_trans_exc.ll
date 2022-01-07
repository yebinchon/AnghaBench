; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_trans_exc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_trans_exc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.kvm_s390_pgm_info }
%struct.TYPE_4__ = type { i32 }
%struct.kvm_s390_pgm_info = type { i32, i32, i32 }
%struct.trans_exc_code_bits = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@GACC_STORE = common dso_local global i32 0, align 4
@FSI_STORE = common dso_local global i32 0, align 4
@FSI_FETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i64, i32, i32, i32)* @trans_exc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trans_exc(%struct.kvm_vcpu* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.kvm_s390_pgm_info*, align 8
  %14 = alloca %struct.trans_exc_code_bits*, align 8
  %15 = alloca %struct.TYPE_6__, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store %struct.kvm_s390_pgm_info* %18, %struct.kvm_s390_pgm_info** %13, align 8
  %19 = load %struct.kvm_s390_pgm_info*, %struct.kvm_s390_pgm_info** %13, align 8
  %20 = call i32 @memset(%struct.kvm_s390_pgm_info* %19, i32 0, i32 12)
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.kvm_s390_pgm_info*, %struct.kvm_s390_pgm_info** %13, align 8
  %23 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.kvm_s390_pgm_info*, %struct.kvm_s390_pgm_info** %13, align 8
  %25 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %24, i32 0, i32 2
  %26 = bitcast i32* %25 to %struct.trans_exc_code_bits*
  store %struct.trans_exc_code_bits* %26, %struct.trans_exc_code_bits** %14, align 8
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %79 [
    i32 137, label %28
    i32 142, label %46
    i32 138, label %46
    i32 136, label %46
    i32 135, label %46
    i32 134, label %46
    i32 133, label %46
    i32 144, label %75
    i32 143, label %75
    i32 140, label %75
    i32 141, label %75
    i32 139, label %75
  ]

28:                                               ; preds = %6
  %29 = load i32, i32* %12, align 4
  switch i32 %29, label %45 [
    i32 130, label %30
    i32 128, label %33
    i32 129, label %36
    i32 132, label %39
    i32 131, label %42
  ]

30:                                               ; preds = %28
  %31 = load %struct.trans_exc_code_bits*, %struct.trans_exc_code_bits** %14, align 8
  %32 = getelementptr inbounds %struct.trans_exc_code_bits, %struct.trans_exc_code_bits* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  br label %33

33:                                               ; preds = %28, %30
  %34 = load %struct.trans_exc_code_bits*, %struct.trans_exc_code_bits** %14, align 8
  %35 = getelementptr inbounds %struct.trans_exc_code_bits, %struct.trans_exc_code_bits* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  br label %45

36:                                               ; preds = %28
  %37 = load %struct.trans_exc_code_bits*, %struct.trans_exc_code_bits** %14, align 8
  %38 = getelementptr inbounds %struct.trans_exc_code_bits, %struct.trans_exc_code_bits* %37, i32 0, i32 2
  store i32 1, i32* %38, align 8
  br label %45

39:                                               ; preds = %28
  %40 = load %struct.trans_exc_code_bits*, %struct.trans_exc_code_bits** %14, align 8
  %41 = getelementptr inbounds %struct.trans_exc_code_bits, %struct.trans_exc_code_bits* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %28, %39
  %43 = load %struct.trans_exc_code_bits*, %struct.trans_exc_code_bits** %14, align 8
  %44 = getelementptr inbounds %struct.trans_exc_code_bits, %struct.trans_exc_code_bits* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %28, %42, %36, %33
  br label %46

46:                                               ; preds = %6, %6, %6, %6, %6, %6, %45
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @PAGE_SHIFT, align 8
  %49 = lshr i64 %47, %48
  %50 = load %struct.trans_exc_code_bits*, %struct.trans_exc_code_bits** %14, align 8
  %51 = getelementptr inbounds %struct.trans_exc_code_bits, %struct.trans_exc_code_bits* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @GACC_STORE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @FSI_STORE, align 4
  br label %59

57:                                               ; preds = %46
  %58 = load i32, i32* @FSI_FETCH, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load %struct.trans_exc_code_bits*, %struct.trans_exc_code_bits** %14, align 8
  %62 = getelementptr inbounds %struct.trans_exc_code_bits, %struct.trans_exc_code_bits* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @psw_bits(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.trans_exc_code_bits*, %struct.trans_exc_code_bits** %14, align 8
  %74 = getelementptr inbounds %struct.trans_exc_code_bits, %struct.trans_exc_code_bits* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %6, %6, %6, %6, %6, %59
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.kvm_s390_pgm_info*, %struct.kvm_s390_pgm_info** %13, align 8
  %78 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %6, %75
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i32 @memset(%struct.kvm_s390_pgm_info*, i32, i32) #1

declare dso_local i32 @psw_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
