; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_common.c_xive_scan_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_common.c_xive_scan_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_cpu = type { i32, i64, %struct.xive_q* }
%struct.xive_q = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"scan_irq: trying prio %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"xive: got interrupt %d without descriptor, dropping\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"scan_irq: adjusting CPPR to %d\0A\00", align 1
@xive_tima = common dso_local global i64 0, align 8
@xive_tima_offset = common dso_local global i64 0, align 8
@TM_CPPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xive_cpu*, i32)* @xive_scan_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xive_scan_interrupts(%struct.xive_cpu* %0, i32 %1) #0 {
  %3 = alloca %struct.xive_cpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xive_q*, align 8
  %8 = alloca i32, align 4
  store %struct.xive_cpu* %0, %struct.xive_cpu** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %80, %39, %2
  %10 = load %struct.xive_cpu*, %struct.xive_cpu** %3, align 8
  %11 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %81

14:                                               ; preds = %9
  %15 = load %struct.xive_cpu*, %struct.xive_cpu** %3, align 8
  %16 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @ffs(i32 %17)
  %19 = sub i64 %18, 1
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @DBG_VERBOSE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.xive_cpu*, %struct.xive_cpu** %3, align 8
  %23 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %22, i32 0, i32 2
  %24 = load %struct.xive_q*, %struct.xive_q** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %24, i64 %25
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @xive_read_eq(%struct.xive_q* %26, i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %14
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @irq_to_desc(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %31
  br label %81

39:                                               ; preds = %34
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @pr_crit(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = call i32 @WARN_ON(i32 1)
  br label %9

43:                                               ; preds = %14
  %44 = load i64, i64* %6, align 8
  %45 = trunc i64 %44 to i32
  %46 = shl i32 1, %45
  %47 = xor i32 %46, -1
  %48 = load %struct.xive_cpu*, %struct.xive_cpu** %3, align 8
  %49 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.xive_cpu*, %struct.xive_cpu** %3, align 8
  %53 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %52, i32 0, i32 2
  %54 = load %struct.xive_q*, %struct.xive_q** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %54, i64 %55
  store %struct.xive_q* %56, %struct.xive_q** %7, align 8
  %57 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %58 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %57, i32 0, i32 1
  %59 = call i32 @atomic_read(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %43
  %62 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %63 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %62, i32 0, i32 1
  %64 = call i32 @atomic_xchg(i32* %63, i32 0)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %70 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %69, i32 0, i32 0
  %71 = call i32 @atomic_read(i32* %70)
  %72 = icmp sgt i32 %68, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @WARN_ON(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %77 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %76, i32 0, i32 0
  %78 = call i32 @atomic_sub(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %67, %61
  br label %80

80:                                               ; preds = %79, %43
  br label %9

81:                                               ; preds = %38, %9
  %82 = load i64, i64* %5, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i64 255, i64* %6, align 8
  br label %85

85:                                               ; preds = %84, %81
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.xive_cpu*, %struct.xive_cpu** %3, align 8
  %88 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @DBG_VERBOSE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %92)
  %94 = load i64, i64* %6, align 8
  %95 = load %struct.xive_cpu*, %struct.xive_cpu** %3, align 8
  %96 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* @xive_tima, align 8
  %98 = load i64, i64* @xive_tima_offset, align 8
  %99 = add nsw i64 %97, %98
  %100 = load i64, i64* @TM_CPPR, align 8
  %101 = add nsw i64 %99, %100
  %102 = load i64, i64* %6, align 8
  %103 = call i32 @out_8(i64 %101, i64 %102)
  br label %104

104:                                              ; preds = %91, %85
  %105 = load i64, i64* %5, align 8
  ret i64 %105
}

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @DBG_VERBOSE(i8*, i64) #1

declare dso_local i64 @xive_read_eq(%struct.xive_q*, i32) #1

declare dso_local i64 @irq_to_desc(i64) #1

declare dso_local i32 @pr_crit(i8*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @out_8(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
