; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_um_arch.c_show_cpuinfo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_um_arch.c_show_cpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"processor\09: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"vendor_id\09: User Mode Linux\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"model name\09: UML\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"mode\09\09: skas\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"host\09\09: %s\0A\00", align 1
@host_info = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"bogomips\09: %lu.%02lu\0A\0A\00", align 1
@loops_per_jiffy = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_cpuinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_cpuinfo(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load i32, i32* @host_info, align 4
  %17 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %16)
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load i32, i32* @loops_per_jiffy, align 4
  %20 = load i32, i32* @HZ, align 4
  %21 = sdiv i32 500000, %20
  %22 = sdiv i32 %19, %21
  %23 = load i32, i32* @loops_per_jiffy, align 4
  %24 = load i32, i32* @HZ, align 4
  %25 = sdiv i32 5000, %24
  %26 = sdiv i32 %23, %25
  %27 = srem i32 %26, 100
  %28 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %22, i32 %27)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
