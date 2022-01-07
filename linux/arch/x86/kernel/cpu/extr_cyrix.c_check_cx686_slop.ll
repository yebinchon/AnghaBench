; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cyrix.c_check_cx686_slop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cyrix.c_check_cx686_slop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }

@Cx86_dir0_msb = common dso_local global i32 0, align 4
@CX86_CCR3 = common dso_local global i32 0, align 4
@CX86_CCR5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Recalibrating delay loop with SLOP bit reset\0A\00", align 1
@loops_per_jiffy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @check_cx686_slop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_cx686_slop(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %6 = load i32, i32* @Cx86_dir0_msb, align 4
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %50

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @local_irq_save(i64 %9)
  %11 = load i32, i32* @CX86_CCR3, align 4
  %12 = call zeroext i8 @getCx86(i32 %11)
  store i8 %12, i8* %4, align 1
  %13 = load i32, i32* @CX86_CCR3, align 4
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 15
  %17 = or i32 %16, 16
  %18 = trunc i32 %17 to i8
  %19 = call i32 @setCx86(i32 %13, i8 zeroext %18)
  %20 = load i32, i32* @CX86_CCR5, align 4
  %21 = call zeroext i8 @getCx86(i32 %20)
  store i8 %21, i8* %5, align 1
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 2
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %8
  %27 = load i32, i32* @CX86_CCR5, align 4
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 253
  %31 = trunc i32 %30 to i8
  %32 = call i32 @setCx86(i32 %27, i8 zeroext %31)
  br label %33

33:                                               ; preds = %26, %8
  %34 = load i32, i32* @CX86_CCR3, align 4
  %35 = load i8, i8* %4, align 1
  %36 = call i32 @setCx86(i32 %34, i8 zeroext %35)
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @local_irq_restore(i64 %37)
  %39 = load i8, i8* %5, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 2
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 (...) @calibrate_delay()
  %46 = load i32, i32* @loops_per_jiffy, align 4
  %47 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %48 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %33
  br label %50

50:                                               ; preds = %49, %1
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local zeroext i8 @getCx86(i32) #1

declare dso_local i32 @setCx86(i32, i8 zeroext) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @calibrate_delay(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
