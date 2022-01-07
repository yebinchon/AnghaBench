; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_probe_vcache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_probe_vcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }

@current_cpu_data = common dso_local global %struct.cpuinfo_mips zeroinitializer, align 8
@CPU_LOONGSON3 = common dso_local global i64 0, align 8
@vcache_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unified victim cache %ldkB %s, linesize %d bytes.\0A\00", align 1
@way_string = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @probe_vcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_vcache() #0 {
  %1 = alloca %struct.cpuinfo_mips*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.cpuinfo_mips* @current_cpu_data, %struct.cpuinfo_mips** %1, align 8
  %4 = call i64 (...) @current_cpu_type()
  %5 = load i64, i64* @CPU_LOONGSON3, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %81

8:                                                ; preds = %0
  %9 = call i32 (...) @read_c0_config2()
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = lshr i32 %10, 20
  %12 = and i32 %11, 15
  store i32 %12, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 2, %15
  %17 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %18 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  br label %25

20:                                               ; preds = %8
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %23 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  br label %25

25:                                               ; preds = %20, %14
  %26 = load i32, i32* %2, align 4
  %27 = lshr i32 %26, 24
  %28 = and i32 %27, 15
  %29 = shl i32 64, %28
  %30 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %31 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %2, align 4
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 15
  %36 = add i32 1, %35
  %37 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %38 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %41 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %45 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %43, %47
  %49 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %50 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %48, %52
  store i32 %53, i32* @vcache_size, align 4
  %54 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %55 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @vcache_size, align 4
  %58 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %59 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sdiv i32 %57, %61
  %63 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %64 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @vcache_size, align 4
  %67 = ashr i32 %66, 10
  %68 = load i32*, i32** @way_string, align 8
  %69 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %70 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %77 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %75, i32 %79)
  br label %81

81:                                               ; preds = %25, %7
  ret void
}

declare dso_local i64 @current_cpu_type(...) #1

declare dso_local i32 @read_c0_config2(...) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
