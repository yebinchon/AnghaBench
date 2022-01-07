; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_param_set_sfb_size.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_param_set_sfb_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CPUM_SF_MIN_SDB = common dso_local global i64 0, align 8
@CPUM_SF_MAX_SDB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%lu,%lu\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"The sampling buffer limits have changed to: min=%lu max=%lu (diag=x%lu)\0A\00", align 1
@CPUM_SF_SDB_DIAG_FACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @param_set_sfb_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @param_set_sfb_size(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  %9 = call i32 (...) @cpum_sf_avail()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %70

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %70

24:                                               ; preds = %17
  %25 = load i64, i64* @CPUM_SF_MIN_SDB, align 8
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* @CPUM_SF_MAX_SDB, align 8
  store i64 %26, i64* %8, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @strchr(i8* %27, i8 signext 44)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @sscanf(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64* %7, i64* %8)
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  br label %38

38:                                               ; preds = %35, %34
  %39 = phi i32 [ 0, %34 ], [ %37, %35 ]
  store i32 %39, i32* %6, align 4
  br label %43

40:                                               ; preds = %24
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @kstrtoul(i8* %41, i32 10, i64* %8)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %38
  %44 = load i64, i64* %7, align 8
  %45 = icmp ult i64 %44, 2
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %8, align 8
  %52 = call i64 (...) @get_num_physpages()
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %46, %43
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %70

62:                                               ; preds = %57
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @sfb_set_limits(i64 %63, i64 %64)
  %66 = load i64, i64* @CPUM_SF_MIN_SDB, align 8
  %67 = load i64, i64* @CPUM_SF_MAX_SDB, align 8
  %68 = load i32, i32* @CPUM_SF_SDB_DIAG_FACTOR, align 4
  %69 = call i32 @pr_info(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %67, i32 %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %62, %60, %21, %11
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @cpum_sf_avail(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @get_num_physpages(...) #1

declare dso_local i32 @sfb_set_limits(i64, i64) #1

declare dso_local i32 @pr_info(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
