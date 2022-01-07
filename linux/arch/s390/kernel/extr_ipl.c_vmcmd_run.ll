; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_vmcmd_run.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_vmcmd_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shutdown_trigger = type { i32 }

@ON_REIPL_STR = common dso_local global i32 0, align 4
@vmcmd_on_reboot = common dso_local global i8* null, align 8
@ON_PANIC_STR = common dso_local global i32 0, align 4
@vmcmd_on_panic = common dso_local global i8* null, align 8
@ON_HALT_STR = common dso_local global i32 0, align 4
@vmcmd_on_halt = common dso_local global i8* null, align 8
@ON_POFF_STR = common dso_local global i32 0, align 4
@vmcmd_on_poff = common dso_local global i8* null, align 8
@ON_RESTART_STR = common dso_local global i32 0, align 4
@vmcmd_on_restart = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shutdown_trigger*)* @vmcmd_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmcmd_run(%struct.shutdown_trigger* %0) #0 {
  %2 = alloca %struct.shutdown_trigger*, align 8
  %3 = alloca i8*, align 8
  store %struct.shutdown_trigger* %0, %struct.shutdown_trigger** %2, align 8
  %4 = load %struct.shutdown_trigger*, %struct.shutdown_trigger** %2, align 8
  %5 = getelementptr inbounds %struct.shutdown_trigger, %struct.shutdown_trigger* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ON_REIPL_STR, align 4
  %8 = call i64 @strcmp(i32 %6, i32 %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i8*, i8** @vmcmd_on_reboot, align 8
  store i8* %11, i8** %3, align 8
  br label %53

12:                                               ; preds = %1
  %13 = load %struct.shutdown_trigger*, %struct.shutdown_trigger** %2, align 8
  %14 = getelementptr inbounds %struct.shutdown_trigger, %struct.shutdown_trigger* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ON_PANIC_STR, align 4
  %17 = call i64 @strcmp(i32 %15, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i8*, i8** @vmcmd_on_panic, align 8
  store i8* %20, i8** %3, align 8
  br label %52

21:                                               ; preds = %12
  %22 = load %struct.shutdown_trigger*, %struct.shutdown_trigger** %2, align 8
  %23 = getelementptr inbounds %struct.shutdown_trigger, %struct.shutdown_trigger* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ON_HALT_STR, align 4
  %26 = call i64 @strcmp(i32 %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i8*, i8** @vmcmd_on_halt, align 8
  store i8* %29, i8** %3, align 8
  br label %51

30:                                               ; preds = %21
  %31 = load %struct.shutdown_trigger*, %struct.shutdown_trigger** %2, align 8
  %32 = getelementptr inbounds %struct.shutdown_trigger, %struct.shutdown_trigger* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ON_POFF_STR, align 4
  %35 = call i64 @strcmp(i32 %33, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i8*, i8** @vmcmd_on_poff, align 8
  store i8* %38, i8** %3, align 8
  br label %50

39:                                               ; preds = %30
  %40 = load %struct.shutdown_trigger*, %struct.shutdown_trigger** %2, align 8
  %41 = getelementptr inbounds %struct.shutdown_trigger, %struct.shutdown_trigger* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ON_RESTART_STR, align 4
  %44 = call i64 @strcmp(i32 %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i8*, i8** @vmcmd_on_restart, align 8
  store i8* %47, i8** %3, align 8
  br label %49

48:                                               ; preds = %39
  br label %61

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49, %37
  br label %51

51:                                               ; preds = %50, %28
  br label %52

52:                                               ; preds = %51, %19
  br label %53

53:                                               ; preds = %52, %10
  %54 = load i8*, i8** %3, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @__cpcmd(i8* %59, i32* null, i32 0, i32* null)
  br label %61

61:                                               ; preds = %58, %57, %48
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @__cpcmd(i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
