; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_SYSFS_get_pp_dpm_pcie.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_SYSFS_get_pp_dpm_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"%s/pp_dpm_pcie\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@HCBUFSIZ_TINY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"%d: %fGB, x%d *\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @hm_SYSFS_get_pp_dpm_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hm_SYSFS_get_pp_dpm_pcie(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i8* @hm_SYSFS_get_syspath_device(i32* %20, i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %89

26:                                               ; preds = %3
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @hc_asprintf(i8** %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @hcfree(i8* %29)
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @hc_fopen(i32* %10, i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load i32*, i32** %5, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @strerror(i32 %37)
  %39 = call i32 @event_log_error(i32* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %38)
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @hcfree(i8* %40)
  store i32 -1, i32* %4, align 4
  br label %89

42:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %82, %79, %42
  %44 = call i32 @hc_feof(i32* %10)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %83

47:                                               ; preds = %43
  %48 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %12, align 8
  %51 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %13, align 8
  %52 = trunc i64 %49 to i32
  %53 = call i8* @hc_fgets(i8* %51, i32 %52, i32* %10)
  store i8* %53, i8** %14, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 2, i32* %15, align 4
  br label %79

57:                                               ; preds = %47
  %58 = load i8*, i8** %14, align 8
  %59 = call i64 @strlen(i8* %58)
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %16, align 8
  %61 = icmp ult i64 %60, 2
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 2, i32* %15, align 4
  br label %79

63:                                               ; preds = %57
  %64 = load i8*, i8** %14, align 8
  %65 = load i64, i64* %16, align 8
  %66 = sub i64 %65, 2
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 42
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 2, i32* %15, align 4
  br label %79

72:                                               ; preds = %63
  store i32 0, i32* %17, align 4
  store float 0.000000e+00, float* %18, align 4
  %73 = load i8*, i8** %14, align 8
  %74 = call i32 @sscanf(i8* %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %17, float* %18, i32* %11)
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %19, align 4
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 3, i32* %15, align 4
  br label %79

78:                                               ; preds = %72
  store i32 0, i32* %15, align 4
  br label %79

79:                                               ; preds = %78, %77, %71, %62, %56
  %80 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %15, align 4
  switch i32 %81, label %91 [
    i32 0, label %82
    i32 2, label %43
    i32 3, label %83
  ]

82:                                               ; preds = %79
  br label %43

83:                                               ; preds = %79, %43
  %84 = call i32 @hc_fclose(i32* %10)
  %85 = load i32, i32* %11, align 4
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @hcfree(i8* %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %83, %34, %25
  %90 = load i32, i32* %4, align 4
  ret i32 %90

91:                                               ; preds = %79
  unreachable
}

declare dso_local i8* @hm_SYSFS_get_syspath_device(i32*, i32) #1

declare dso_local i32 @hc_asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @hcfree(i8*) #1

declare dso_local i32 @hc_fopen(i32*, i8*, i8*) #1

declare dso_local i32 @event_log_error(i32*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @hc_feof(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @hc_fgets(i8*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, float*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @hc_fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
