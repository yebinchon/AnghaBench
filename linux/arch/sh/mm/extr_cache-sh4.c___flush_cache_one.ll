; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh4.c___flush_cache_one.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh4.c___flush_cache_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.cache_info }
%struct.cache_info = type { i32, i64 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @__flush_cache_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__flush_cache_one(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.cache_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i64, i64* %4, align 8
  store i64 %15, i64* %8, align 8
  store %struct.cache_info* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), %struct.cache_info** %9, align 8
  %16 = load %struct.cache_info*, %struct.cache_info** %9, align 8
  %17 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.cache_info*, %struct.cache_info** %9, align 8
  %20 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 asm sideeffect "mov.l 1f, $0\0A\09add   $1, $0\0A\09jmp   @$0\0A\09nop\0A\09.balign 4\0A\091:  .long 2f\0A\092:\0A", "=&r,r,~{dirflag},~{fpsr},~{flags}"(i64 %22) #1, !srcloc !2
  store i64 %23, i64* %14, align 8
  br label %24

24:                                               ; preds = %50, %3
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %13, align 8
  br label %30

30:                                               ; preds = %42, %24
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %11, align 8
  %33 = inttoptr i64 %32 to i64*
  store volatile i64 %31, i64* %33, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %11, align 8
  %36 = add i64 %35, 32
  %37 = inttoptr i64 %36 to i64*
  store volatile i64 %34, i64* %37, align 8
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %38, 64
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %13, align 8
  %41 = add i64 %40, 64
  store i64 %41, i64* %13, align 8
  br label %42

42:                                               ; preds = %30
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %30, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %24, label %54

54:                                               ; preds = %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 722, i32 737, i32 763, i32 786, i32 803, i32 826, i32 852}
