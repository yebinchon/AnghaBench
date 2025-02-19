; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_err_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_err_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AC_ERR_HOST_BUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"host bus error\00", align 1
@AC_ERR_ATA_BUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ATA bus error\00", align 1
@AC_ERR_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@AC_ERR_HSM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"HSM violation\00", align 1
@AC_ERR_SYSTEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@AC_ERR_MEDIA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"media error\00", align 1
@AC_ERR_INVALID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"invalid argument\00", align 1
@AC_ERR_DEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"device error\00", align 1
@AC_ERR_NCQ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"NCQ error\00", align 1
@AC_ERR_NODEV_HINT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"Polling detection error\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @ata_err_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ata_err_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @AC_ERR_HOST_BUS, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %64

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @AC_ERR_ATA_BUS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %64

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @AC_ERR_TIMEOUT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %64

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @AC_ERR_HSM, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %64

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @AC_ERR_SYSTEM, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %64

33:                                               ; preds = %27
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @AC_ERR_MEDIA, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %64

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @AC_ERR_INVALID, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %64

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @AC_ERR_DEV, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %64

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @AC_ERR_NCQ, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %64

57:                                               ; preds = %51
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @AC_ERR_NODEV_HINT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %64

63:                                               ; preds = %57
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %64

64:                                               ; preds = %63, %62, %56, %50, %44, %38, %32, %26, %20, %14, %8
  %65 = load i8*, i8** %2, align 8
  ret i8* %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
