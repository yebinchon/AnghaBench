; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_get_vcpu_asce.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_get_vcpu_asce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64*, i32 }
%union.asce = type { i64 }
%struct.psw_bits = type { i32, i32 }

@GACC_IFETCH = common dso_local global i32 0, align 4
@PROT_TYPE_ALC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %union.asce*, i64, i32, i32)* @get_vcpu_asce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vcpu_asce(%struct.kvm_vcpu* %0, %union.asce* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca %union.asce*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.psw_bits, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store %union.asce* %1, %union.asce** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @psw_bits(i32 %19)
  %21 = bitcast %struct.psw_bits* %13 to i64*
  store i64 %20, i64* %21, align 4
  %22 = getelementptr inbounds %struct.psw_bits, %struct.psw_bits* %13, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %5
  %26 = load %union.asce*, %union.asce** %8, align 8
  %27 = bitcast %union.asce* %26 to i64*
  store i64 0, i64* %27, align 8
  %28 = load %union.asce*, %union.asce** %8, align 8
  %29 = bitcast %union.asce* %28 to i32*
  store i32 1, i32* %29, align 8
  store i32 0, i32* %6, align 4
  br label %95

30:                                               ; preds = %5
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @GACC_IFETCH, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.psw_bits, %struct.psw_bits* %13, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 130
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.psw_bits, %struct.psw_bits* %13, i32 0, i32 0
  store i32 129, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %34, %30
  %41 = getelementptr inbounds %struct.psw_bits, %struct.psw_bits* %13, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %94 [
    i32 129, label %43
    i32 128, label %54
    i32 130, label %65
    i32 131, label %76
  ]

43:                                               ; preds = %40
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = load %union.asce*, %union.asce** %8, align 8
  %53 = bitcast %union.asce* %52 to i64*
  store i64 %51, i64* %53, align 8
  store i32 0, i32* %6, align 4
  br label %95

54:                                               ; preds = %40
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 7
  %62 = load i64, i64* %61, align 8
  %63 = load %union.asce*, %union.asce** %8, align 8
  %64 = bitcast %union.asce* %63 to i64*
  store i64 %62, i64* %64, align 8
  store i32 0, i32* %6, align 4
  br label %95

65:                                               ; preds = %40
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 13
  %73 = load i64, i64* %72, align 8
  %74 = load %union.asce*, %union.asce** %8, align 8
  %75 = bitcast %union.asce* %74 to i64*
  store i64 %73, i64* %75, align 8
  store i32 0, i32* %6, align 4
  br label %95

76:                                               ; preds = %40
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %78 = load %union.asce*, %union.asce** %8, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @ar_translation(%struct.kvm_vcpu* %77, %union.asce* %78, i32 %79, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i64, i64* %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @PROT_TYPE_ALC, align 4
  %91 = call i32 @trans_exc(%struct.kvm_vcpu* %85, i32 %86, i64 %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %6, align 4
  br label %95

92:                                               ; preds = %76
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %6, align 4
  br label %95

94:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %94, %92, %84, %65, %54, %43, %25
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i64 @psw_bits(i32) #1

declare dso_local i32 @ar_translation(%struct.kvm_vcpu*, %union.asce*, i32, i32) #1

declare dso_local i32 @trans_exc(%struct.kvm_vcpu*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
