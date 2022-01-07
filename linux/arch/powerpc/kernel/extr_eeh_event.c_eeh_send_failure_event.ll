; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_event.c_eeh_send_failure_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_event.c_eeh_send_failure_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_pe = type { i32 }

@eeh_debugfs_no_recover = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"EEH: Event dropped due to no_recover setting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eeh_send_failure_event(%struct.eeh_pe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eeh_pe*, align 8
  store %struct.eeh_pe* %0, %struct.eeh_pe** %3, align 8
  %4 = load i64, i64* @eeh_debugfs_no_recover, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %11

8:                                                ; preds = %1
  %9 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %10 = call i32 @__eeh_send_failure_event(%struct.eeh_pe* %9)
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %8, %6
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @__eeh_send_failure_event(%struct.eeh_pe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
