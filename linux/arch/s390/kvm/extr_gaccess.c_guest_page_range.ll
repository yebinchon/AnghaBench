; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_guest_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_guest_page_range.c"
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
@PAGE_MASK = common dso_local global i64 0, align 8
@PGM_ADDRESSING = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i32, i64*, i64, i32, i32)* @guest_page_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guest_page_range(%struct.kvm_vcpu* %0, i64 %1, i32 %2, i64* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %union.asce, align 4
  %10 = alloca %struct.kvm_vcpu*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__, align 8
  %21 = getelementptr inbounds %union.asce, %union.asce* %9, i32 0, i32 0
  store i32 %5, i32* %21, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i64* %3, i64** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32* %26, i32** %16, align 8
  store i32 0, i32* %18, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %28 = getelementptr inbounds %union.asce, %union.asce* %9, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @low_address_protection_enabled(%struct.kvm_vcpu* %27, i32 %29)
  store i32 %30, i32* %17, align 4
  br label %31

31:                                               ; preds = %106, %7
  %32 = load i64, i64* %14, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %114

34:                                               ; preds = %31
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i64 @kvm_s390_logical_to_effective(%struct.kvm_vcpu* %35, i64 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @GACC_STORE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i64, i64* %11, align 8
  %46 = call i64 @is_low_address(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %50 = load i32, i32* @PGM_PROTECTION, align 4
  %51 = load i64, i64* %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @PROT_TYPE_LA, align 4
  %55 = call i32 @trans_exc(%struct.kvm_vcpu* %49, i32 %50, i64 %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %115

56:                                               ; preds = %44, %41, %34
  %57 = load i64, i64* @PAGE_MASK, align 8
  %58 = load i64, i64* %11, align 8
  %59 = and i64 %58, %57
  store i64 %59, i64* %11, align 8
  %60 = load i32*, i32** %16, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @psw_bits(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %56
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64*, i64** %13, align 8
  %71 = load i32, i32* %15, align 4
  %72 = getelementptr inbounds %union.asce, %union.asce* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @guest_translate(%struct.kvm_vcpu* %68, i64 %69, i64* %70, i32 %73, i32 %71, i32* %19)
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, i32* %18, align 4
  store i32 %78, i32* %8, align 4
  br label %115

79:                                               ; preds = %67
  br label %95

80:                                               ; preds = %56
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @kvm_s390_real_to_abs(%struct.kvm_vcpu* %81, i64 %82)
  %84 = load i64*, i64** %13, align 8
  store i64 %83, i64* %84, align 8
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %86 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i64*, i64** %13, align 8
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @kvm_is_error_gpa(i32 %87, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %80
  %93 = load i32, i32* @PGM_ADDRESSING, align 4
  store i32 %93, i32* %18, align 4
  br label %94

94:                                               ; preds = %92, %80
  br label %95

95:                                               ; preds = %94, %79
  %96 = load i32, i32* %18, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %100 = load i32, i32* %18, align 4
  %101 = load i64, i64* %11, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %19, align 4
  %105 = call i32 @trans_exc(%struct.kvm_vcpu* %99, i32 %100, i64 %101, i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %8, align 4
  br label %115

106:                                              ; preds = %95
  %107 = load i64, i64* @PAGE_SIZE, align 8
  %108 = load i64, i64* %11, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %11, align 8
  %110 = load i64*, i64** %13, align 8
  %111 = getelementptr inbounds i64, i64* %110, i32 1
  store i64* %111, i64** %13, align 8
  %112 = load i64, i64* %14, align 8
  %113 = add i64 %112, -1
  store i64 %113, i64* %14, align 8
  br label %31

114:                                              ; preds = %31
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %114, %98, %77, %48
  %116 = load i32, i32* %8, align 4
  ret i32 %116
}

declare dso_local i32 @low_address_protection_enabled(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_s390_logical_to_effective(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @is_low_address(i64) #1

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
