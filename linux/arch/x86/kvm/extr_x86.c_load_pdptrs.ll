; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_load_pdptrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_load_pdptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.kvm_mmu = type { i32* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PFERR_USER_MASK = common dso_local global i32 0, align 4
@PFERR_WRITE_MASK = common dso_local global i32 0, align 4
@PT_PRESENT_MASK = common dso_local global i32 0, align 4
@VCPU_EXREG_PDPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_pdptrs(%struct.kvm_vcpu* %0, %struct.kvm_mmu* %1, i64 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_mmu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_mmu* %1, %struct.kvm_mmu** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = lshr i64 %13, %14
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = and i64 %16, %19
  %21 = lshr i64 %20, 5
  %22 = shl i64 %21, 2
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %11, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %32 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = mul nuw i64 4, %28
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @PFERR_USER_MASK, align 4
  %41 = load i32, i32* @PFERR_WRITE_MASK, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @kvm_read_guest_page_mmu(%struct.kvm_vcpu* %31, %struct.kvm_mmu* %32, i64 %33, i32* %30, i32 %37, i32 %39, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %91

47:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %71, %47
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ARRAY_SIZE(i32* %30)
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %30, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PT_PRESENT_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %30, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %66 = call i32 @pdptr_rsvd_bits(%struct.kvm_vcpu* %65)
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %91

70:                                               ; preds = %60, %52
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %48

74:                                               ; preds = %48
  store i32 1, i32* %10, align 4
  %75 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %76 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @memcpy(i32* %77, i32* %30, i32 8)
  %79 = load i32, i32* @VCPU_EXREG_PDPTR, align 4
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = bitcast i32* %82 to i64*
  %84 = call i32 @__set_bit(i32 %79, i64* %83)
  %85 = load i32, i32* @VCPU_EXREG_PDPTR, align 4
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = bitcast i32* %88 to i64*
  %90 = call i32 @__set_bit(i32 %85, i64* %89)
  br label %91

91:                                               ; preds = %74, %69, %46
  %92 = load i32, i32* %10, align 4
  %93 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %93)
  ret i32 %92
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @kvm_read_guest_page_mmu(%struct.kvm_vcpu*, %struct.kvm_mmu*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @pdptr_rsvd_bits(%struct.kvm_vcpu*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
