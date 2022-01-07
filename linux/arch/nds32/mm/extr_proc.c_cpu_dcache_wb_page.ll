; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_cpu_dcache_wb_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_cpu_dcache_wb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@L1_cache_info = common dso_local global %struct.TYPE_2__* null, align 8
@DCACHE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@NDS32_CCTL_L1D_IX_RWD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_dcache_wb_page(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @L1_cache_info, align 8
  %6 = load i64, i64* @DCACHE, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @PAGE_SIZE, align 8
  %12 = add i64 %10, %11
  store i64 %12, i64* %4, align 8
  br label %13

13:                                               ; preds = %30, %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = sub i64 %15, %14
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  call void asm sideeffect "\0A\09cctl $0, L1D_VA_WB", "r,~{dirflag},~{fpsr},~{flags}"(i64 %17) #2, !srcloc !2
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = sub i64 %19, %18
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  call void asm sideeffect "\0A\09cctl $0, L1D_VA_WB", "r,~{dirflag},~{fpsr},~{flags}"(i64 %21) #2, !srcloc !3
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = sub i64 %23, %22
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  call void asm sideeffect "\0A\09cctl $0, L1D_VA_WB", "r,~{dirflag},~{fpsr},~{flags}"(i64 %25) #2, !srcloc !4
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = sub i64 %27, %26
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  call void asm sideeffect "\0A\09cctl $0, L1D_VA_WB", "r,~{dirflag},~{fpsr},~{flags}"(i64 %29) #2, !srcloc !5
  br label %30

30:                                               ; preds = %13
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %2, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %13, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @NDS32_CCTL_L1D_IX_RWD, align 4
  %36 = call i32 @__nds32__cctlidx_read(i32 %35, i32 0)
  ret void
}

declare dso_local i32 @__nds32__cctlidx_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 563, i32 566}
!3 = !{i32 641, i32 644}
!4 = !{i32 719, i32 722}
!5 = !{i32 797, i32 800}
