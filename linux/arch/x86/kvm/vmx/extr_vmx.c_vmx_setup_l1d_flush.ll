; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_setup_l1d_flush.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_setup_l1d_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@X86_BUG_L1TF = common dso_local global i32 0, align 4
@VMENTER_L1D_FLUSH_NOT_REQUIRED = common dso_local global i32 0, align 4
@l1tf_vmx_mitigation = common dso_local global i32 0, align 4
@enable_ept = common dso_local global i32 0, align 4
@VMENTER_L1D_FLUSH_EPT_DISABLED = common dso_local global i32 0, align 4
@X86_FEATURE_ARCH_CAPABILITIES = common dso_local global i32 0, align 4
@MSR_IA32_ARCH_CAPABILITIES = common dso_local global i32 0, align 4
@ARCH_CAP_SKIP_VMENTRY_L1DFLUSH = common dso_local global i32 0, align 4
@VMENTER_L1D_FLUSH_AUTO = common dso_local global i32 0, align 4
@l1tf_mitigation = common dso_local global i32 0, align 4
@VMENTER_L1D_FLUSH_NEVER = common dso_local global i32 0, align 4
@VMENTER_L1D_FLUSH_COND = common dso_local global i32 0, align 4
@VMENTER_L1D_FLUSH_ALWAYS = common dso_local global i32 0, align 4
@vmx_l1d_flush_pages = common dso_local global i64 0, align 8
@X86_FEATURE_FLUSH_L1D = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@L1D_CACHE_ORDER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@vmx_l1d_should_flush = common dso_local global i32 0, align 4
@vmx_l1d_flush_cond = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vmx_setup_l1d_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_setup_l1d_flush(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @X86_BUG_L1TF, align 4
  %8 = call i32 @boot_cpu_has_bug(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @VMENTER_L1D_FLUSH_NOT_REQUIRED, align 4
  store i32 %11, i32* @l1tf_vmx_mitigation, align 4
  store i32 0, i32* %2, align 4
  br label %112

12:                                               ; preds = %1
  %13 = load i32, i32* @enable_ept, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @VMENTER_L1D_FLUSH_EPT_DISABLED, align 4
  store i32 %16, i32* @l1tf_vmx_mitigation, align 4
  store i32 0, i32* %2, align 4
  br label %112

17:                                               ; preds = %12
  %18 = load i32, i32* @X86_FEATURE_ARCH_CAPABILITIES, align 4
  %19 = call i64 @boot_cpu_has(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i32, i32* @MSR_IA32_ARCH_CAPABILITIES, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @rdmsrl(i32 %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ARCH_CAP_SKIP_VMENTRY_L1DFLUSH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @VMENTER_L1D_FLUSH_NOT_REQUIRED, align 4
  store i32 %30, i32* @l1tf_vmx_mitigation, align 4
  store i32 0, i32* %2, align 4
  br label %112

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @VMENTER_L1D_FLUSH_AUTO, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32, i32* @l1tf_mitigation, align 4
  switch i32 %37, label %44 [
    i32 128, label %38
    i32 131, label %40
    i32 133, label %40
    i32 132, label %40
    i32 130, label %42
    i32 129, label %42
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* @VMENTER_L1D_FLUSH_NEVER, align 4
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %36, %36, %36
  %41 = load i32, i32* @VMENTER_L1D_FLUSH_COND, align 4
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %36, %36
  %43 = load i32, i32* @VMENTER_L1D_FLUSH_ALWAYS, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %36, %42, %40, %38
  br label %51

45:                                               ; preds = %32
  %46 = load i32, i32* @l1tf_mitigation, align 4
  %47 = icmp eq i32 %46, 129
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @VMENTER_L1D_FLUSH_ALWAYS, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %45
  br label %51

51:                                               ; preds = %50, %44
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @VMENTER_L1D_FLUSH_NEVER, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %94

55:                                               ; preds = %51
  %56 = load i64, i64* @vmx_l1d_flush_pages, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %94, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @X86_FEATURE_FLUSH_L1D, align 4
  %60 = call i64 @boot_cpu_has(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %94, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = load i32, i32* @L1D_CACHE_ORDER, align 4
  %65 = call %struct.page* @alloc_pages(i32 %63, i32 %64)
  store %struct.page* %65, %struct.page** %4, align 8
  %66 = load %struct.page*, %struct.page** %4, align 8
  %67 = icmp ne %struct.page* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %112

71:                                               ; preds = %62
  %72 = load %struct.page*, %struct.page** %4, align 8
  %73 = call i64 @page_address(%struct.page* %72)
  store i64 %73, i64* @vmx_l1d_flush_pages, align 8
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %90, %71
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @L1D_CACHE_ORDER, align 4
  %77 = shl i32 1, %76
  %78 = icmp ult i32 %75, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load i64, i64* @vmx_l1d_flush_pages, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = mul i32 %81, %82
  %84 = zext i32 %83 to i64
  %85 = add nsw i64 %80, %84
  %86 = load i32, i32* %5, align 4
  %87 = add i32 %86, 1
  %88 = load i32, i32* @PAGE_SIZE, align 4
  %89 = call i32 @memset(i64 %85, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %5, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %74

93:                                               ; preds = %74
  br label %94

94:                                               ; preds = %93, %58, %55, %51
  %95 = load i32, i32* %3, align 4
  store i32 %95, i32* @l1tf_vmx_mitigation, align 4
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @VMENTER_L1D_FLUSH_NEVER, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 @static_branch_enable(i32* @vmx_l1d_should_flush)
  br label %103

101:                                              ; preds = %94
  %102 = call i32 @static_branch_disable(i32* @vmx_l1d_should_flush)
  br label %103

103:                                              ; preds = %101, %99
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @VMENTER_L1D_FLUSH_COND, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = call i32 @static_branch_enable(i32* @vmx_l1d_flush_cond)
  br label %111

109:                                              ; preds = %103
  %110 = call i32 @static_branch_disable(i32* @vmx_l1d_flush_cond)
  br label %111

111:                                              ; preds = %109, %107
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %68, %29, %15, %10
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @boot_cpu_has_bug(i32) #1

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @static_branch_enable(i32*) #1

declare dso_local i32 @static_branch_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
