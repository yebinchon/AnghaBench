; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_uprobes.c_arch_uprobe_exception_notify.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_uprobes.c_arch_uprobe_exception_notify.c"
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
  %16 = icmp ne %struct.pt_regs* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %22, i32* %4, align 4
  br label %48

23:                                               ; preds = %3
  %24 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %25 = call i32 @user_mode(%struct.pt_regs* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %28, i32* %4, align 4
  br label %48

29:                                               ; preds = %23
  %30 = load i64, i64* %6, align 8
  switch i64 %30, label %45 [
    i64 129, label %31
    i64 128, label %38
  ]

31:                                               ; preds = %29
  %32 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %33 = call i32 @uprobe_pre_sstep_notifier(%struct.pt_regs* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %36, i32* %4, align 4
  br label %48

37:                                               ; preds = %31
  br label %46

38:                                               ; preds = %29
  %39 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %40 = call i32 @uprobe_post_sstep_notifier(%struct.pt_regs* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %43, i32* %4, align 4
  br label %48

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %29, %44
  br label %46

46:                                               ; preds = %45, %37
  %47 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %42, %35, %27, %21
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @uprobe_pre_sstep_notifier(%struct.pt_regs*) #1

declare dso_local i32 @uprobe_post_sstep_notifier(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
