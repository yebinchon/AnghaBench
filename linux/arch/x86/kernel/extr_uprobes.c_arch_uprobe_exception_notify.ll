; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_uprobes.c_arch_uprobe_exception_notify.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_uprobes.c_arch_uprobe_exception_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.die_args = type { %struct.pt_regs* }
%struct.pt_regs = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_uprobe_exception_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.die_args*, align 8
  %9 = alloca %struct.pt_regs*, align 8
  %10 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.die_args*
  store %struct.die_args* %12, %struct.die_args** %8, align 8
  %13 = load %struct.die_args*, %struct.die_args** %8, align 8
  %14 = getelementptr inbounds %struct.die_args, %struct.die_args* %13, i32 0, i32 0
  %15 = load %struct.pt_regs*, %struct.pt_regs** %14, align 8
  store %struct.pt_regs* %15, %struct.pt_regs** %9, align 8
  %16 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %18 = icmp ne %struct.pt_regs* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %21 = call i32 @user_mode(%struct.pt_regs* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %24, i32* %4, align 4
  br label %44

25:                                               ; preds = %19, %3
  %26 = load i64, i64* %6, align 8
  switch i64 %26, label %41 [
    i64 128, label %27
    i64 129, label %34
  ]

27:                                               ; preds = %25
  %28 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %29 = call i32 @uprobe_pre_sstep_notifier(%struct.pt_regs* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %31, %27
  br label %42

34:                                               ; preds = %25
  %35 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %36 = call i32 @uprobe_post_sstep_notifier(%struct.pt_regs* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %38, %34
  br label %41

41:                                               ; preds = %25, %40
  br label %42

42:                                               ; preds = %41, %33
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %23
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @uprobe_pre_sstep_notifier(%struct.pt_regs*) #1

declare dso_local i32 @uprobe_post_sstep_notifier(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
