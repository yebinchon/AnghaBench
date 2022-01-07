; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_kprobe_exceptions_notify.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_kprobe_exceptions_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.die_args = type { i32, %struct.pt_regs* }
%struct.pt_regs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@PSW_MASK_IO = common dso_local global i32 0, align 4
@PSW_MASK_EXT = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i32 0, align 4
@PSW_MASK_PER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kprobe_exceptions_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.die_args*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.die_args*
  store %struct.die_args* %11, %struct.die_args** %7, align 8
  %12 = load %struct.die_args*, %struct.die_args** %7, align 8
  %13 = getelementptr inbounds %struct.die_args, %struct.die_args* %12, i32 0, i32 1
  %14 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  store %struct.pt_regs* %14, %struct.pt_regs** %8, align 8
  %15 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PSW_MASK_IO, align 4
  %21 = load i32, i32* @PSW_MASK_EXT, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i32 (...) @local_irq_disable()
  br label %27

27:                                               ; preds = %25, %3
  %28 = load i64, i64* %5, align 8
  switch i64 %28, label %59 [
    i64 130, label %29
    i64 129, label %36
    i64 128, label %43
  ]

29:                                               ; preds = %27
  %30 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %31 = call i32 @kprobe_handler(%struct.pt_regs* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %33, %29
  br label %60

36:                                               ; preds = %27
  %37 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %38 = call i32 @post_kprobe_handler(%struct.pt_regs* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %40, %36
  br label %60

43:                                               ; preds = %27
  %44 = call i32 (...) @preemptible()
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %43
  %47 = call i32 (...) @kprobe_running()
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %51 = load %struct.die_args*, %struct.die_args** %7, align 8
  %52 = getelementptr inbounds %struct.die_args, %struct.die_args* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @kprobe_trap_handler(%struct.pt_regs* %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %56, %49, %46, %43
  br label %60

59:                                               ; preds = %27
  br label %60

60:                                               ; preds = %59, %58, %42, %35
  %61 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PSW_MASK_IO, align 4
  %66 = load i32, i32* @PSW_MASK_EXT, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %60
  %71 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %72 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PSW_MASK_PER, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = call i32 @local_irq_restore(i32 %77)
  br label %79

79:                                               ; preds = %70, %60
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @kprobe_handler(%struct.pt_regs*) #1

declare dso_local i32 @post_kprobe_handler(%struct.pt_regs*) #1

declare dso_local i32 @preemptible(...) #1

declare dso_local i32 @kprobe_running(...) #1

declare dso_local i32 @kprobe_trap_handler(%struct.pt_regs*, i32) #1

declare dso_local i32 @local_irq_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
