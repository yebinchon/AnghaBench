; ModuleID = '/home/carl/AnghaBench/jemalloc/test/unit/extr_bit_util.c_assert_lg_floor_range.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/unit/extr_bit_util.c_assert_lg_floor_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Got %u as lg_floor of 1\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Got %u as lg_floor of %zu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assert_lg_floor_range(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @assert_u_eq(i32 0, i32 %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %27

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @ZU(i32 1)
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @assert_zu_ge(i64 %12, i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %16, i64 %17)
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @ZU(i32 1)
  %21 = load i32, i32* %4, align 4
  %22 = add i32 %21, 1
  %23 = shl i32 %20, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @assert_zu_lt(i64 %19, i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %24, i64 %25)
  br label %27

27:                                               ; preds = %11, %7
  ret void
}

declare dso_local i32 @assert_u_eq(i32, i32, i8*, i32) #1

declare dso_local i32 @assert_zu_ge(i64, i32, i8*, i32, i64) #1

declare dso_local i32 @ZU(i32) #1

declare dso_local i32 @assert_zu_lt(i64, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
