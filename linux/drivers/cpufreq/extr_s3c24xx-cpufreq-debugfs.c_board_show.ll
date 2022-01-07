; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c24xx-cpufreq-debugfs.c_board_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c24xx-cpufreq-debugfs.c_board_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.s3c_cpufreq_config = type { %struct.s3c_cpufreq_board* }
%struct.s3c_cpufreq_board = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"no configuration registered\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"no board definition set?\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"SDRAM refresh %u ns\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"auto_io=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"need_io=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @board_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @board_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.s3c_cpufreq_config*, align 8
  %7 = alloca %struct.s3c_cpufreq_board*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = call %struct.s3c_cpufreq_config* (...) @s3c_cpufreq_getconfig()
  store %struct.s3c_cpufreq_config* %8, %struct.s3c_cpufreq_config** %6, align 8
  %9 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %6, align 8
  %10 = icmp ne %struct.s3c_cpufreq_config* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %6, align 8
  %16 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %15, i32 0, i32 0
  %17 = load %struct.s3c_cpufreq_board*, %struct.s3c_cpufreq_board** %16, align 8
  store %struct.s3c_cpufreq_board* %17, %struct.s3c_cpufreq_board** %7, align 8
  %18 = load %struct.s3c_cpufreq_board*, %struct.s3c_cpufreq_board** %7, align 8
  %19 = icmp ne %struct.s3c_cpufreq_board* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %43

23:                                               ; preds = %14
  %24 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %25 = load %struct.s3c_cpufreq_board*, %struct.s3c_cpufreq_board** %7, align 8
  %26 = getelementptr inbounds %struct.s3c_cpufreq_board, %struct.s3c_cpufreq_board* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %30 = load %struct.s3c_cpufreq_board*, %struct.s3c_cpufreq_board** %7, align 8
  %31 = getelementptr inbounds %struct.s3c_cpufreq_board, %struct.s3c_cpufreq_board* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = load %struct.s3c_cpufreq_board*, %struct.s3c_cpufreq_board** %7, align 8
  %36 = getelementptr inbounds %struct.s3c_cpufreq_board, %struct.s3c_cpufreq_board* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = load %struct.s3c_cpufreq_board*, %struct.s3c_cpufreq_board** %7, align 8
  %41 = getelementptr inbounds %struct.s3c_cpufreq_board, %struct.s3c_cpufreq_board* %40, i32 0, i32 0
  %42 = call i32 @show_max(%struct.seq_file* %39, i32* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %23, %20, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.s3c_cpufreq_config* @s3c_cpufreq_getconfig(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @show_max(%struct.seq_file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
