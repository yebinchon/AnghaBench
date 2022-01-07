; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_h_page_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_h_page_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@SZ_4K = common dso_local global i64 0, align 8
@H_ICACHE_INVALIDATE = common dso_local global i64 0, align 8
@H_ICACHE_SYNCHRONIZE = common dso_local global i64 0, align 8
@H_ZERO_PAGE = common dso_local global i64 0, align 8
@H_COPY_PAGE = common dso_local global i64 0, align 8
@H_PAGE_SET_LOANED = common dso_local global i64 0, align 8
@H_PARAMETER = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*, i64, i64, i64)* @kvmppc_h_page_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvmppc_h_page_init(%struct.kvm_vcpu* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* @SZ_4K, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* @SZ_4K, align 8
  %15 = sub i64 %14, 1
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @H_ICACHE_INVALIDATE, align 8
  %18 = load i64, i64* @H_ICACHE_SYNCHRONIZE, align 8
  %19 = or i64 %17, %18
  %20 = load i64, i64* @H_ZERO_PAGE, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @H_COPY_PAGE, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* @H_PAGE_SET_LOANED, align 8
  %25 = or i64 %23, %24
  %26 = xor i64 %25, -1
  %27 = and i64 %16, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i64, i64* @H_PARAMETER, align 8
  store i64 %30, i64* %5, align 8
  br label %86

31:                                               ; preds = %4
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %11, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @H_COPY_PAGE, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %11, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %31
  %47 = load i64, i64* @H_PARAMETER, align 8
  store i64 %47, i64* %5, align 8
  br label %86

48:                                               ; preds = %41, %36
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @H_COPY_PAGE, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @kvmppc_copy_guest(i32 %56, i64 %57, i64 %58, i64 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i64, i64* @H_PARAMETER, align 8
  store i64 %64, i64* %5, align 8
  br label %86

65:                                               ; preds = %53
  br label %84

66:                                               ; preds = %48
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @H_ZERO_PAGE, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %73 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @kvm_clear_guest(i32 %74, i64 %75, i64 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i64, i64* @H_PARAMETER, align 8
  store i64 %81, i64* %5, align 8
  br label %86

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %66
  br label %84

84:                                               ; preds = %83, %65
  %85 = load i64, i64* @H_SUCCESS, align 8
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %84, %80, %63, %46, %29
  %87 = load i64, i64* %5, align 8
  ret i64 %87
}

declare dso_local i32 @kvmppc_copy_guest(i32, i64, i64, i64) #1

declare dso_local i32 @kvm_clear_guest(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
