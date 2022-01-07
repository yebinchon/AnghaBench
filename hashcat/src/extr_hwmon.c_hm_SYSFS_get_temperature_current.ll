; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_SYSFS_get_temperature_current.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_SYSFS_get_temperature_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"%s/temp1_input\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%s: unexpected data.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @hm_SYSFS_get_temperature_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hm_SYSFS_get_temperature_current(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i8* @hm_SYSFS_get_syspath_hwmon(i32* %12, i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %51

18:                                               ; preds = %3
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @hc_asprintf(i8** %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @hcfree(i8* %21)
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @hc_fopen(i32* %10, i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load i32*, i32** %5, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 (i32*, i8*, i8*, ...) @event_log_error(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %28, i32 %30)
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @hcfree(i8* %32)
  store i32 -1, i32* %4, align 4
  br label %51

34:                                               ; preds = %18
  store i32 0, i32* %11, align 4
  %35 = call i32 @hc_fscanf(i32* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %11)
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = call i32 @hc_fclose(i32* %10)
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 (i32*, i8*, i8*, ...) @event_log_error(i32* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @hcfree(i8* %42)
  store i32 -1, i32* %4, align 4
  br label %51

44:                                               ; preds = %34
  %45 = call i32 @hc_fclose(i32* %10)
  %46 = load i32, i32* %11, align 4
  %47 = sdiv i32 %46, 1000
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @hcfree(i8* %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %44, %37, %26, %17
  %52 = load i32, i32* %4, align 4
  ret i32 %52
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
