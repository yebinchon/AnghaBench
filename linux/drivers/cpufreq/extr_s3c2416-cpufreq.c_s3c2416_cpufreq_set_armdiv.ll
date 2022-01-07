; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c2416-cpufreq.c_s3c2416_cpufreq_set_armdiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c2416-cpufreq.c_s3c2416_cpufreq_set_armdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2416_data = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"cpufreq: Failed to set armdiv rate %dkHz: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c2416_data*, i32)* @s3c2416_cpufreq_set_armdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2416_cpufreq_set_armdiv(%struct.s3c2416_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c2416_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s3c2416_data* %0, %struct.s3c2416_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.s3c2416_data*, %struct.s3c2416_data** %4, align 8
  %8 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clk_get_rate(i32 %9)
  %11 = sdiv i32 %10, 1000
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.s3c2416_data*, %struct.s3c2416_data** %4, align 8
  %16 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = mul i32 %18, 1000
  %20 = call i32 @clk_set_rate(i32 %17, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28, %2
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
