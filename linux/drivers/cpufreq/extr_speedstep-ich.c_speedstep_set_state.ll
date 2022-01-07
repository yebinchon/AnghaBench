; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-ich.c_speedstep_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-ich.c_speedstep_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pmbase = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"read at pmbase 0x%x + 0x50 returned 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"writing 0x%x to pmbase 0x%x + 0x50\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"change to %u MHz succeeded\0A\00", align 1
@speedstep_processor = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"change failed - I/O error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @speedstep_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speedstep_set_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %65

9:                                                ; preds = %1
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load i32, i32* @pmbase, align 4
  %13 = add nsw i32 %12, 80
  %14 = call i32 @inb(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @pmbase, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 254
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @pmbase, align 4
  %25 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @pmbase, align 4
  %27 = add nsw i32 %26, 32
  %28 = call i32 @inb(i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, 1
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @pmbase, align 4
  %33 = add nsw i32 %32, 32
  %34 = call i32 @outb(i32 %31, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @pmbase, align 4
  %37 = add nsw i32 %36, 80
  %38 = call i32 @outb(i32 %35, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, 254
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @pmbase, align 4
  %43 = add nsw i32 %42, 32
  %44 = call i32 @outb(i32 %41, i32 %43)
  %45 = load i32, i32* @pmbase, align 4
  %46 = add nsw i32 %45, 80
  %47 = call i32 @inb(i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @local_irq_restore(i64 %48)
  %50 = load i32, i32* @pmbase, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %9
  %58 = load i32, i32* @speedstep_processor, align 4
  %59 = call i32 @speedstep_get_frequency(i32 %58)
  %60 = sdiv i32 %59, 1000
  %61 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %64

62:                                               ; preds = %9
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57
  br label %65

65:                                               ; preds = %64, %8
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @speedstep_get_frequency(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
