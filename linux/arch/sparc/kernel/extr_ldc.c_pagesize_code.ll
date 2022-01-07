; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_pagesize_code.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_pagesize_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pagesize_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pagesize_code() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PAGE_SIZE, align 4
  switch i32 %2, label %3 [
    i32 8192, label %4
    i32 65536, label %5
    i32 524288, label %6
    i32 4194304, label %7
    i32 33554432, label %8
    i32 268435456, label %9
  ]

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %0, %3
  store i32 0, i32* %1, align 4
  br label %10

5:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %10

6:                                                ; preds = %0
  store i32 2, i32* %1, align 4
  br label %10

7:                                                ; preds = %0
  store i32 3, i32* %1, align 4
  br label %10

8:                                                ; preds = %0
  store i32 4, i32* %1, align 4
  br label %10

9:                                                ; preds = %0
  store i32 5, i32* %1, align 4
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %5, %4
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
