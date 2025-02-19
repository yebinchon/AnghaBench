; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec.c_machine_kexec.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec.c_machine_kexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i64 }

@KEXEC_TYPE_CRASH = common dso_local global i64 0, align 8
@__machine_kexec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_kexec(%struct.kimage* %0) #0 {
  %2 = alloca %struct.kimage*, align 8
  store %struct.kimage* %0, %struct.kimage** %2, align 8
  %3 = load %struct.kimage*, %struct.kimage** %2, align 8
  %4 = getelementptr inbounds %struct.kimage, %struct.kimage* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.kimage*, %struct.kimage** %2, align 8
  %10 = call i32 @kdump_csum_valid(%struct.kimage* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  br label %19

13:                                               ; preds = %8, %1
  %14 = call i32 (...) @tracer_disable()
  %15 = call i32 (...) @smp_send_stop()
  %16 = load i32, i32* @__machine_kexec, align 4
  %17 = load %struct.kimage*, %struct.kimage** %2, align 8
  %18 = call i32 @smp_call_ipl_cpu(i32 %16, %struct.kimage* %17)
  br label %19

19:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @kdump_csum_valid(%struct.kimage*) #1

declare dso_local i32 @tracer_disable(...) #1

declare dso_local i32 @smp_send_stop(...) #1

declare dso_local i32 @smp_call_ipl_cpu(i32, %struct.kimage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
