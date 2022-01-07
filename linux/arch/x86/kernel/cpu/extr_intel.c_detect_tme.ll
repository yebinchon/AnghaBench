; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_intel.c_detect_tme.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_intel.c_detect_tme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }

@detect_tme.tme_activate_cpu0 = internal global i64 0, align 8
@MSR_IA32_TME_ACTIVATE = common dso_local global i32 0, align 4
@mktme_status = common dso_local global i64 0, align 8
@MKTME_UNINITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"x86/tme: configuration is inconsistent between CPUs\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"x86/tme: MKTME is not usable\0A\00", align 1
@MKTME_DISABLED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"x86/tme: not enabled by BIOS\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"x86/tme: enabled by BIOS\0A\00", align 1
@TME_ACTIVATE_POLICY_AES_XTS_128 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"x86/tme: Unknown policy is active: %#llx\0A\00", align 1
@TME_ACTIVATE_CRYPTO_AES_XTS_128 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [62 x i8] c"x86/mktme: No known encryption algorithm is supported: %#llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"x86/mktme: enabled by BIOS\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"x86/mktme: %d KeyIDs available\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"x86/mktme: disabled by BIOS\0A\00", align 1
@MKTME_ENABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @detect_tme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detect_tme(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @MSR_IA32_TME_ACTIVATE, align 4
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @rdmsrl(i32 %8, i64 %9)
  %11 = load i64, i64* @mktme_status, align 8
  %12 = load i64, i64* @MKTME_UNINITIALIZED, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @detect_tme.tme_activate_cpu0, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = call i32 @pr_err_once(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @pr_err_once(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i64, i64* @MKTME_DISABLED, align 8
  store i64 %21, i64* @mktme_status, align 8
  br label %22

22:                                               ; preds = %18, %14
  br label %25

23:                                               ; preds = %1
  %24 = load i64, i64* %3, align 8
  store i64 %24, i64* @detect_tme.tme_activate_cpu0, align 8
  br label %25

25:                                               ; preds = %23, %22
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @TME_ACTIVATE_LOCKED(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @TME_ACTIVATE_ENABLED(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29, %25
  %34 = call i32 (i8*, ...) @pr_info_once(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i64, i64* @MKTME_DISABLED, align 8
  store i64 %35, i64* @mktme_status, align 8
  br label %91

36:                                               ; preds = %29
  %37 = load i64, i64* @mktme_status, align 8
  %38 = load i64, i64* @MKTME_UNINITIALIZED, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %63

41:                                               ; preds = %36
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i64, i64* %3, align 8
  %44 = call i64 @TME_ACTIVATE_POLICY(i64 %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @TME_ACTIVATE_POLICY_AES_XTS_128, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i64, i64* %3, align 8
  %53 = call i64 @TME_ACTIVATE_CRYPTO_ALGS(i64 %52)
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @TME_ACTIVATE_CRYPTO_AES_XTS_128, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i64 %59)
  %61 = load i64, i64* @MKTME_DISABLED, align 8
  store i64 %61, i64* @mktme_status, align 8
  br label %62

62:                                               ; preds = %58, %51
  br label %63

63:                                               ; preds = %62, %40
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @TME_ACTIVATE_KEYID_BITS(i64 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = shl i64 1, %67
  %69 = sub i64 %68, 1
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = call i32 (i8*, ...) @pr_info_once(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %75 = load i32, i32* %7, align 4
  %76 = call i32 (i8*, ...) @pr_info_once(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %75)
  br label %79

77:                                               ; preds = %63
  %78 = call i32 (i8*, ...) @pr_info_once(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i64, i64* @mktme_status, align 8
  %81 = load i64, i64* @MKTME_UNINITIALIZED, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i64, i64* @MKTME_ENABLED, align 8
  store i64 %84, i64* @mktme_status, align 8
  br label %85

85:                                               ; preds = %83, %79
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %88 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %33
  ret void
}

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i32 @pr_err_once(i8*) #1

declare dso_local i32 @TME_ACTIVATE_LOCKED(i64) #1

declare dso_local i32 @TME_ACTIVATE_ENABLED(i64) #1

declare dso_local i32 @pr_info_once(i8*, ...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i64 @TME_ACTIVATE_POLICY(i64) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i64 @TME_ACTIVATE_CRYPTO_ALGS(i64) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @TME_ACTIVATE_KEYID_BITS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
