; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_spram.c_dspram_load_tag.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_spram.c_dspram_load_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERRCTL_SPRAM = common dso_local global i32 0, align 4
@Index_Load_Tag_D = common dso_local global i32 0, align 4
@CKSEG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dspram_load_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspram_load_tag(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @ERRCTL_SPRAM, align 4
  %6 = call i32 @bis_c0_errctl(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = call i32 (...) @ehb()
  %8 = load i32, i32* @Index_Load_Tag_D, align 4
  %9 = load i32, i32* @CKSEG0, align 4
  %10 = load i32, i32* %2, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @cache_op(i32 %8, i32 %11)
  %13 = call i32 (...) @ehb()
  %14 = call i32 (...) @read_c0_dtaglo()
  store i32 %14, i32* %3, align 4
  %15 = call i32 (...) @ehb()
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @write_c0_errctl(i32 %16)
  %18 = call i32 (...) @ehb()
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @bis_c0_errctl(i32) #1

declare dso_local i32 @ehb(...) #1

declare dso_local i32 @cache_op(i32, i32) #1

declare dso_local i32 @read_c0_dtaglo(...) #1

declare dso_local i32 @write_c0_errctl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
