; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_va_layout.c_compute_layout.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_va_layout.c_compute_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__hyp_idmap_text_start = common dso_local global i32 0, align 4
@vabits_actual = common dso_local global i32 0, align 4
@high_memory = common dso_local global i32 0, align 4
@va_mask = common dso_local global i32 0, align 4
@tag_lsb = common dso_local global i32 0, align 4
@tag_val = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @compute_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_layout() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @__hyp_idmap_text_start, align 4
  %5 = call i32 @__pa_symbol(i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @vabits_actual, align 4
  %8 = sub nsw i32 %7, 1
  %9 = call i32 @BIT(i32 %8)
  %10 = and i32 %6, %9
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @vabits_actual, align 4
  %12 = sub nsw i32 %11, 1
  %13 = call i32 @BIT(i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = xor i32 %14, %13
  store i32 %15, i32* %2, align 4
  %16 = call i32 (...) @memblock_start_of_DRAM()
  %17 = call i64 @phys_to_virt(i32 %16)
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @high_memory, align 4
  %20 = sub nsw i32 %19, 1
  %21 = xor i32 %18, %20
  %22 = call i32 @fls64(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @vabits_actual, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %0
  %28 = load i32, i32* @vabits_actual, align 4
  %29 = sub nsw i32 %28, 1
  %30 = call i32 @BIT(i32 %29)
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* @va_mask, align 4
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @va_mask, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* @va_mask, align 4
  br label %52

35:                                               ; preds = %0
  %36 = load i32, i32* %3, align 4
  store i32 %36, i32* @tag_lsb, align 4
  %37 = load i32, i32* @tag_lsb, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @GENMASK_ULL(i32 %38, i32 0)
  store i32 %39, i32* @va_mask, align 4
  %40 = call i32 (...) @get_random_long()
  %41 = load i32, i32* @vabits_actual, align 4
  %42 = sub nsw i32 %41, 2
  %43 = load i32, i32* @tag_lsb, align 4
  %44 = call i32 @GENMASK_ULL(i32 %42, i32 %43)
  %45 = and i32 %40, %44
  store i32 %45, i32* @tag_val, align 4
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @tag_val, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* @tag_val, align 4
  %49 = load i32, i32* @tag_lsb, align 4
  %50 = load i32, i32* @tag_val, align 4
  %51 = ashr i32 %50, %49
  store i32 %51, i32* @tag_val, align 4
  br label %52

52:                                               ; preds = %35, %27
  ret void
}

declare dso_local i32 @__pa_symbol(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @fls64(i32) #1

declare dso_local i64 @phys_to_virt(i32) #1

declare dso_local i32 @memblock_start_of_DRAM(...) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @get_random_long(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
