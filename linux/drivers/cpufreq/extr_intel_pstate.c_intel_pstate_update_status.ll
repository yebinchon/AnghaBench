; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@intel_pstate_driver = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@intel_pstate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@intel_cpufreq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @intel_pstate_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pstate_update_status(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 3
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = load i32*, i32** @intel_pstate_driver, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @intel_pstate_unregister_driver()
  br label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %18, %17 ], [ %21, %19 ]
  store i32 %23, i32* %3, align 4
  br label %75

24:                                               ; preds = %9, %2
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %25, 6
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** @intel_pstate_driver, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32*, i32** @intel_pstate_driver, align 8
  %37 = icmp eq i32* %36, @intel_pstate
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %75

39:                                               ; preds = %35
  %40 = call i32 (...) @intel_pstate_unregister_driver()
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %75

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %32
  %47 = call i32 @intel_pstate_register_driver(i32* @intel_pstate)
  store i32 %47, i32* %3, align 4
  br label %75

48:                                               ; preds = %27, %24
  %49 = load i64, i64* %5, align 8
  %50 = icmp eq i64 %49, 7
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = load i8*, i8** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %51
  %57 = load i32*, i32** @intel_pstate_driver, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i32*, i32** @intel_pstate_driver, align 8
  %61 = icmp eq i32* %60, @intel_cpufreq
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %75

63:                                               ; preds = %59
  %64 = call i32 (...) @intel_pstate_unregister_driver()
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %75

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %56
  %71 = call i32 @intel_pstate_register_driver(i32* @intel_cpufreq)
  store i32 %71, i32* %3, align 4
  br label %75

72:                                               ; preds = %51, %48
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %70, %67, %62, %46, %43, %38, %22
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @intel_pstate_unregister_driver(...) #1

declare dso_local i32 @intel_pstate_register_driver(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
