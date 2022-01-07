; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_db1300.c_db1300_mmc_cd_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_db1300.c_db1300_mmc_cd_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DB1300_SD1_INSERT_INT = common dso_local global i32 0, align 4
@db1300_mmc_cd = common dso_local global i32 0, align 4
@db1300_mmc_cdfn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sd_insert\00", align 1
@DB1300_SD1_EJECT_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"sd_eject\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @db1300_mmc_cd_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db1300_mmc_cd_setup(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %2
  %9 = load i32, i32* @DB1300_SD1_INSERT_INT, align 4
  %10 = load i32, i32* @db1300_mmc_cd, align 4
  %11 = load i32, i32* @db1300_mmc_cdfn, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @request_threaded_irq(i32 %9, i32 %10, i32 %11, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %48

17:                                               ; preds = %8
  %18 = load i32, i32* @DB1300_SD1_EJECT_INT, align 4
  %19 = load i32, i32* @db1300_mmc_cd, align 4
  %20 = load i32, i32* @db1300_mmc_cdfn, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @request_threaded_irq(i32 %18, i32 %19, i32 %20, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* @DB1300_SD1_INSERT_INT, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @free_irq(i32 %26, i8* %27)
  br label %48

29:                                               ; preds = %17
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @db1300_mmc_card_inserted(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @DB1300_SD1_EJECT_INT, align 4
  %35 = call i32 @enable_irq(i32 %34)
  br label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @DB1300_SD1_INSERT_INT, align 4
  %38 = call i32 @enable_irq(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  br label %47

40:                                               ; preds = %2
  %41 = load i32, i32* @DB1300_SD1_INSERT_INT, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @free_irq(i32 %41, i8* %42)
  %44 = load i32, i32* @DB1300_SD1_EJECT_INT, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @free_irq(i32 %44, i8* %45)
  br label %47

47:                                               ; preds = %40, %39
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %25, %16
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i64 @db1300_mmc_card_inserted(i8*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
