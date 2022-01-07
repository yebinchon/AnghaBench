; ModuleID = '/home/carl/AnghaBench/ish/tools/extr_unicornomatic.c_uc_map.c'
source_filename = "/home/carl/AnghaBench/ish/tools/extr_unicornomatic.c_uc_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@UC_PROT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mmap emulation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64)* @uc_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uc_map(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @uc_unmap(i32* %8, i64 %9, i64 %10)
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %26, %3
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %15, %16
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = load i32, i32* @UC_PROT_ALL, align 4
  %24 = call i32 @uc_mem_map(i32* %20, i64 %21, i64 %22, i32 %23)
  %25 = call i32 @uc_trycall(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %19
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %7, align 8
  br label %13

30:                                               ; preds = %13
  ret void
}

declare dso_local i32 @uc_unmap(i32*, i64, i64) #1

declare dso_local i32 @uc_trycall(i32, i8*) #1

declare dso_local i32 @uc_mem_map(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
