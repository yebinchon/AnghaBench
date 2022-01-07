; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_setup.c_show_cpuinfo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_setup.c_show_cpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.device = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"processor [%d]\09: Offline\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"CPU speed \09: Cannot get clock for processor [%d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"CPU speed\09: %lu.%02lu Mhz\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Bogo MIPS\09: %lu.%02lu\0A\00", align 1
@loops_per_jiffy = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_cpuinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_cpuinfo(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @ptr_to_cpu(i8* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.device* @get_cpu_device(i32 %12)
  store %struct.device* %13, %struct.device** %7, align 8
  store i64 0, i64* %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @cpu_online(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %94

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i64 @__get_free_page(i32 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %94

28:                                               ; preds = %21
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = call i8* @arc_cpu_mumbojumbo(i32 %30, i8* %31, i32 %32)
  %34 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %29, i8* %33)
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = call %struct.clk* @clk_get(%struct.device* %35, i32* null)
  store %struct.clk* %36, %struct.clk** %8, align 8
  %37 = load %struct.clk*, %struct.clk** %8, align 8
  %38 = call i64 @IS_ERR(%struct.clk* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %47

44:                                               ; preds = %28
  %45 = load %struct.clk*, %struct.clk** %8, align 8
  %46 = call i64 @clk_get_rate(%struct.clk* %45)
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %52 = load i64, i64* %9, align 8
  %53 = udiv i64 %52, 1000000
  %54 = load i64, i64* %9, align 8
  %55 = udiv i64 %54, 10000
  %56 = urem i64 %55, 100
  %57 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %53, i64 %56)
  br label %58

58:                                               ; preds = %50, %47
  %59 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %60 = load i32, i32* @loops_per_jiffy, align 4
  %61 = load i32, i32* @HZ, align 4
  %62 = sdiv i32 500000, %61
  %63 = sdiv i32 %60, %62
  %64 = load i32, i32* @loops_per_jiffy, align 4
  %65 = load i32, i32* @HZ, align 4
  %66 = sdiv i32 5000, %65
  %67 = sdiv i32 %64, %66
  %68 = srem i32 %67, 100
  %69 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %68)
  %70 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = call i8* @arc_mmu_mumbojumbo(i32 %71, i8* %72, i32 %73)
  %75 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %70, i8* %74)
  %76 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = call i8* @arc_cache_mumbojumbo(i32 %77, i8* %78, i32 %79)
  %81 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %76, i8* %80)
  %82 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* @PAGE_SIZE, align 4
  %86 = call i8* @arc_extn_mumbojumbo(i32 %83, i8* %84, i32 %85)
  %87 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %82, i8* %86)
  %88 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %89 = call i8* (...) @arc_platform_smp_cpuinfo()
  %90 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %88, i8* %89)
  %91 = load i8*, i8** %5, align 8
  %92 = ptrtoint i8* %91 to i64
  %93 = call i32 @free_page(i64 %92)
  br label %94

94:                                               ; preds = %58, %27, %17
  %95 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %96 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @ptr_to_cpu(i8*) #1

declare dso_local %struct.device* @get_cpu_device(i32) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i8* @arc_cpu_mumbojumbo(i32, i8*, i32) #1

declare dso_local %struct.clk* @clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i8* @arc_mmu_mumbojumbo(i32, i8*, i32) #1

declare dso_local i8* @arc_cache_mumbojumbo(i32, i8*, i32) #1

declare dso_local i8* @arc_extn_mumbojumbo(i32, i8*, i32) #1

declare dso_local i8* @arc_platform_smp_cpuinfo(...) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
