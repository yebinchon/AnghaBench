; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mti-malta/extr_malta-amon.c_amon_cpu_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mti-malta/extr_malta-amon.c_amon_cpu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpulaunch = type { i64, i64, i64, i64, i32 }

@CPULAUNCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"launch: I am cpu%d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"launch: starting cpu%d\0A\00", align 1
@LAUNCH_FGO = common dso_local global i32 0, align 4
@LAUNCH_FGONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"launch: cpu%d gone!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amon_cpu_start(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.cpulaunch*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32, i32* @CPULAUNCH, align 4
  %14 = call i64 @CKSEG0ADDR(i32 %13)
  %15 = inttoptr i64 %14 to %struct.cpulaunch*
  store %struct.cpulaunch* %15, %struct.cpulaunch** %12, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @amon_cpu_avail(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %65

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (...) @smp_processor_id()
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 -1, i32* %6, align 4
  br label %65

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.cpulaunch*, %struct.cpulaunch** %12, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds %struct.cpulaunch, %struct.cpulaunch* %29, i64 %30
  store %struct.cpulaunch* %31, %struct.cpulaunch** %12, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.cpulaunch*, %struct.cpulaunch** %12, align 8
  %36 = getelementptr inbounds %struct.cpulaunch, %struct.cpulaunch* %35, i32 0, i32 0
  store volatile i64 %34, i64* %36, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.cpulaunch*, %struct.cpulaunch** %12, align 8
  %39 = getelementptr inbounds %struct.cpulaunch, %struct.cpulaunch* %38, i32 0, i32 1
  store volatile i64 %37, i64* %39, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.cpulaunch*, %struct.cpulaunch** %12, align 8
  %42 = getelementptr inbounds %struct.cpulaunch, %struct.cpulaunch* %41, i32 0, i32 2
  store volatile i64 %40, i64* %42, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.cpulaunch*, %struct.cpulaunch** %12, align 8
  %45 = getelementptr inbounds %struct.cpulaunch, %struct.cpulaunch* %44, i32 0, i32 3
  store volatile i64 %43, i64* %45, align 8
  %46 = call i32 (...) @smp_wmb()
  %47 = load i32, i32* @LAUNCH_FGO, align 4
  %48 = load %struct.cpulaunch*, %struct.cpulaunch** %12, align 8
  %49 = getelementptr inbounds %struct.cpulaunch, %struct.cpulaunch* %48, i32 0, i32 4
  %50 = load volatile i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store volatile i32 %51, i32* %49, align 8
  %52 = call i32 (...) @smp_wmb()
  br label %53

53:                                               ; preds = %60, %27
  %54 = load %struct.cpulaunch*, %struct.cpulaunch** %12, align 8
  %55 = getelementptr inbounds %struct.cpulaunch, %struct.cpulaunch* %54, i32 0, i32 4
  %56 = load volatile i32, i32* %55, align 8
  %57 = load i32, i32* @LAUNCH_FGONE, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %53

61:                                               ; preds = %53
  %62 = call i32 (...) @smp_rmb()
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %24, %19
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i64 @CKSEG0ADDR(i32) #1

declare dso_local i32 @amon_cpu_avail(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @smp_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
