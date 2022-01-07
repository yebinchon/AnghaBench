; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_db1200.c_pb1200_mmc1_cd_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_db1200.c_pb1200_mmc1_cd_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PB1200_SD1_INSERT_INT = common dso_local global i32 0, align 4
@pb1200_mmc1_cd = common dso_local global i32 0, align 4
@pb1200_mmc1_cdfn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sd1_insert\00", align 1
@PB1200_SD1_EJECT_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"sd1_eject\00", align 1
@BCSR_SIGSTAT = common dso_local global i32 0, align 4
@BCSR_INT_SD1INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pb1200_mmc1_cd_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pb1200_mmc1_cd_setup(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %2
  %9 = load i32, i32* @PB1200_SD1_INSERT_INT, align 4
  %10 = load i32, i32* @pb1200_mmc1_cd, align 4
  %11 = load i32, i32* @pb1200_mmc1_cdfn, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @request_threaded_irq(i32 %9, i32 %10, i32 %11, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %50

17:                                               ; preds = %8
  %18 = load i32, i32* @PB1200_SD1_EJECT_INT, align 4
  %19 = load i32, i32* @pb1200_mmc1_cd, align 4
  %20 = load i32, i32* @pb1200_mmc1_cdfn, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @request_threaded_irq(i32 %18, i32 %19, i32 %20, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* @PB1200_SD1_INSERT_INT, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @free_irq(i32 %26, i8* %27)
  br label %50

29:                                               ; preds = %17
  %30 = load i32, i32* @BCSR_SIGSTAT, align 4
  %31 = call i32 @bcsr_read(i32 %30)
  %32 = load i32, i32* @BCSR_INT_SD1INSERT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @PB1200_SD1_EJECT_INT, align 4
  %37 = call i32 @enable_irq(i32 %36)
  br label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @PB1200_SD1_INSERT_INT, align 4
  %40 = call i32 @enable_irq(i32 %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %49

42:                                               ; preds = %2
  %43 = load i32, i32* @PB1200_SD1_INSERT_INT, align 4
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @free_irq(i32 %43, i8* %44)
  %46 = load i32, i32* @PB1200_SD1_EJECT_INT, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @free_irq(i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %42, %41
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %25, %16
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @bcsr_read(i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
