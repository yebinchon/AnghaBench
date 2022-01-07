; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_SYSFS_get_syspath_hwmon.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_SYSFS_get_syspath_hwmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"hm_SYSFS_get_syspath_device() failed.\00", align 1
@HCBUFSIZ_TINY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s/hwmon\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"First_file_in_directory() failed.\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s/hwmon/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32)* @hm_SYSFS_get_syspath_hwmon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hm_SYSFS_get_syspath_hwmon(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i8* @hm_SYSFS_get_syspath_device(i32* %9, i32 %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @event_log_error(i32* %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %49

17:                                               ; preds = %2
  %18 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %19 = call i64 @hcmalloc(i32 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %21, i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @first_file_in_directory(i8* %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %17
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @event_log_error(i32* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @hcfree(i8* %32)
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @hcfree(i8* %34)
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @hcfree(i8* %36)
  store i8* null, i8** %3, align 8
  br label %49

38:                                               ; preds = %17
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %39, i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %41, i8* %42)
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @hcfree(i8* %44)
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @hcfree(i8* %46)
  %48 = load i8*, i8** %7, align 8
  store i8* %48, i8** %3, align 8
  br label %49

49:                                               ; preds = %38, %29, %14
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

declare dso_local i8* @hm_SYSFS_get_syspath_device(i32*, i32) #1

declare dso_local i32 @event_log_error(i32*, i8*) #1

declare dso_local i64 @hcmalloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i8* @first_file_in_directory(i8*) #1

declare dso_local i32 @hcfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
