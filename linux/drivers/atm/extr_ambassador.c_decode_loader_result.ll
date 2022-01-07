; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_decode_loader_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_decode_loader_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@command_successes = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bad command\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"command in progress\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"command passed test\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"command failed test\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"command read data ok\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"command read bad address\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"command write data ok\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"command write bad address\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"command write flash failure\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"command complete\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"command flash erase failure\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"command write bad data\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@DBG_LOAD = common dso_local global i32 0, align 4
@DBG_ERR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"decode_loader_result got %d=%x !\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @decode_loader_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_loader_result(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32*, i32** @command_successes, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %8, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %45 [
    i32 139, label %17
    i32 135, label %20
    i32 134, label %23
    i32 137, label %24
    i32 132, label %27
    i32 133, label %28
    i32 129, label %31
    i32 131, label %32
    i32 128, label %35
    i32 138, label %38
    i32 136, label %39
    i32 130, label %42
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %54

20:                                               ; preds = %15
  %21 = load i32, i32* @ETIMEDOUT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %54

23:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %54

24:                                               ; preds = %15
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %54

27:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %54

28:                                               ; preds = %15
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %54

31:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %54

32:                                               ; preds = %15
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %54

35:                                               ; preds = %15
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %54

38:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  br label %54

39:                                               ; preds = %15
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8** %7, align 8
  br label %54

42:                                               ; preds = %15
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8** %7, align 8
  br label %54

45:                                               ; preds = %15
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8** %7, align 8
  %48 = load i32, i32* @DBG_LOAD, align 4
  %49 = load i32, i32* @DBG_ERR, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @PRINTD(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %42, %39, %38, %35, %32, %31, %28, %27, %24, %23, %20, %17
  %55 = load i32, i32* @KERN_ERR, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @PRINTK(i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @PRINTD(i32, i8*, i32, i32) #1

declare dso_local i32 @PRINTK(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
