; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_sc-rm7k.c___probe_tcache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_sc-rm7k.c___probe_tcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_stext = common dso_local global i32 0, align 4
@RM7K_CONF_TE = common dso_local global i32 0, align 4
@Index_Store_Tag_T = common dso_local global i32 0, align 4
@Index_Load_Tag_T = common dso_local global i32 0, align 4
@tcache_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__probe_tcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__probe_tcache() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  store i64 ptrtoint (i32* @_stext to i64), i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = and i64 %7, -8388608
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = add i64 %9, 8388608
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = load i32, i32* @RM7K_CONF_TE, align 4
  %14 = call i32 @set_c0_config(i32 %13)
  store i64 262144, i64* %5, align 8
  %15 = load i64, i64* %3, align 8
  store i64 %15, i64* %2, align 8
  br label %16

16:                                               ; preds = %27, %0
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ule i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i64, i64* %2, align 8
  %22 = inttoptr i64 %21 to i64*
  store i64* %22, i64** %6, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  call void asm sideeffect "nop", "r,~{dirflag},~{fpsr},~{flags}"(i64 %24) #2, !srcloc !2
  %25 = load i64, i64* %5, align 8
  %26 = shl i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %20
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %28, %29
  store i64 %30, i64* %2, align 8
  br label %16

31:                                               ; preds = %16
  %32 = call i32 @write_c0_taglo(i32 0)
  %33 = call i32 @write_c0_taghi(i32 0)
  %34 = load i32, i32* @Index_Store_Tag_T, align 4
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @cache_op(i32 %34, i64 %35)
  store i64 524288, i64* %5, align 8
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, 524288
  store i64 %38, i64* %2, align 8
  br label %39

39:                                               ; preds = %53, %31
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* %4, align 8
  %42 = icmp ule i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load i32, i32* @Index_Load_Tag_T, align 4
  %45 = load i64, i64* %2, align 8
  %46 = call i32 @cache_op(i32 %44, i64 %45)
  %47 = call i32 (...) @read_c0_taglo()
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %57

50:                                               ; preds = %43
  %51 = load i64, i64* %5, align 8
  %52 = shl i64 %51, 1
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %50
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* %5, align 8
  %56 = add i64 %54, %55
  store i64 %56, i64* %2, align 8
  br label %39

57:                                               ; preds = %49, %39
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* %2, align 8
  %60 = sub i64 %59, %58
  store i64 %60, i64* %2, align 8
  %61 = load i64, i64* %2, align 8
  store i64 %61, i64* @tcache_size, align 8
  %62 = load i32, i32* @RM7K_CONF_TE, align 4
  %63 = call i32 @clear_c0_config(i32 %62)
  %64 = load i64, i64* %1, align 8
  %65 = call i32 @local_irq_restore(i64 %64)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @set_c0_config(i32) #1

declare dso_local i32 @write_c0_taglo(i32) #1

declare dso_local i32 @write_c0_taghi(i32) #1

declare dso_local i32 @cache_op(i32, i64) #1

declare dso_local i32 @read_c0_taglo(...) #1

declare dso_local i32 @clear_c0_config(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 916}
