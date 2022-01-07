; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap-secure.c_omap_secure_dispatcher.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap-secure.c_omap_secure_dispatcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_secure_dispatcher(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [5 x i32], align 16
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %10, align 4
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load i32, i32* %11, align 4
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %12, align 4
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 2
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %13, align 4
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 3
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %14, align 4
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 4
  store i32 %25, i32* %26, align 16
  %27 = call i32 (...) @flush_cache_all()
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %29 = call i32 @__pa(i32* %28)
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %31 = getelementptr inbounds i32, i32* %30, i64 5
  %32 = call i32 @__pa(i32* %31)
  %33 = call i32 @outer_clean_range(i32 %29, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %37 = call i32 @__pa(i32* %36)
  %38 = call i32 @omap_smc2(i32 %34, i32 %35, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  ret i32 %39
}

declare dso_local i32 @flush_cache_all(...) #1

declare dso_local i32 @outer_clean_range(i32, i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32 @omap_smc2(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
