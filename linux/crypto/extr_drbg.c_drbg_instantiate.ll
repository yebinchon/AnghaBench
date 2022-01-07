; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbg_state = type { i32, i32, i32, i32*, i32, i32* }
%struct.drbg_string = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"DRBG: Initializing DRBG core %d with prediction resistance %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@drbg_cores = common dso_local global i32* null, align 8
@fips_enabled = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"DRBG: Continuing without Jitter RNG\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbg_state*, %struct.drbg_string*, i32, i32)* @drbg_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbg_instantiate(%struct.drbg_state* %0, %struct.drbg_string* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drbg_state*, align 8
  %7 = alloca %struct.drbg_string*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drbg_state* %0, %struct.drbg_state** %6, align 8
  store %struct.drbg_string* %1, %struct.drbg_string** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 @pr_devel(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %16)
  %18 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %19 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %18, i32 0, i32 2
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %22 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %76, label %25

25:                                               ; preds = %4
  %26 = load i32*, i32** @drbg_cores, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %31 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %30, i32 0, i32 5
  store i32* %29, i32** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %34 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %36 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %38 = call i32 @drbg_max_requests(%struct.drbg_state* %37)
  %39 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %40 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %42 = call i32 @drbg_alloc_state(%struct.drbg_state* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %25
  br label %92

46:                                               ; preds = %25
  %47 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %48 = call i32 @drbg_prepare_hrng(%struct.drbg_state* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %97

52:                                               ; preds = %46
  %53 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %54 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @IS_ERR(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %60 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @PTR_ERR(i32* %61)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %64 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %63, i32 0, i32 3
  store i32* null, i32** %64, align 8
  %65 = load i64, i64* @fips_enabled, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67, %58
  br label %97

73:                                               ; preds = %67
  %74 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %52
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %4
  %77 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %78 = load %struct.drbg_string*, %struct.drbg_string** %7, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @drbg_seed(%struct.drbg_state* %77, %struct.drbg_string* %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  br label %97

87:                                               ; preds = %83, %76
  %88 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %89 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %88, i32 0, i32 2
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %5, align 4
  br label %104

92:                                               ; preds = %45
  %93 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %94 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %93, i32 0, i32 2
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %5, align 4
  br label %104

97:                                               ; preds = %86, %72, %51
  %98 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %99 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %98, i32 0, i32 2
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load %struct.drbg_state*, %struct.drbg_state** %6, align 8
  %102 = call i32 @drbg_uninstantiate(%struct.drbg_state* %101)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %97, %92, %87
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @pr_devel(i8*, i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drbg_max_requests(%struct.drbg_state*) #1

declare dso_local i32 @drbg_alloc_state(%struct.drbg_state*) #1

declare dso_local i32 @drbg_prepare_hrng(%struct.drbg_state*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @drbg_seed(%struct.drbg_state*, %struct.drbg_string*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drbg_uninstantiate(%struct.drbg_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
