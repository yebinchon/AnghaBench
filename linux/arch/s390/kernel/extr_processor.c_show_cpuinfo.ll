; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_processor.c_show_cpuinfo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_processor.c_show_cpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@machine_has_cpu_mhz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"\0Acpu number      : %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_cpuinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_cpuinfo(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = sub i64 %8, 1
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @show_cpu_summary(%struct.seq_file* %13, i8* %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @machine_has_cpu_mhz, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %27

20:                                               ; preds = %16
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @show_cpu_mhz(%struct.seq_file* %24, i64 %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @show_cpu_summary(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i32 @show_cpu_mhz(%struct.seq_file*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
