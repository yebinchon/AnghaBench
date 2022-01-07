; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_emulate_priv_tlbie.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_emulate_priv_tlbie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { i32 }
%struct.kvm_nested_guest = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i64, i64)* @kvmhv_emulate_priv_tlbie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmhv_emulate_priv_tlbie(%struct.kvm_vcpu* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.kvm*, align 8
  %11 = alloca %struct.kvm_nested_guest*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = load %struct.kvm*, %struct.kvm** %21, align 8
  store %struct.kvm* %22, %struct.kvm** %10, align 8
  store i32 0, i32* %19, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @get_ric(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @get_prs(i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @get_r(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @get_lpid(i64 %29)
  store i32 %30, i32* %17, align 4
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @get_is(i64 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %13, align 4
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %15, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %13, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %47, %41, %38, %35, %4
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %91

56:                                               ; preds = %50, %44
  %57 = load i32, i32* %15, align 4
  switch i32 %57, label %86 [
    i32 0, label %58
    i32 2, label %68
    i32 3, label %82
  ]

58:                                               ; preds = %56
  %59 = load i64, i64* %9, align 8
  %60 = call i64 @get_epn(i64 %59)
  store i64 %60, i64* %18, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @get_ap(i64 %61)
  store i32 %62, i32* %16, align 4
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i64, i64* %18, align 8
  %67 = call i32 @kvmhv_emulate_tlbie_tlb_addr(%struct.kvm_vcpu* %63, i32 %64, i32 %65, i64 %66)
  store i32 %67, i32* %19, align 4
  br label %89

68:                                               ; preds = %56
  %69 = load %struct.kvm*, %struct.kvm** %10, align 8
  %70 = load i32, i32* %17, align 4
  %71 = call %struct.kvm_nested_guest* @kvmhv_get_nested(%struct.kvm* %69, i32 %70, i32 0)
  store %struct.kvm_nested_guest* %71, %struct.kvm_nested_guest** %11, align 8
  %72 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %11, align 8
  %73 = icmp ne %struct.kvm_nested_guest* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %76 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %11, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @kvmhv_emulate_tlbie_lpid(%struct.kvm_vcpu* %75, %struct.kvm_nested_guest* %76, i32 %77)
  %79 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %11, align 8
  %80 = call i32 @kvmhv_put_nested(%struct.kvm_nested_guest* %79)
  br label %81

81:                                               ; preds = %74, %68
  br label %89

82:                                               ; preds = %56
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @kvmhv_emulate_tlbie_all_lpid(%struct.kvm_vcpu* %83, i32 %84)
  br label %89

86:                                               ; preds = %56
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %19, align 4
  br label %89

89:                                               ; preds = %86, %82, %81, %58
  %90 = load i32, i32* %19, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %53
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @get_ric(i32) #1

declare dso_local i32 @get_prs(i32) #1

declare dso_local i32 @get_r(i32) #1

declare dso_local i32 @get_lpid(i64) #1

declare dso_local i32 @get_is(i64) #1

declare dso_local i64 @get_epn(i64) #1

declare dso_local i32 @get_ap(i64) #1

declare dso_local i32 @kvmhv_emulate_tlbie_tlb_addr(%struct.kvm_vcpu*, i32, i32, i64) #1

declare dso_local %struct.kvm_nested_guest* @kvmhv_get_nested(%struct.kvm*, i32, i32) #1

declare dso_local i32 @kvmhv_emulate_tlbie_lpid(%struct.kvm_vcpu*, %struct.kvm_nested_guest*, i32) #1

declare dso_local i32 @kvmhv_put_nested(%struct.kvm_nested_guest*) #1

declare dso_local i32 @kvmhv_emulate_tlbie_all_lpid(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
