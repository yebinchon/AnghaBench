; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_event.c_perf_pmu_name.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_event.c_perf_pmu_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"CPU-Measurement Facilities (CPU-MF)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pmu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @perf_pmu_name() #0 {
  %1 = alloca i8*, align 8
  %2 = call i64 (...) @cpum_cf_avail()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = call i64 (...) @cpum_sf_avail()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %9

8:                                                ; preds = %4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %9

9:                                                ; preds = %8, %7
  %10 = load i8*, i8** %1, align 8
  ret i8* %10
}

declare dso_local i64 @cpum_cf_avail(...) #1

declare dso_local i64 @cpum_sf_avail(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
