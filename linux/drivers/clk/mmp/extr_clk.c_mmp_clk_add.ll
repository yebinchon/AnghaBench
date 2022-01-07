; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk.c_mmp_clk_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk.c_mmp_clk_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_clk_unit = type { i32, %struct.clk** }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"CLK %d has invalid pointer %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"CLK %d is invalid\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmp_clk_add(%struct.mmp_clk_unit* %0, i32 %1, %struct.clk* %2) #0 {
  %4 = alloca %struct.mmp_clk_unit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk*, align 8
  store %struct.mmp_clk_unit* %0, %struct.mmp_clk_unit** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.clk* %2, %struct.clk** %6, align 8
  %7 = load %struct.clk*, %struct.clk** %6, align 8
  %8 = call i64 @IS_ERR_OR_NULL(%struct.clk* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.clk*, %struct.clk** %6, align 8
  %13 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %11, %struct.clk* %12)
  br label %31

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %4, align 8
  %17 = getelementptr inbounds %struct.mmp_clk_unit, %struct.mmp_clk_unit* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp uge i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %31

23:                                               ; preds = %14
  %24 = load %struct.clk*, %struct.clk** %6, align 8
  %25 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %4, align 8
  %26 = getelementptr inbounds %struct.mmp_clk_unit, %struct.mmp_clk_unit* %25, i32 0, i32 1
  %27 = load %struct.clk**, %struct.clk*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.clk*, %struct.clk** %27, i64 %29
  store %struct.clk* %24, %struct.clk** %30, align 8
  br label %31

31:                                               ; preds = %23, %20, %10
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.clk*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
