; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-branch.c_clk_branch_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-branch.c_clk_branch_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_branch = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BRANCH_VOTED = common dso_local global i32 0, align 4
@BRANCH_HALT_SKIP = common dso_local global i32 0, align 4
@BRANCH_HALT_DELAY = common dso_local global i32 0, align 4
@BRANCH_HALT_ENABLE = common dso_local global i32 0, align 4
@BRANCH_HALT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s status stuck at 'o%s'\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_branch*, i32, i32 (%struct.clk_branch*, i32)*)* @clk_branch_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_branch_wait(%struct.clk_branch* %0, i32 %1, i32 (%struct.clk_branch*, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_branch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.clk_branch*, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.clk_branch* %0, %struct.clk_branch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (%struct.clk_branch*, i32)* %2, i32 (%struct.clk_branch*, i32)** %7, align 8
  %11 = load %struct.clk_branch*, %struct.clk_branch** %5, align 8
  %12 = getelementptr inbounds %struct.clk_branch, %struct.clk_branch* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BRANCH_VOTED, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.clk_branch*, %struct.clk_branch** %5, align 8
  %17 = getelementptr inbounds %struct.clk_branch, %struct.clk_branch* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i8* @clk_hw_get_name(i32* %18)
  store i8* %19, i8** %9, align 8
  %20 = load %struct.clk_branch*, %struct.clk_branch** %5, align 8
  %21 = getelementptr inbounds %struct.clk_branch, %struct.clk_branch* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BRANCH_HALT_SKIP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load %struct.clk_branch*, %struct.clk_branch** %5, align 8
  %27 = call i64 @clk_branch_in_hwcg_mode(%struct.clk_branch* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %3
  store i32 0, i32* %4, align 4
  br label %87

30:                                               ; preds = %25
  %31 = load %struct.clk_branch*, %struct.clk_branch** %5, align 8
  %32 = getelementptr inbounds %struct.clk_branch, %struct.clk_branch* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BRANCH_HALT_DELAY, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %30
  %43 = call i32 @udelay(i32 10)
  br label %86

44:                                               ; preds = %39, %36
  %45 = load %struct.clk_branch*, %struct.clk_branch** %5, align 8
  %46 = getelementptr inbounds %struct.clk_branch, %struct.clk_branch* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BRANCH_HALT_ENABLE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = load %struct.clk_branch*, %struct.clk_branch** %5, align 8
  %52 = getelementptr inbounds %struct.clk_branch, %struct.clk_branch* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BRANCH_HALT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %59, %50, %44
  store i32 200, i32* %10, align 4
  br label %63

63:                                               ; preds = %74, %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %10, align 4
  %66 = icmp sgt i32 %64, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i32 (%struct.clk_branch*, i32)*, i32 (%struct.clk_branch*, i32)** %7, align 8
  %69 = load %struct.clk_branch*, %struct.clk_branch** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 %68(%struct.clk_branch* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %87

74:                                               ; preds = %67
  %75 = call i32 @udelay(i32 1)
  br label %63

76:                                               ; preds = %63
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %82 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %77, i8* %81)
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %87

85:                                               ; preds = %59, %56
  br label %86

86:                                               ; preds = %85, %42
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %76, %73, %29
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i8* @clk_hw_get_name(i32*) #1

declare dso_local i64 @clk_branch_in_hwcg_mode(%struct.clk_branch*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @WARN(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
