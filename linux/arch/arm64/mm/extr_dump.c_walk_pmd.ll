; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_dump.c_walk_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_dump.c_walk_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*, i32*, i64, i64)* @walk_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_pmd(%struct.pg_state* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.pg_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.pg_state* %0, %struct.pg_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32* @pmd_offset(i32* %14, i64 %15)
  store i32* %16, i32** %11, align 8
  br label %17

17:                                               ; preds = %47, %4
  %18 = load i32*, i32** %11, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @READ_ONCE(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @pmd_addr_end(i64 %21, i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i64 @pmd_none(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @pmd_sect(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27, %17
  %32 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @pmd_val(i32 %34)
  %36 = call i32 @note_page(%struct.pg_state* %32, i64 %33, i32 3, i32 %35)
  br label %46

37:                                               ; preds = %27
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @pmd_bad(i32 %38)
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @walk_pte(%struct.pg_state* %41, i32* %42, i64 %43, i64 %44)
  br label %46

46:                                               ; preds = %37, %31
  br label %47

47:                                               ; preds = %46
  %48 = load i32*, i32** %11, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %11, align 8
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %17, label %54

54:                                               ; preds = %47
  ret void
}

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_sect(i32) #1

declare dso_local i32 @note_page(%struct.pg_state*, i64, i32, i32) #1

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pmd_bad(i32) #1

declare dso_local i32 @walk_pte(%struct.pg_state*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
