; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_sc-rm7k.c___rm7k_tc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_sc-rm7k.c___rm7k_tc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RM7K_CONF_TE = common dso_local global i32 0, align 4
@tcache_size = common dso_local global i32 0, align 4
@Index_Store_Tag_T = common dso_local global i32 0, align 4
@tc_lsize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__rm7k_tc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rm7k_tc_enable() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @RM7K_CONF_TE, align 4
  %3 = call i32 @set_c0_config(i32 %2)
  %4 = call i32 @write_c0_taglo(i32 0)
  %5 = call i32 @write_c0_taghi(i32 0)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %15, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @tcache_size, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load i32, i32* @Index_Store_Tag_T, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @CKSEG0ADDR(i32 %12)
  %14 = call i32 @cache_op(i32 %11, i32 %13)
  br label %15

15:                                               ; preds = %10
  %16 = load i64, i64* @tc_lsize, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %1, align 4
  br label %6

21:                                               ; preds = %6
  ret void
}

declare dso_local i32 @set_c0_config(i32) #1

declare dso_local i32 @write_c0_taglo(i32) #1

declare dso_local i32 @write_c0_taghi(i32) #1

declare dso_local i32 @cache_op(i32, i32) #1

declare dso_local i32 @CKSEG0ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
