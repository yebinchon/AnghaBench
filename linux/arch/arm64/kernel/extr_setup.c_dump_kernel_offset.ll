; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_setup.c_dump_kernel_offset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_setup.c_dump_kernel_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@CONFIG_RANDOMIZE_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Kernel Offset: 0x%lx from 0x%lx\0A\00", align 1
@KIMAGE_VADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"PHYS_OFFSET: 0x%llx\0A\00", align 1
@PHYS_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Kernel Offset: disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @dump_kernel_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_kernel_offset(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i64 (...) @kaslr_offset()
  store i64 %8, i64* %7, align 8
  %9 = load i32, i32* @CONFIG_RANDOMIZE_BASE, align 4
  %10 = call i64 @IS_ENABLED(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* @KIMAGE_VADDR, align 4
  %18 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %16, i32 %17)
  %19 = load i32, i32* @PHYS_OFFSET, align 4
  %20 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %23

21:                                               ; preds = %12, %3
  %22 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  ret i32 0
}

declare dso_local i64 @kaslr_offset(...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @pr_emerg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
