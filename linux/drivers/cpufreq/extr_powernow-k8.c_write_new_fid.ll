; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_write_new_fid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_write_new_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernow_k8_data = type { i32, i32, i32 }

@INVALID_FID_MASK = common dso_local global i32 0, align 4
@INVALID_VID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"internal error - overflow on fid write\0A\00", align 1
@MSR_C_LO_VID_SHIFT = common dso_local global i32 0, align 4
@MSR_C_LO_INIT_FID_VID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"writing fid 0x%x, lo 0x%x, hi 0x%x\0A\00", align 1
@PLL_LOCK_CONVERSION = common dso_local global i32 0, align 4
@MSR_FIDVID_CTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"Hardware error - pending bit very stuck - no further pstate changes possible\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"vid change on fid trans, old 0x%x, new 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"fid trans failed, fid 0x%x, curr 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powernow_k8_data*, i32)* @write_new_fid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_new_fid(%struct.powernow_k8_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.powernow_k8_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.powernow_k8_data* %0, %struct.powernow_k8_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %10 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @INVALID_FID_MASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %18 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @INVALID_VID_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16, %2
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %91

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %28 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MSR_C_LO_VID_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @MSR_C_LO_INIT_FID_VID, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %40 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PLL_LOCK_CONVERSION, align 4
  %43 = mul nsw i32 %41, %42
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38, i32 %43)
  br label %45

45:                                               ; preds = %60, %25
  %46 = load i32, i32* @MSR_FIDVID_CTL, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %49 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PLL_LOCK_CONVERSION, align 4
  %52 = mul nsw i32 %50, %51
  %53 = call i32 @wrmsr(i32 %46, i32 %47, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = icmp sgt i32 %54, 100
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %91

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %62 = call i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %45, label %64

64:                                               ; preds = %60
  %65 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %66 = call i32 @count_off_irt(%struct.powernow_k8_data* %65)
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %69 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %75 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %73, i32 %76)
  store i32 1, i32* %3, align 4
  br label %91

78:                                               ; preds = %64
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %81 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %79, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %87 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %85, i32 %88)
  store i32 1, i32* %3, align 4
  br label %91

90:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %84, %72, %57, %23
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data*) #1

declare dso_local i32 @count_off_irt(%struct.powernow_k8_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
