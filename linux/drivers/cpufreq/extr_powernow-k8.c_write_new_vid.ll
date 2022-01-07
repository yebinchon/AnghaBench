; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_write_new_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_write_new_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernow_k8_data = type { i32, i32 }

@INVALID_FID_MASK = common dso_local global i32 0, align 4
@INVALID_VID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"internal error - overflow on vid write\0A\00", align 1
@MSR_C_LO_VID_SHIFT = common dso_local global i32 0, align 4
@MSR_C_LO_INIT_FID_VID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"writing vid 0x%x, lo 0x%x, hi 0x%x\0A\00", align 1
@STOP_GRANT_5NS = common dso_local global i32 0, align 4
@MSR_FIDVID_CTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"internal error - pending bit very stuck - no further pstate changes possible\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"fid changed on vid trans, old 0x%x new 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"vid trans failed, vid 0x%x, curr 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powernow_k8_data*, i32)* @write_new_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_new_vid(%struct.powernow_k8_data* %0, i32 %1) #0 {
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
  %12 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %13 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @INVALID_FID_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @INVALID_VID_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %2
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %81

25:                                               ; preds = %18
  %26 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %27 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
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
  %39 = load i32, i32* @STOP_GRANT_5NS, align 4
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %52, %25
  %42 = load i32, i32* @MSR_FIDVID_CTL, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @STOP_GRANT_5NS, align 4
  %45 = call i32 @wrmsr(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = icmp sgt i32 %46, 100
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %81

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %54 = call i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %41, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %59 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %65 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %66)
  store i32 1, i32* %3, align 4
  br label %81

68:                                               ; preds = %56
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %71 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %77 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %78)
  store i32 1, i32* %3, align 4
  br label %81

80:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %74, %62, %49, %23
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
