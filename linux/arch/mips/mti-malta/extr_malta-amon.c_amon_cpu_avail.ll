; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mti-malta/extr_malta-amon.c_amon_cpu_avail.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mti-malta/extr_malta-amon.c_amon_cpu_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpulaunch = type { i32 }

@CPULAUNCH = common dso_local global i32 0, align 4
@NCPULAUNCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"avail: cpu%d is out of range\0A\00", align 1
@LAUNCH_FREADY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"avail: cpu%d is not ready\0A\00", align 1
@LAUNCH_FGO = common dso_local global i32 0, align 4
@LAUNCH_FGONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"avail: too late.. cpu%d is already gone\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amon_cpu_avail(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpulaunch*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @CPULAUNCH, align 4
  %6 = call i64 @CKSEG0ADDR(i32 %5)
  %7 = inttoptr i64 %6 to %struct.cpulaunch*
  store %struct.cpulaunch* %7, %struct.cpulaunch** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @NCPULAUNCH, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %2, align 4
  br label %44

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.cpulaunch*, %struct.cpulaunch** %4, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds %struct.cpulaunch, %struct.cpulaunch* %19, i64 %20
  store %struct.cpulaunch* %21, %struct.cpulaunch** %4, align 8
  %22 = load %struct.cpulaunch*, %struct.cpulaunch** %4, align 8
  %23 = getelementptr inbounds %struct.cpulaunch, %struct.cpulaunch* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LAUNCH_FREADY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 0, i32* %2, align 4
  br label %44

31:                                               ; preds = %17
  %32 = load %struct.cpulaunch*, %struct.cpulaunch** %4, align 8
  %33 = getelementptr inbounds %struct.cpulaunch, %struct.cpulaunch* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @LAUNCH_FGO, align 4
  %36 = load i32, i32* @LAUNCH_FGONE, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  store i32 0, i32* %2, align 4
  br label %44

43:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40, %28, %14
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @CKSEG0ADDR(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
