; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_handle_nmi_ping.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_handle_nmi_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.pt_regs = type { i32 }

@uv_cpu_nmi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@uv_nmi_ping_misses = common dso_local global i32 0, align 4
@NMI_DONE = common dso_local global i32 0, align 4
@uv_nmi_ping_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pt_regs*)* @uv_handle_nmi_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_handle_nmi_ping(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uv_cpu_nmi, i32 0, i32 2), align 4
  %8 = call i32 @this_cpu_inc(i32 %7)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uv_cpu_nmi, i32 0, i32 0), align 4
  %10 = call i32 @this_cpu_read(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = call i32 @local64_inc(i32* @uv_nmi_ping_misses)
  %14 = load i32, i32* @NMI_DONE, align 4
  store i32 %14, i32* %3, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uv_cpu_nmi, i32 0, i32 1), align 4
  %17 = call i32 @this_cpu_inc(i32 %16)
  %18 = call i32 @local64_inc(i32* @uv_nmi_ping_count)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %21 = call i32 @uv_handle_nmi(i32 %19, %struct.pt_regs* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uv_cpu_nmi, i32 0, i32 0), align 4
  %23 = call i32 @this_cpu_write(i32 %22, i32 0)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %15, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @local64_inc(i32*) #1

declare dso_local i32 @uv_handle_nmi(i32, %struct.pt_regs*) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
