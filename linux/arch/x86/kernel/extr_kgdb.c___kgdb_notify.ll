; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c___kgdb_notify.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c___kgdb_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_args = type { i32, i32, %struct.pt_regs* }
%struct.pt_regs = type { i32 }

@kgdb_cpu_doing_single_step = common dso_local global i32 0, align 4
@TIF_SINGLESTEP = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.die_args*, i64)* @__kgdb_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__kgdb_notify(%struct.die_args* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.die_args*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pt_regs*, align 8
  store %struct.die_args* %0, %struct.die_args** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.die_args*, %struct.die_args** %4, align 8
  %8 = getelementptr inbounds %struct.die_args, %struct.die_args* %7, i32 0, i32 2
  %9 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  store %struct.pt_regs* %9, %struct.pt_regs** %6, align 8
  %10 = load i64, i64* %5, align 8
  switch i64 %10, label %31 [
    i64 128, label %11
  ]

11:                                               ; preds = %2
  %12 = call i32 @atomic_read(i32* @kgdb_cpu_doing_single_step)
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %16 = call i32 @user_mode(%struct.pt_regs* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %20 = load %struct.die_args*, %struct.die_args** %4, align 8
  %21 = call i32 @single_step_cont(%struct.pt_regs* %19, %struct.die_args* %20)
  store i32 %21, i32* %3, align 4
  br label %54

22:                                               ; preds = %14
  br label %38

23:                                               ; preds = %11
  %24 = load i32, i32* @TIF_SINGLESTEP, align 4
  %25 = call i32 @test_thread_flag(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %28, i32* %3, align 4
  br label %54

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %2, %30
  %32 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %33 = call i32 @user_mode(%struct.pt_regs* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %36, i32* %3, align 4
  br label %54

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %22
  %39 = load %struct.die_args*, %struct.die_args** %4, align 8
  %40 = getelementptr inbounds %struct.die_args, %struct.die_args* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.die_args*, %struct.die_args** %4, align 8
  %43 = getelementptr inbounds %struct.die_args, %struct.die_args* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %47 = call i64 @kgdb_handle_exception(i32 %41, i32 %44, i64 %45, %struct.pt_regs* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %50, i32* %3, align 4
  br label %54

51:                                               ; preds = %38
  %52 = call i32 (...) @touch_nmi_watchdog()
  %53 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %49, %35, %27, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @single_step_cont(%struct.pt_regs*, %struct.die_args*) #1

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i64 @kgdb_handle_exception(i32, i32, i64, %struct.pt_regs*) #1

declare dso_local i32 @touch_nmi_watchdog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
