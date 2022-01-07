; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_walk_pagetables.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_walk_pagetables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_state = type { i32 }

@PTRS_PER_PGD = common dso_local global i32 0, align 4
@KERN_VIRT_START = common dso_local global i32 0, align 4
@PGDIR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*)* @walk_pagetables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_pagetables(%struct.pg_state* %0) #0 {
  %2 = alloca %struct.pg_state*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pg_state* %0, %struct.pg_state** %2, align 8
  %6 = call i32* @pgd_offset_k(i64 0)
  store i32* %6, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @PTRS_PER_PGD, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = load i32, i32* @KERN_VIRT_START, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PGDIR_SIZE, align 4
  %15 = mul i32 %13, %14
  %16 = add i32 %12, %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pgd_none(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %11
  %23 = load %struct.pg_state*, %struct.pg_state** %2, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @walk_pud(%struct.pg_state* %23, i32* %24, i64 %25)
  br label %27

27:                                               ; preds = %22, %11
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %3, align 8
  br label %7

33:                                               ; preds = %7
  ret void
}

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i32 @pgd_none(i32) #1

declare dso_local i32 @walk_pud(%struct.pg_state*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
