; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_guest_translate_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_guest_translate_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%union.asce = type { i32 }
%struct.TYPE_6__ = type { i64 }

@GACC_STORE = common dso_local global i32 0, align 4
@PGM_PROTECTION = common dso_local global i32 0, align 4
@PROT_TYPE_LA = common dso_local global i32 0, align 4
@PGM_ADDRESSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @guest_translate_address(%struct.kvm_vcpu* %0, i64 %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %union.asce, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32* %21, i32** %12, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @kvm_s390_logical_to_effective(%struct.kvm_vcpu* %22, i64 %23)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @get_vcpu_asce(%struct.kvm_vcpu* %25, %union.asce* %14, i64 %26, i32 %27, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %6, align 4
  br label %108

34:                                               ; preds = %5
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @is_low_address(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %40 = getelementptr inbounds %union.asce, %union.asce* %14, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @low_address_protection_enabled(%struct.kvm_vcpu* %39, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @GACC_STORE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %50 = load i32, i32* @PGM_PROTECTION, align 4
  %51 = load i64, i64* %8, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @PROT_TYPE_LA, align 4
  %54 = call i32 @trans_exc(%struct.kvm_vcpu* %49, i32 %50, i64 %51, i32 0, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  br label %108

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %38, %34
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @psw_bits(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %56
  %65 = bitcast %union.asce* %14 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %64
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64*, i64** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = getelementptr inbounds %union.asce, %union.asce* %14, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @guest_translate(%struct.kvm_vcpu* %69, i64 %70, i64* %71, i32 %74, i32 %72, i32* %13)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %68
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load i64, i64* %8, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @trans_exc(%struct.kvm_vcpu* %79, i32 %80, i64 %81, i32 0, i32 %82, i32 %83)
  store i32 %84, i32* %6, align 4
  br label %108

85:                                               ; preds = %68
  br label %106

86:                                               ; preds = %64, %56
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i64 @kvm_s390_real_to_abs(%struct.kvm_vcpu* %87, i64 %88)
  %90 = load i64*, i64** %10, align 8
  store i64 %89, i64* %90, align 8
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %92 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i64*, i64** %10, align 8
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @kvm_is_error_gpa(i32 %93, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %86
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load i64, i64* %8, align 8
  %102 = load i32, i32* @PGM_ADDRESSING, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @trans_exc(%struct.kvm_vcpu* %99, i32 %100, i64 %101, i32 %102, i32 %103, i32 0)
  store i32 %104, i32* %6, align 4
  br label %108

105:                                              ; preds = %86
  br label %106

106:                                              ; preds = %105, %85
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %106, %98, %78, %48, %32
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i64 @kvm_s390_logical_to_effective(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @get_vcpu_asce(%struct.kvm_vcpu*, %union.asce*, i64, i32, i32) #1

declare dso_local i64 @is_low_address(i64) #1

declare dso_local i64 @low_address_protection_enabled(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @trans_exc(%struct.kvm_vcpu*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @psw_bits(i32) #1

declare dso_local i32 @guest_translate(%struct.kvm_vcpu*, i64, i64*, i32, i32, i32*) #1

declare dso_local i64 @kvm_s390_real_to_abs(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @kvm_is_error_gpa(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
