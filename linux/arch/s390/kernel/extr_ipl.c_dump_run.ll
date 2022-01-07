; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_dump_run.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_dump_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shutdown_trigger = type { i32 }

@dump_type = common dso_local global i64 0, align 8
@DUMP_TYPE_NONE = common dso_local global i64 0, align 8
@__dump_run = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shutdown_trigger*)* @dump_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_run(%struct.shutdown_trigger* %0) #0 {
  %2 = alloca %struct.shutdown_trigger*, align 8
  store %struct.shutdown_trigger* %0, %struct.shutdown_trigger** %2, align 8
  %3 = load i64, i64* @dump_type, align 8
  %4 = load i64, i64* @DUMP_TYPE_NONE, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %11

7:                                                ; preds = %1
  %8 = call i32 (...) @smp_send_stop()
  %9 = load i32, i32* @__dump_run, align 4
  %10 = call i32 @smp_call_ipl_cpu(i32 %9, i32* null)
  br label %11

11:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @smp_send_stop(...) #1

declare dso_local i32 @smp_call_ipl_cpu(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
