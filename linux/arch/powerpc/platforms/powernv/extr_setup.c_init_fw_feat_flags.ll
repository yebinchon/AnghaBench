; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_setup.c_init_fw_feat_flags.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_setup.c_init_fw_feat_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"inst-spec-barrier-ori31,31,0\00", align 1
@SEC_FTR_SPEC_BAR_ORI31 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"fw-bcctrl-serialized\00", align 1
@SEC_FTR_BCCTRL_SERIALISED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"inst-l1d-flush-ori30,30,0\00", align 1
@SEC_FTR_L1D_FLUSH_ORI30 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"inst-l1d-flush-trig2\00", align 1
@SEC_FTR_L1D_FLUSH_TRIG2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"fw-l1d-thread-split\00", align 1
@SEC_FTR_L1D_THREAD_PRIV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"fw-count-cache-disabled\00", align 1
@SEC_FTR_COUNT_CACHE_DISABLED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"fw-count-cache-flush-bcctr2,0,0\00", align 1
@SEC_FTR_BCCTR_FLUSH_ASSIST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"needs-count-cache-flush-on-context-switch\00", align 1
@SEC_FTR_FLUSH_COUNT_CACHE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"speculation-policy-favor-security\00", align 1
@SEC_FTR_FAVOUR_SECURITY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"needs-l1d-flush-msr-pr-0-to-1\00", align 1
@SEC_FTR_L1D_FLUSH_PR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"needs-l1d-flush-msr-hv-1-to-0\00", align 1
@SEC_FTR_L1D_FLUSH_HV = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [36 x i8] c"needs-spec-barrier-for-bound-checks\00", align 1
@SEC_FTR_BNDS_CHK_SPEC_BAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*)* @init_fw_feat_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_fw_feat_flags(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %3 = load %struct.device_node*, %struct.device_node** %2, align 8
  %4 = call i64 @fw_feature_is(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @SEC_FTR_SPEC_BAR_ORI31, align 4
  %8 = call i32 @security_ftr_set(i32 %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load %struct.device_node*, %struct.device_node** %2, align 8
  %11 = call i64 @fw_feature_is(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @SEC_FTR_BCCTRL_SERIALISED, align 4
  %15 = call i32 @security_ftr_set(i32 %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load %struct.device_node*, %struct.device_node** %2, align 8
  %18 = call i64 @fw_feature_is(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @SEC_FTR_L1D_FLUSH_ORI30, align 4
  %22 = call i32 @security_ftr_set(i32 %21)
  br label %23

23:                                               ; preds = %20, %16
  %24 = load %struct.device_node*, %struct.device_node** %2, align 8
  %25 = call i64 @fw_feature_is(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @SEC_FTR_L1D_FLUSH_TRIG2, align 4
  %29 = call i32 @security_ftr_set(i32 %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.device_node*, %struct.device_node** %2, align 8
  %32 = call i64 @fw_feature_is(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), %struct.device_node* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @SEC_FTR_L1D_THREAD_PRIV, align 4
  %36 = call i32 @security_ftr_set(i32 %35)
  br label %37

37:                                               ; preds = %34, %30
  %38 = load %struct.device_node*, %struct.device_node** %2, align 8
  %39 = call i64 @fw_feature_is(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), %struct.device_node* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @SEC_FTR_COUNT_CACHE_DISABLED, align 4
  %43 = call i32 @security_ftr_set(i32 %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.device_node*, %struct.device_node** %2, align 8
  %46 = call i64 @fw_feature_is(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), %struct.device_node* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @SEC_FTR_BCCTR_FLUSH_ASSIST, align 4
  %50 = call i32 @security_ftr_set(i32 %49)
  br label %51

51:                                               ; preds = %48, %44
  %52 = load %struct.device_node*, %struct.device_node** %2, align 8
  %53 = call i64 @fw_feature_is(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), %struct.device_node* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @SEC_FTR_FLUSH_COUNT_CACHE, align 4
  %57 = call i32 @security_ftr_set(i32 %56)
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.device_node*, %struct.device_node** %2, align 8
  %60 = call i64 @fw_feature_is(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), %struct.device_node* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @SEC_FTR_FAVOUR_SECURITY, align 4
  %64 = call i32 @security_ftr_clear(i32 %63)
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.device_node*, %struct.device_node** %2, align 8
  %67 = call i64 @fw_feature_is(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), %struct.device_node* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @SEC_FTR_L1D_FLUSH_PR, align 4
  %71 = call i32 @security_ftr_clear(i32 %70)
  br label %72

72:                                               ; preds = %69, %65
  %73 = load %struct.device_node*, %struct.device_node** %2, align 8
  %74 = call i64 @fw_feature_is(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), %struct.device_node* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @SEC_FTR_L1D_FLUSH_HV, align 4
  %78 = call i32 @security_ftr_clear(i32 %77)
  br label %79

79:                                               ; preds = %76, %72
  %80 = load %struct.device_node*, %struct.device_node** %2, align 8
  %81 = call i64 @fw_feature_is(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), %struct.device_node* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @SEC_FTR_BNDS_CHK_SPEC_BAR, align 4
  %85 = call i32 @security_ftr_clear(i32 %84)
  br label %86

86:                                               ; preds = %83, %79
  ret void
}

declare dso_local i64 @fw_feature_is(i8*, i8*, %struct.device_node*) #1

declare dso_local i32 @security_ftr_set(i32) #1

declare dso_local i32 @security_ftr_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
