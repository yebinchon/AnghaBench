; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_dump.c_walk_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_dump.c_walk_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_state = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*, i32*, i64, i64)* @walk_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_pte(%struct.pg_state* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.pg_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.pg_state* %0, %struct.pg_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %7, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32* @pte_offset_kernel(i32* %12, i64 %13)
  store i32* %14, i32** %10, align 8
  br label %15

15:                                               ; preds = %23, %4
  %16 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pte_val(i32 %19)
  %21 = call i32 @READ_ONCE(i32 %20)
  %22 = call i32 @note_page(%struct.pg_state* %16, i64 %17, i32 4, i32 %21)
  br label %23

23:                                               ; preds = %15
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %10, align 8
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = load i64, i64* %9, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %15, label %32

32:                                               ; preds = %23
  ret void
}

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32 @note_page(%struct.pg_state*, i64, i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @pte_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
