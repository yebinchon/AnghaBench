; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_print_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_print_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ST0 = common dso_local global i32 0, align 4
@ST0_ECE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Recalibrate failed!\00", align 1
@ST2 = common dso_local global i32 0, align 4
@ST2_CRC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"data CRC error\00", align 1
@ST1 = common dso_local global i32 0, align 4
@ST1_CRC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"CRC error\00", align 1
@ST1_MAM = common dso_local global i32 0, align 4
@ST1_ND = common dso_local global i32 0, align 4
@ST2_MAM = common dso_local global i32 0, align 4
@probing = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"sector not found\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"probe failed...\00", align 1
@ST2_WC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"wrong cylinder\00", align 1
@ST2_BC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"bad cylinder\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"unknown error. ST[0..2] are: 0x%x 0x%x 0x%x\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errors() #0 {
  %1 = call i32 @DPRINT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @ST0, align 4
  %3 = load i32, i32* @ST0_ECE, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %70

8:                                                ; preds = %0
  %9 = load i32, i32* @ST2, align 4
  %10 = load i32, i32* @ST2_CRC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 (...) @tell_sector()
  br label %69

16:                                               ; preds = %8
  %17 = load i32, i32* @ST1, align 4
  %18 = load i32, i32* @ST1_CRC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 (...) @tell_sector()
  br label %68

24:                                               ; preds = %16
  %25 = load i32, i32* @ST1, align 4
  %26 = load i32, i32* @ST1_MAM, align 4
  %27 = load i32, i32* @ST1_ND, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ST2, align 4
  %33 = load i32, i32* @ST2_MAM, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31, %24
  %37 = load i32, i32* @probing, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %41 = call i32 (...) @tell_sector()
  br label %44

42:                                               ; preds = %36
  %43 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  br label %67

45:                                               ; preds = %31
  %46 = load i32, i32* @ST2, align 4
  %47 = load i32, i32* @ST2_WC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %66

52:                                               ; preds = %45
  %53 = load i32, i32* @ST2, align 4
  %54 = load i32, i32* @ST2_BC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %65

59:                                               ; preds = %52
  %60 = load i32, i32* @ST0, align 4
  %61 = load i32, i32* @ST1, align 4
  %62 = load i32, i32* @ST2, align 4
  %63 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %60, i32 %61, i32 %62)
  %64 = call i32 (...) @tell_sector()
  br label %65

65:                                               ; preds = %59, %57
  br label %66

66:                                               ; preds = %65, %50
  br label %67

67:                                               ; preds = %66, %44
  br label %68

68:                                               ; preds = %67, %21
  br label %69

69:                                               ; preds = %68, %13
  br label %70

70:                                               ; preds = %69, %6
  %71 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @tell_sector(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
