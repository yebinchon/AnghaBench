; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_core.c_microcode_init_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_core.c_microcode_init_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucode_cpu_info = type { i64 }
%struct.TYPE_4__ = type { i32 (i32, i32*, i32)* }
%struct.TYPE_3__ = type { i32 }

@ucode_cpu_info = common dso_local global %struct.ucode_cpu_info* null, align 8
@UCODE_OK = common dso_local global i32 0, align 4
@UCODE_ERROR = common dso_local global i32 0, align 4
@system_state = common dso_local global i64 0, align 8
@SYSTEM_RUNNING = common dso_local global i64 0, align 8
@UCODE_NFOUND = common dso_local global i32 0, align 4
@microcode_ops = common dso_local global %struct.TYPE_4__* null, align 8
@microcode_pdev = common dso_local global %struct.TYPE_3__* null, align 8
@UCODE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CPU%d updated upon init\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @microcode_init_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microcode_init_cpu(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucode_cpu_info*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** @ucode_cpu_info, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %8, i64 %10
  store %struct.ucode_cpu_info* %11, %struct.ucode_cpu_info** %7, align 8
  %12 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %7, align 8
  %13 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @UCODE_OK, align 4
  store i32 %17, i32* %3, align 4
  br label %49

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @collect_cpu_info(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @UCODE_ERROR, align 4
  store i32 %23, i32* %3, align 4
  br label %49

24:                                               ; preds = %18
  %25 = load i64, i64* @system_state, align 8
  %26 = load i64, i64* @SYSTEM_RUNNING, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @UCODE_NFOUND, align 4
  store i32 %29, i32* %3, align 4
  br label %49

30:                                               ; preds = %24
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @microcode_ops, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @microcode_pdev, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %5, align 4
  %38 = call i32 %33(i32 %34, i32* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @UCODE_NEW, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @apply_microcode_on_target(i32 %45)
  br label %47

47:                                               ; preds = %42, %30
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %28, %22, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @collect_cpu_info(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @apply_microcode_on_target(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
