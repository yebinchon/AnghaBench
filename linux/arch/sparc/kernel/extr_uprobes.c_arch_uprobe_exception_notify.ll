; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_uprobes.c_arch_uprobe_exception_notify.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_uprobes.c_arch_uprobe_exception_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.die_args = type { i64 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_uprobe_exception_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.die_args*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.die_args*
  store %struct.die_args* %12, %struct.die_args** %9, align 8
  %13 = load %struct.die_args*, %struct.die_args** %9, align 8
  %14 = getelementptr inbounds %struct.die_args, %struct.die_args* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.die_args*, %struct.die_args** %9, align 8
  %19 = getelementptr inbounds %struct.die_args, %struct.die_args* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @user_mode(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %24, i32* %4, align 4
  br label %48

25:                                               ; preds = %17, %3
  %26 = load i64, i64* %6, align 8
  switch i64 %26, label %45 [
    i64 129, label %27
    i64 128, label %36
  ]

27:                                               ; preds = %25
  %28 = load %struct.die_args*, %struct.die_args** %9, align 8
  %29 = getelementptr inbounds %struct.die_args, %struct.die_args* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @uprobe_pre_sstep_notifier(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %27
  br label %46

36:                                               ; preds = %25
  %37 = load %struct.die_args*, %struct.die_args** %9, align 8
  %38 = getelementptr inbounds %struct.die_args, %struct.die_args* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @uprobe_post_sstep_notifier(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %42, %36
  br label %45

45:                                               ; preds = %25, %44
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %23
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @user_mode(i64) #1

declare dso_local i32 @uprobe_pre_sstep_notifier(i64) #1

declare dso_local i32 @uprobe_post_sstep_notifier(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
