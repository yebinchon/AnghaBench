; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_dump.c_walk_pgd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_dump.c_walk_pgd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_state = type { i32 }
%struct.mm_struct = type { i32 }

@TASK_SIZE_64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*, %struct.mm_struct*, i64)* @walk_pgd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_pgd(%struct.pg_state* %0, %struct.mm_struct* %1, i64 %2) #0 {
  %4 = alloca %struct.pg_state*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.pg_state* %0, %struct.pg_state** %4, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @TASK_SIZE_64, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @TASK_SIZE_64, align 8
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i64 [ %16, %15 ], [ 0, %17 ]
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32* @pgd_offset(%struct.mm_struct* %21, i64 %22)
  store i32* %23, i32** %10, align 8
  br label %24

24:                                               ; preds = %50, %18
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @READ_ONCE(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @pgd_addr_end(i64 %28, i64 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @pgd_none(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.pg_state*, %struct.pg_state** %4, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @pgd_val(i32 %37)
  %39 = call i32 @note_page(%struct.pg_state* %35, i64 %36, i32 1, i32 %38)
  br label %49

40:                                               ; preds = %24
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @pgd_bad(i32 %41)
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.pg_state*, %struct.pg_state** %4, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @walk_pud(%struct.pg_state* %44, i32* %45, i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %40, %34
  br label %50

50:                                               ; preds = %49
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %10, align 8
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %24, label %57

57:                                               ; preds = %50
  ret void
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i32 @note_page(%struct.pg_state*, i64, i32, i32) #1

declare dso_local i32 @pgd_val(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pgd_bad(i32) #1

declare dso_local i32 @walk_pud(%struct.pg_state*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
