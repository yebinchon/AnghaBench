; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_setup_pmc_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_setup_pmc_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_sf = type { i32, i32 }

@cpu_hw_sf = common dso_local global i32 0, align 4
@PMU_F_RESERVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Switching off the sampling facility failed with rc=%i\0A\00", align 1
@sfdbg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"setup_pmc_cpu: initialized: cpuhw=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"setup_pmc_cpu: released: cpuhw=%p\0A\00", align 1
@PMC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @setup_pmc_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_pmc_cpu(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_hw_sf*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call %struct.cpu_hw_sf* @this_cpu_ptr(i32* @cpu_hw_sf)
  store %struct.cpu_hw_sf* %5, %struct.cpu_hw_sf** %4, align 8
  store i32 0, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %54 [
    i32 129, label %9
    i32 128, label %34
  ]

9:                                                ; preds = %1
  %10 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %4, align 8
  %11 = call i32 @memset(%struct.cpu_hw_sf* %10, i32 0, i32 8)
  %12 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %4, align 8
  %13 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %12, i32 0, i32 1
  %14 = call i32 @qsi(i32* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %54

18:                                               ; preds = %9
  %19 = load i32, i32* @PMU_F_RESERVED, align 4
  %20 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %4, align 8
  %21 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = call i32 (...) @sf_disable()
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %18
  %31 = load i32, i32* @sfdbg, align 4
  %32 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %4, align 8
  %33 = call i32 @debug_sprintf_event(i32 %31, i32 5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.cpu_hw_sf* %32)
  br label %54

34:                                               ; preds = %1
  %35 = load i32, i32* @PMU_F_RESERVED, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %4, align 8
  %38 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = call i32 (...) @sf_disable()
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %50

47:                                               ; preds = %34
  %48 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %4, align 8
  %49 = call i32 @deallocate_buffers(%struct.cpu_hw_sf* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @sfdbg, align 4
  %52 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %4, align 8
  %53 = call i32 @debug_sprintf_event(i32 %51, i32 5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.cpu_hw_sf* %52)
  br label %54

54:                                               ; preds = %1, %50, %30, %17
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* @PMC_FAILURE, align 4
  %59 = load i8*, i8** %2, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %54
  ret void
}

declare dso_local %struct.cpu_hw_sf* @this_cpu_ptr(i32*) #1

declare dso_local i32 @memset(%struct.cpu_hw_sf*, i32, i32) #1

declare dso_local i32 @qsi(i32*) #1

declare dso_local i32 @sf_disable(...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @debug_sprintf_event(i32, i32, i8*, %struct.cpu_hw_sf*) #1

declare dso_local i32 @deallocate_buffers(%struct.cpu_hw_sf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
