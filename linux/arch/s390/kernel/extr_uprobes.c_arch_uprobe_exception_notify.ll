; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_uprobes.c_arch_uprobe_exception_notify.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_uprobes.c_arch_uprobe_exception_notify.c"
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
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.die_args*
  store %struct.die_args* %11, %struct.die_args** %8, align 8
  %12 = load %struct.die_args*, %struct.die_args** %8, align 8
  %13 = getelementptr inbounds %struct.die_args, %struct.die_args* %12, i32 0, i32 0
  %14 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  store %struct.pt_regs* %14, %struct.pt_regs** %9, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %16 = call i32 @user_mode(%struct.pt_regs* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %19, i32* %4, align 4
  br label %47

20:                                               ; preds = %3
  %21 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 512
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %27, i32* %4, align 4
  br label %47

28:                                               ; preds = %20
  %29 = load i64, i64* %6, align 8
  switch i64 %29, label %44 [
    i64 129, label %30
    i64 128, label %37
  ]

30:                                               ; preds = %28
  %31 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %32 = call i32 @uprobe_pre_sstep_notifier(%struct.pt_regs* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %35, i32* %4, align 4
  br label %47

36:                                               ; preds = %30
  br label %45

37:                                               ; preds = %28
  %38 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %39 = call i32 @uprobe_post_sstep_notifier(%struct.pt_regs* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %42, i32* %4, align 4
  br label %47

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %28, %43
  br label %45

45:                                               ; preds = %44, %36
  %46 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %41, %34, %26, %18
  %48 = load i32, i32* %4, align 4
  ret i32 %48
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
