; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c24xx-cpufreq.c_s3c_plltab_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c24xx-cpufreq.c_s3c_plltab_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_frequency_table = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pll_reg = common dso_local global %struct.cpufreq_frequency_table* null, align 8
@CPUFREQ_TABLE_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%d PLL entries\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"no memory for PLL tables\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c_plltab_register(%struct.cpufreq_frequency_table* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_frequency_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_frequency_table*, align 8
  %6 = alloca i32, align 4
  store %struct.cpufreq_frequency_table* %0, %struct.cpufreq_frequency_table** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cpufreq_frequency_table* @kzalloc(i32 %12, i32 %13)
  store %struct.cpufreq_frequency_table* %14, %struct.cpufreq_frequency_table** %5, align 8
  %15 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %16 = icmp ne %struct.cpufreq_frequency_table* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %19 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @memcpy(%struct.cpufreq_frequency_table* %18, %struct.cpufreq_frequency_table* %19, i32 %20)
  %22 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  store %struct.cpufreq_frequency_table* %22, %struct.cpufreq_frequency_table** @pll_reg, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %24, i64 %25
  store %struct.cpufreq_frequency_table* %26, %struct.cpufreq_frequency_table** %5, align 8
  %27 = load i32, i32* @CPUFREQ_TABLE_END, align 4
  %28 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %29 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %34

32:                                               ; preds = %2
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %17
  %35 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %36 = icmp ne %struct.cpufreq_frequency_table* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  br label %41

41:                                               ; preds = %38, %37
  %42 = phi i32 [ 0, %37 ], [ %40, %38 ]
  ret i32 %42
}

declare dso_local %struct.cpufreq_frequency_table* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
