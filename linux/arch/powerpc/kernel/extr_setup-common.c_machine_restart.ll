; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_setup-common.c_machine_restart.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_setup-common.c_machine_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*)* }

@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_restart(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (...) @machine_shutdown()
  %4 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %5 = icmp ne i32 (i8*)* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 %7(i8* %8)
  br label %10

10:                                               ; preds = %6, %1
  %11 = call i32 (...) @smp_send_stop()
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @do_kernel_restart(i8* %12)
  %14 = call i32 @mdelay(i32 1000)
  %15 = call i32 (...) @machine_hang()
  ret void
}

declare dso_local i32 @machine_shutdown(...) #1

declare dso_local i32 @smp_send_stop(...) #1

declare dso_local i32 @do_kernel_restart(i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @machine_hang(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
