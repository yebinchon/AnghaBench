; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_SYSFS_get_pp_dpm_mclk.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_SYSFS_get_pp_dpm_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"%s/pp_dpm_mclk\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@HCBUFSIZ_TINY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%d: %dMHz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @hm_SYSFS_get_pp_dpm_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hm_SYSFS_get_pp_dpm_mclk(i32* %0, i32 %1, i32* %2) #0 {
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
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @hm_SYSFS_get_syspath_device(i32* %19, i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %88

25:                                               ; preds = %3
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @hc_asprintf(i8** %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @hcfree(i8* %28)
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @hc_fopen(i32* %10, i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load i32*, i32** %5, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 @event_log_error(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %35, i32 %37)
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @hcfree(i8* %39)
  store i32 -1, i32* %4, align 4
  br label %88

41:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %81, %78, %41
  %43 = call i32 @hc_feof(i32* %10)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %82

46:                                               ; preds = %42
  %47 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %48 = zext i32 %47 to i64
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %12, align 8
  %50 = alloca i8, i64 %48, align 16
  store i64 %48, i64* %13, align 8
  %51 = trunc i64 %48 to i32
  %52 = call i8* @hc_fgets(i8* %50, i32 %51, i32* %10)
  store i8* %52, i8** %14, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 2, i32* %15, align 4
  br label %78

56:                                               ; preds = %46
  %57 = load i8*, i8** %14, align 8
  %58 = call i64 @strlen(i8* %57)
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* %16, align 8
  %60 = icmp ult i64 %59, 2
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 2, i32* %15, align 4
  br label %78

62:                                               ; preds = %56
  %63 = load i8*, i8** %14, align 8
  %64 = load i64, i64* %16, align 8
  %65 = sub i64 %64, 2
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 42
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 2, i32* %15, align 4
  br label %78

71:                                               ; preds = %62
  store i32 0, i32* %17, align 4
  %72 = load i8*, i8** %14, align 8
  %73 = call i32 @sscanf(i8* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %17, i32* %11)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 3, i32* %15, align 4
  br label %78

77:                                               ; preds = %71
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %77, %76, %70, %61, %55
  %79 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %15, align 4
  switch i32 %80, label %90 [
    i32 0, label %81
    i32 2, label %42
    i32 3, label %82
  ]

81:                                               ; preds = %78
  br label %42

82:                                               ; preds = %78, %42
  %83 = call i32 @hc_fclose(i32* %10)
  %84 = load i32, i32* %11, align 4
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @hcfree(i8* %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %82, %33, %24
  %89 = load i32, i32* %4, align 4
  ret i32 %89

90:                                               ; preds = %78
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

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

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
