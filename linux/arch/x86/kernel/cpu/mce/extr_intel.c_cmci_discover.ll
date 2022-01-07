; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_intel.c_cmci_discover.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_intel.c_cmci_discover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@mce_banks_owned = common dso_local global i32 0, align 4
@cmci_discover_lock = common dso_local global i32 0, align 4
@mce_banks_ce_disabled = common dso_local global i64* null, align 8
@MCI_CTL2_CMCI_EN = common dso_local global i32 0, align 4
@mce_poll_banks = common dso_local global i32* null, align 8
@mca_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MCI_CTL2_CMCI_THRESHOLD_MASK = common dso_local global i32 0, align 4
@CMCI_THRESHOLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"bios_cmci_threshold: Some banks do not have valid thresholds set\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"bios_cmci_threshold: Make sure your BIOS supports this boot option\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cmci_discover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmci_discover(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = call i64* @this_cpu_ptr(i32* @mce_banks_owned)
  %10 = bitcast i64* %9 to i8*
  %11 = bitcast i8* %10 to i64*
  store i64* %11, i64** %3, align 8
  store i32 0, i32* %6, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @raw_spin_lock_irqsave(i32* @cmci_discover_lock, i64 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %114, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %117

18:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i64*, i64** %3, align 8
  %21 = call i64 @test_bit(i32 %19, i64* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %114

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = load i64*, i64** @mce_banks_ce_disabled, align 8
  %27 = call i64 @test_bit(i32 %25, i64* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %114

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @MSR_IA32_MCx_CTL2(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @rdmsrl(i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @MCI_CTL2_CMCI_EN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = load i64*, i64** %3, align 8
  %42 = call i32 @clear_bit(i32 %40, i64* %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32*, i32** @mce_poll_banks, align 8
  %45 = call i64* @this_cpu_ptr(i32* %44)
  %46 = call i32 @__clear_bit(i32 %43, i64* %45)
  br label %114

47:                                               ; preds = %30
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @MCI_CTL2_CMCI_THRESHOLD_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @CMCI_THRESHOLD, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %68

58:                                               ; preds = %47
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @MCI_CTL2_CMCI_THRESHOLD_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  store i32 1, i32* %8, align 4
  %64 = load i32, i32* @CMCI_THRESHOLD, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %63, %58
  br label %68

68:                                               ; preds = %67, %50
  %69 = load i32, i32* @MCI_CTL2_CMCI_EN, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @MSR_IA32_MCx_CTL2(i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @wrmsrl(i32 %73, i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @MSR_IA32_MCx_CTL2(i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @rdmsrl(i32 %77, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @MCI_CTL2_CMCI_EN, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %68
  %85 = load i32, i32* %5, align 4
  %86 = load i64*, i64** %3, align 8
  %87 = call i32 @set_bit(i32 %85, i64* %86)
  %88 = load i32, i32* %5, align 4
  %89 = load i32*, i32** @mce_poll_banks, align 8
  %90 = call i64* @this_cpu_ptr(i32* %89)
  %91 = call i32 @__clear_bit(i32 %88, i64* %90)
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %84
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @MCI_CTL2_CMCI_THRESHOLD_MASK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 1, i32* %6, align 4
  br label %103

103:                                              ; preds = %102, %97, %94, %84
  br label %113

104:                                              ; preds = %68
  %105 = load i32, i32* %5, align 4
  %106 = load i32*, i32** @mce_poll_banks, align 8
  %107 = call i64* @this_cpu_ptr(i32* %106)
  %108 = call i64 @test_bit(i32 %105, i64* %107)
  %109 = icmp ne i64 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 @WARN_ON(i32 %111)
  br label %113

113:                                              ; preds = %104, %103
  br label %114

114:                                              ; preds = %113, %39, %29, %23
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %14

117:                                              ; preds = %14
  %118 = load i64, i64* %4, align 8
  %119 = call i32 @raw_spin_unlock_irqrestore(i32* @cmci_discover_lock, i64 %118)
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = call i32 @pr_info_once(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %127 = call i32 @pr_info_once(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %122, %117
  ret void
}

declare dso_local i64* @this_cpu_ptr(i32*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @MSR_IA32_MCx_CTL2(i32) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @__clear_bit(i32, i64*) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_info_once(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
