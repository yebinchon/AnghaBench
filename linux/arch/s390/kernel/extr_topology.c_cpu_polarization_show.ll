; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_topology.c_cpu_polarization_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_topology.c_cpu_polarization_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@smp_cpu_state_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"horizontal\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"vertical:low\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"vertical:medium\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"vertical:high\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @cpu_polarization_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_polarization_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = call i32 @mutex_lock(i32* @smp_cpu_state_mutex)
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @smp_cpu_get_polarization(i32 %13)
  switch i32 %14, label %27 [
    i32 131, label %15
    i32 129, label %18
    i32 128, label %21
    i32 130, label %24
  ]

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %8, align 4
  br label %30

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %8, align 4
  br label %30

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 %23, i32* %8, align 4
  br label %30

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 %26, i32* %8, align 4
  br label %30

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %24, %21, %18, %15
  %31 = call i32 @mutex_unlock(i32* @smp_cpu_state_mutex)
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smp_cpu_get_polarization(i32) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
