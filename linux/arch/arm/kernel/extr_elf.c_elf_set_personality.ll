; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_elf.c_elf_set_personality.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_elf.c_elf_set_personality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.elf32_hdr = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@PER_MASK = common dso_local global i32 0, align 4
@PER_LINUX = common dso_local global i32 0, align 4
@EF_ARM_EABI_MASK = common dso_local global i32 0, align 4
@EF_ARM_EABI_UNKNOWN = common dso_local global i32 0, align 4
@EF_ARM_APCS_26 = common dso_local global i32 0, align 4
@ADDR_LIMIT_32BIT = common dso_local global i32 0, align 4
@elf_hwcap = common dso_local global i32 0, align 4
@HWCAP_IWMMXT = common dso_local global i32 0, align 4
@EF_ARM_SOFT_FLOAT = common dso_local global i32 0, align 4
@TIF_USING_IWMMXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elf_set_personality(%struct.elf32_hdr* %0) #0 {
  %2 = alloca %struct.elf32_hdr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.elf32_hdr* %0, %struct.elf32_hdr** %2, align 8
  %5 = load %struct.elf32_hdr*, %struct.elf32_hdr** %2, align 8
  %6 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PER_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @PER_LINUX, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @EF_ARM_EABI_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @EF_ARM_EABI_UNKNOWN, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @EF_ARM_APCS_26, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @ADDR_LIMIT_32BIT, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %22, %1
  %33 = load i32, i32* @ADDR_LIMIT_32BIT, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @set_personality(i32 %37)
  %39 = load i32, i32* @elf_hwcap, align 4
  %40 = load i32, i32* @HWCAP_IWMMXT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @EF_ARM_EABI_MASK, align 4
  %46 = load i32, i32* @EF_ARM_SOFT_FLOAT, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @TIF_USING_IWMMXT, align 4
  %52 = call i32 @set_thread_flag(i32 %51)
  br label %56

53:                                               ; preds = %43, %36
  %54 = load i32, i32* @TIF_USING_IWMMXT, align 4
  %55 = call i32 @clear_thread_flag(i32 %54)
  br label %56

56:                                               ; preds = %53, %50
  ret void
}

declare dso_local i32 @set_personality(i32) #1

declare dso_local i32 @set_thread_flag(i32) #1

declare dso_local i32 @clear_thread_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
