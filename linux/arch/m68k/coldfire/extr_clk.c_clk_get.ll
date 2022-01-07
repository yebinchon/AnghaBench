; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_clk.c_clk_get.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_clk.c_clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }

@mcf_clks = common dso_local global %struct.clk** null, align 8
@.str = private unnamed_addr constant [31 x i8] c"clk_get: didn't find clock %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @clk_get(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = icmp ne %struct.device* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i8* @dev_name(%struct.device* %12)
  br label %22

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  br label %20

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i8* [ %18, %17 ], [ null, %19 ]
  br label %22

22:                                               ; preds = %20, %11
  %23 = phi i8* [ %13, %11 ], [ %21, %20 ]
  store i8* %23, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %41, %22
  %25 = load %struct.clk**, %struct.clk*** @mcf_clks, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.clk*, %struct.clk** %25, i64 %27
  %29 = load %struct.clk*, %struct.clk** %28, align 8
  store %struct.clk* %29, %struct.clk** %7, align 8
  %30 = icmp ne %struct.clk* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load %struct.clk*, %struct.clk** %7, align 8
  %33 = getelementptr inbounds %struct.clk, %struct.clk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strcmp(i32 %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load %struct.clk*, %struct.clk** %7, align 8
  store %struct.clk* %39, %struct.clk** %3, align 8
  br label %50

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %24

44:                                               ; preds = %24
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.clk* @ERR_PTR(i32 %48)
  store %struct.clk* %49, %struct.clk** %3, align 8
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.clk*, %struct.clk** %3, align 8
  ret %struct.clk* %51
}

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
