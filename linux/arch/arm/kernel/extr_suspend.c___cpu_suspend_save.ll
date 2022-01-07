; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_suspend.c___cpu_suspend_save.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_suspend.c___cpu_suspend_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@idmap_pgd = common dso_local global i32* null, align 8
@cpu_do_resume = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cpu_suspend_save(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %9, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @virt_to_phys(i32* %11)
  %13 = load i32*, i32** %8, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** @idmap_pgd, align 8
  %15 = call i32 @virt_to_phys(i32* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %21 = load i32*, i32** @cpu_do_resume, align 8
  %22 = call i32 @virt_to_phys(i32* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @cpu_do_suspend(i32* %25)
  %27 = call i32 (...) @flush_cache_louis()
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @__cpuc_flush_dcache_area(i32* %28, i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @__cpuc_flush_dcache_area(i32* %31, i32 4)
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @outer_clean_range(i32 %34, i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @virt_to_phys(i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @virt_to_phys(i32* %42)
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @outer_clean_range(i32 %41, i32 %46)
  ret void
}

declare dso_local i32 @virt_to_phys(i32*) #1

declare dso_local i32 @cpu_do_suspend(i32*) #1

declare dso_local i32 @flush_cache_louis(...) #1

declare dso_local i32 @__cpuc_flush_dcache_area(i32*, i32) #1

declare dso_local i32 @outer_clean_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
