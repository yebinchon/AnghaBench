; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_sc-rm7k.c_rm7k_sc_inv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_sc-rm7k.c_rm7k_sc_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"rm7k_sc_inv[%08lx,%08lx]\00", align 1
@rm7k_tcache_init = common dso_local global i32 0, align 4
@tc_pagesize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @rm7k_sc_inv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rm7k_sc_inv(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %7, i64 %8)
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @blast_inv_scache_range(i64 %14, i64 %17)
  %19 = load i32, i32* @rm7k_tcache_init, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %50

22:                                               ; preds = %2
  %23 = load i64, i64* %3, align 8
  %24 = load i32, i32* @tc_pagesize, align 4
  %25 = sub nsw i32 %24, 1
  %26 = xor i32 %25, -1
  %27 = sext i32 %26 to i64
  %28 = and i64 %23, %27
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %29, %30
  %32 = sub i64 %31, 1
  %33 = load i32, i32* @tc_pagesize, align 4
  %34 = sub nsw i32 %33, 1
  %35 = xor i32 %34, -1
  %36 = sext i32 %35 to i64
  %37 = and i64 %32, %36
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %22, %45
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @invalidate_tcache_page(i64 %39)
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %50

45:                                               ; preds = %38
  %46 = load i32, i32* @tc_pagesize, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %6, align 8
  br label %38

50:                                               ; preds = %21, %44
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blast_inv_scache_range(i64, i64) #1

declare dso_local i32 @invalidate_tcache_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
