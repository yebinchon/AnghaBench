; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_SYSFS_get_fan_speed_current.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_SYSFS_get_fan_speed_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%s/pwm1\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s/pwm1_max\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s: unexpected data.\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"%s: pwm1_max cannot be 0.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @hm_SYSFS_get_fan_speed_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hm_SYSFS_get_fan_speed_current(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i8* @hm_SYSFS_get_syspath_hwmon(i32* %17, i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %109

23:                                               ; preds = %3
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @hc_asprintf(i8** %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @hc_asprintf(i8** %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @hcfree(i8* %28)
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @hc_fopen(i32* %11, i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %23
  %34 = load i32*, i32** %5, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 (i32*, i8*, i8*, ...) @event_log_error(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %35, i32 %37)
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @hcfree(i8* %39)
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @hcfree(i8* %41)
  store i32 -1, i32* %4, align 4
  br label %109

43:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  %44 = call i32 @hc_fscanf(i32* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %12)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = call i32 @hc_fclose(i32* %11)
  %48 = load i32*, i32** %5, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 (i32*, i8*, i8*, ...) @event_log_error(i32* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @hcfree(i8* %51)
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @hcfree(i8* %53)
  store i32 -1, i32* %4, align 4
  br label %109

55:                                               ; preds = %43
  %56 = call i32 @hc_fclose(i32* %11)
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @hc_fopen(i32* %13, i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i32*, i32** %5, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* @errno, align 4
  %64 = call i32 @strerror(i32 %63)
  %65 = call i32 (i32*, i8*, i8*, ...) @event_log_error(i32* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %62, i32 %64)
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @hcfree(i8* %66)
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @hcfree(i8* %68)
  store i32 -1, i32* %4, align 4
  br label %109

70:                                               ; preds = %55
  store i32 0, i32* %14, align 4
  %71 = call i32 @hc_fscanf(i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %14)
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = call i32 @hc_fclose(i32* %13)
  %75 = load i32*, i32** %5, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 (i32*, i8*, i8*, ...) @event_log_error(i32* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %76)
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @hcfree(i8* %78)
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @hcfree(i8* %80)
  store i32 -1, i32* %4, align 4
  br label %109

82:                                               ; preds = %70
  %83 = call i32 @hc_fclose(i32* %13)
  %84 = load i32, i32* %14, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load i32*, i32** %5, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 (i32*, i8*, i8*, ...) @event_log_error(i32* %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %88)
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @hcfree(i8* %90)
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @hcfree(i8* %92)
  store i32 -1, i32* %4, align 4
  br label %109

94:                                               ; preds = %82
  %95 = load i32, i32* %14, align 4
  %96 = sitofp i32 %95 to float
  %97 = fdiv float %96, 1.000000e+02
  store float %97, float* %15, align 4
  %98 = load i32, i32* %12, align 4
  %99 = sitofp i32 %98 to float
  %100 = load float, float* %15, align 4
  %101 = fdiv float %99, %100
  store float %101, float* %16, align 4
  %102 = load float, float* %16, align 4
  %103 = fptosi float %102 to i32
  %104 = load i32*, i32** %7, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @hcfree(i8* %105)
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @hcfree(i8* %107)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %94, %86, %73, %60, %46, %33, %22
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i8* @hm_SYSFS_get_syspath_hwmon(i32*, i32) #1

declare dso_local i32 @hc_asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @hcfree(i8*) #1

declare dso_local i32 @hc_fopen(i32*, i8*, i8*) #1

declare dso_local i32 @event_log_error(i32*, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @hc_fscanf(i32*, i8*, i32*) #1

declare dso_local i32 @hc_fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
