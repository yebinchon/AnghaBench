; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_smp.c_pnv_smp_kick_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_smp.c_pnv_smp_kick_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@generic_secondary_smp_init = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@paca_ptrs = common dso_local global %struct.TYPE_2__** null, align 8
@FW_FEATURE_OPAL = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"OPAL Error %ld querying CPU %d state\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@OPAL_THREAD_STARTED = common dso_local global i64 0, align 8
@OPAL_THREAD_INACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"OPAL: Starting CPU %d (HW 0x%x)...\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"OPAL Error %ld starting CPU %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"OPAL: CPU %d (HW 0x%x) is unavailable (status %d)...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pnv_smp_kick_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_smp_kick_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @generic_secondary_smp_init, align 4
  %9 = call i32 @ppc_function_entry(i32 %8)
  %10 = call i64 @__pa(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @nr_cpu_ids, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %85

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @get_hard_smp_processor_id(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @paca_ptrs, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @FW_FEATURE_OPAL, align 4
  %33 = call i32 @firmware_has_feature(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %20
  br label %82

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @opal_query_cpu_status(i32 %37, i64* %7)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @OPAL_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %43, i32 %44)
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %85

48:                                               ; preds = %36
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @OPAL_THREAD_STARTED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %82

53:                                               ; preds = %48
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @OPAL_THREAD_INACTIVE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i8*, i32, i32, ...) @pr_devel(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @opal_start_cpu(i32 %61, i64 %62)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @OPAL_SUCCESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %57
  %68 = load i64, i64* %6, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %68, i32 %69)
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %85

73:                                               ; preds = %57
  br label %81

74:                                               ; preds = %53
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i64, i64* %7, align 8
  %78 = call i32 (i8*, i32, i32, ...) @pr_devel(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %75, i32 %76, i64 %77)
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %85

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %52, %35
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @smp_generic_kick_cpu(i32 %83)
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %74, %67, %42, %17
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @__pa(i32) #1

declare dso_local i32 @ppc_function_entry(i32) #1

declare dso_local i32 @get_hard_smp_processor_id(i32) #1

declare dso_local i32 @firmware_has_feature(i32) #1

declare dso_local i64 @opal_query_cpu_status(i32, i64*) #1

declare dso_local i32 @pr_warn(i8*, i64, i32) #1

declare dso_local i32 @pr_devel(i8*, i32, i32, ...) #1

declare dso_local i64 @opal_start_cpu(i32, i64) #1

declare dso_local i32 @smp_generic_kick_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
