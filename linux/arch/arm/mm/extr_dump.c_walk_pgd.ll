; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_dump.c_walk_pgd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_dump.c_walk_pgd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_state = type { i32 }
%struct.mm_struct = type { i32 }

@PTRS_PER_PGD = common dso_local global i32 0, align 4
@PGDIR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*, %struct.mm_struct*, i64)* @walk_pgd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_pgd(%struct.pg_state* %0, %struct.mm_struct* %1, i64 %2) #0 {
  %4 = alloca %struct.pg_state*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.pg_state* %0, %struct.pg_state** %4, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %11 = call i32* @pgd_offset(%struct.mm_struct* %10, i64 0)
  store i32* %11, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %40, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @PTRS_PER_PGD, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PGDIR_SIZE, align 4
  %20 = mul i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = add i64 %17, %21
  store i64 %22, i64* %9, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pgd_none(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %16
  %28 = load %struct.pg_state*, %struct.pg_state** %4, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @walk_pud(%struct.pg_state* %28, i32* %29, i64 %30)
  br label %39

32:                                               ; preds = %16
  %33 = load %struct.pg_state*, %struct.pg_state** %4, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pgd_val(i32 %36)
  %38 = call i32 @note_page(%struct.pg_state* %33, i64 %34, i32 1, i32 %37, i32* null)
  br label %39

39:                                               ; preds = %32, %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %7, align 8
  br label %12

45:                                               ; preds = %12
  ret void
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @pgd_none(i32) #1

declare dso_local i32 @walk_pud(%struct.pg_state*, i32*, i64) #1

declare dso_local i32 @note_page(%struct.pg_state*, i64, i32, i32, i32*) #1

declare dso_local i32 @pgd_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
