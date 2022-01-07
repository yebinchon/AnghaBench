; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_gva_to_gpa.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_gva_to_gpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@cpu_guest_has_segments = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i64*)* @kvm_vz_gva_to_gpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vz_gva_to_gpa(%struct.kvm_vcpu* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %82

18:                                               ; preds = %3
  %19 = load i64, i64* @cpu_guest_has_segments, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = ashr i32 %22, 29
  switch i32 %23, label %45 [
    i32 0, label %24
    i32 1, label %24
    i32 2, label %28
    i32 3, label %28
    i32 4, label %31
    i32 5, label %35
    i32 6, label %38
    i32 7, label %42
  ]

24:                                               ; preds = %21, %21
  %25 = call i32 (...) @read_gc0_segctl2()
  %26 = ashr i32 %25, 16
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %9, align 8
  store i64 67645734912, i64* %10, align 8
  br label %47

28:                                               ; preds = %21, %21
  %29 = call i32 (...) @read_gc0_segctl2()
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %9, align 8
  store i64 67645734912, i64* %10, align 8
  br label %47

31:                                               ; preds = %21
  %32 = call i32 (...) @read_gc0_segctl1()
  %33 = ashr i32 %32, 16
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %9, align 8
  store i64 68182605824, i64* %10, align 8
  br label %47

35:                                               ; preds = %21
  %36 = call i32 (...) @read_gc0_segctl1()
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %9, align 8
  store i64 68182605824, i64* %10, align 8
  br label %47

38:                                               ; preds = %21
  %39 = call i32 (...) @read_gc0_segctl0()
  %40 = ashr i32 %39, 16
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %9, align 8
  store i64 68182605824, i64* %10, align 8
  br label %47

42:                                               ; preds = %21
  %43 = call i32 (...) @read_gc0_segctl0()
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %9, align 8
  store i64 68182605824, i64* %10, align 8
  br label %47

45:                                               ; preds = %21
  %46 = call i32 (...) @unreachable()
  br label %47

47:                                               ; preds = %45, %42, %38, %35, %31, %28, %24
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %49 = load i64, i64* %9, align 8
  %50 = lshr i64 %49, 4
  %51 = and i64 %50, 7
  %52 = load i64, i64* %9, align 8
  %53 = and i64 %52, 8
  %54 = call i64 @is_eva_am_mapped(%struct.kvm_vcpu* %48, i64 %51, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %83

57:                                               ; preds = %47
  %58 = load i64, i64* %9, align 8
  %59 = shl i64 %58, 20
  %60 = load i64, i64* %10, align 8
  %61 = and i64 %59, %60
  store i64 %61, i64* %11, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %10, align 8
  %65 = xor i64 %64, -1
  %66 = and i64 %63, %65
  %67 = load i64, i64* %11, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64*, i64** %7, align 8
  store i64 %69, i64* %70, align 8
  store i32 0, i32* %4, align 4
  br label %88

71:                                               ; preds = %18
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %73, 3221225472
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 536870911
  %78 = sext i32 %77 to i64
  %79 = load i64*, i64** %7, align 8
  store i64 %78, i64* %79, align 8
  store i32 0, i32* %4, align 4
  br label %88

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81, %3
  br label %83

83:                                               ; preds = %82, %56
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64*, i64** %7, align 8
  %87 = call i32 @kvm_vz_guest_tlb_lookup(%struct.kvm_vcpu* %84, i64 %85, i64* %86)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %83, %75, %57
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @read_gc0_segctl2(...) #1

declare dso_local i32 @read_gc0_segctl1(...) #1

declare dso_local i32 @read_gc0_segctl0(...) #1

declare dso_local i32 @unreachable(...) #1

declare dso_local i64 @is_eva_am_mapped(%struct.kvm_vcpu*, i64, i64) #1

declare dso_local i32 @kvm_vz_guest_tlb_lookup(%struct.kvm_vcpu*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
