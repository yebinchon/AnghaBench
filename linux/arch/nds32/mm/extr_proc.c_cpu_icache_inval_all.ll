; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_cpu_icache_inval_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_cpu_icache_inval_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@L1_cache_info = common dso_local global %struct.TYPE_2__* null, align 8
@ICACHE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_icache_inval_all() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @L1_cache_info, align 8
  %4 = load i64, i64* @ICACHE, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i64 %4
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @L1_cache_info, align 8
  %10 = load i64, i64* @ICACHE, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = mul i64 %8, %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @L1_cache_info, align 8
  %16 = load i64, i64* @ICACHE, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = mul i64 %14, %19
  store i64 %20, i64* %1, align 8
  br label %21

21:                                               ; preds = %38, %0
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* %1, align 8
  %24 = sub i64 %23, %22
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  call void asm sideeffect "\0A\09cctl $0, L1I_IX_INVAL", "r,~{dirflag},~{fpsr},~{flags}"(i64 %25) #2, !srcloc !2
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* %1, align 8
  %28 = sub i64 %27, %26
  store i64 %28, i64* %1, align 8
  %29 = load i64, i64* %1, align 8
  call void asm sideeffect "\0A\09cctl $0, L1I_IX_INVAL", "r,~{dirflag},~{fpsr},~{flags}"(i64 %29) #2, !srcloc !3
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* %1, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  call void asm sideeffect "\0A\09cctl $0, L1I_IX_INVAL", "r,~{dirflag},~{fpsr},~{flags}"(i64 %33) #2, !srcloc !4
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* %1, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %1, align 8
  %37 = load i64, i64* %1, align 8
  call void asm sideeffect "\0A\09cctl $0, L1I_IX_INVAL", "r,~{dirflag},~{fpsr},~{flags}"(i64 %37) #2, !srcloc !5
  br label %38

38:                                               ; preds = %21
  %39 = load i64, i64* %1, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %21, label %41

41:                                               ; preds = %38
  %42 = call i32 (...) @__nds32__isb()
  ret void
}

declare dso_local i32 @__nds32__isb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 570, i32 573}
!3 = !{i32 651, i32 654}
!4 = !{i32 732, i32 735}
!5 = !{i32 813, i32 816}
