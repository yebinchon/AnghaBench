; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_pm.c_db1x_pmattr_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_pm.c_db1x_pmattr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@timer_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@db1x_pm_sleep_secs = common dso_local global i32 0, align 4
@timer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@db1x_pm_wakemsk = common dso_local global i32 0, align 4
@SYS_WAKEMSK_M2 = common dso_local global i32 0, align 4
@wakesrc = common dso_local global i32 0, align 4
@db1x_pm_last_wakesrc = common dso_local global i32 0, align 4
@gpio0 = common dso_local global i32 0, align 4
@gpio1 = common dso_local global i32 0, align 4
@gpio2 = common dso_local global i32 0, align 4
@gpio3 = common dso_local global i32 0, align 4
@gpio4 = common dso_local global i32 0, align 4
@gpio5 = common dso_local global i32 0, align 4
@gpio6 = common dso_local global i32 0, align 4
@gpio7 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@wakemsk = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%08lx\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @db1x_pmattr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db1x_pmattr_show(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.kobj_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @timer_timeout, align 4
  %10 = call i64 @ATTRCMP(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* @db1x_pm_sleep_secs, align 4
  %15 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 %15, i32* %4, align 4
  br label %103

16:                                               ; preds = %3
  %17 = load i32, i32* @timer, align 4
  %18 = call i64 @ATTRCMP(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @db1x_pm_wakemsk, align 4
  %23 = load i32, i32* @SYS_WAKEMSK_M2, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %4, align 4
  br label %103

30:                                               ; preds = %16
  %31 = load i32, i32* @wakesrc, align 4
  %32 = call i64 @ATTRCMP(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* @db1x_pm_last_wakesrc, align 4
  %37 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %4, align 4
  br label %103

38:                                               ; preds = %30
  %39 = load i32, i32* @gpio0, align 4
  %40 = call i64 @ATTRCMP(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %70, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @gpio1, align 4
  %44 = call i64 @ATTRCMP(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @gpio2, align 4
  %48 = call i64 @ATTRCMP(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @gpio3, align 4
  %52 = call i64 @ATTRCMP(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @gpio4, align 4
  %56 = call i64 @ATTRCMP(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @gpio5, align 4
  %60 = call i64 @ATTRCMP(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @gpio6, align 4
  %64 = call i64 @ATTRCMP(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @gpio7, align 4
  %68 = call i64 @ATTRCMP(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %66, %62, %58, %54, %50, %46, %42, %38
  %71 = load %struct.kobj_attribute*, %struct.kobj_attribute** %6, align 8
  %72 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 48
  store i32 %77, i32* %8, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* @db1x_pm_wakemsk, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @SYS_WAKEMSK_GPIO(i32 %80)
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @sprintf(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  store i32 %87, i32* %4, align 4
  br label %103

88:                                               ; preds = %66
  %89 = load i32, i32* @wakemsk, align 4
  %90 = call i64 @ATTRCMP(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* @db1x_pm_wakemsk, align 4
  %95 = call i32 @sprintf(i8* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  store i32 %95, i32* %4, align 4
  br label %103

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* @ENOENT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %100, %92, %70, %34, %20, %12
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @ATTRCMP(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @SYS_WAKEMSK_GPIO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
