; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_event.c_print_debug_cf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_event.c_print_debug_cf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumf_ctr_info = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"CPU[%i] CPUM_CF: ver=%u.%u A=%04x E=%04x C=%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_debug_cf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_debug_cf() #0 {
  %1 = alloca %struct.cpumf_ctr_info, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @smp_processor_id()
  store i32 %3, i32* %2, align 4
  %4 = call i32 @memset(%struct.cpumf_ctr_info* %1, i32 0, i32 20)
  %5 = call i32 @qctri(%struct.cpumf_ctr_info* %1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %1, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %1, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %1, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %1, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %1, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %10, i32 %12, i32 %14, i32 %16, i32 %18)
  br label %20

20:                                               ; preds = %7, %0
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @memset(%struct.cpumf_ctr_info*, i32, i32) #1

declare dso_local i32 @qctri(%struct.cpumf_ctr_info*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
