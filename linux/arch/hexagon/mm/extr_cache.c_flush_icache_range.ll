; ModuleID = '/home/carl/AnghaBench/linux/arch/hexagon/mm/extr_cache.c_flush_icache_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/hexagon/mm/extr_cache.c_flush_icache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_icache_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = sub i64 %9, 1
  %11 = call i64 @spanlines(i64 %8, i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i32, i32* @LINESIZE, align 4
  %13 = sub nsw i32 %12, 1
  %14 = xor i32 %13, -1
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %3, align 8
  %17 = and i64 %16, %15
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @local_irq_save(i64 %18)
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %30, %2
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i64, i64* %3, align 8
  call void asm sideeffect "\09dccleana($0); \09icinva($0);\09", "r,~{dirflag},~{fpsr},~{flags}"(i64 %25) #2, !srcloc !2
  %26 = load i32, i32* @LINESIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %20

33:                                               ; preds = %20
  call void asm sideeffect "isync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @local_irq_restore(i64 %34)
  ret void
}

declare dso_local i64 @spanlines(i64, i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 538}
!3 = !{i32 652}
