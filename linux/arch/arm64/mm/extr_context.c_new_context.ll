; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_context.c_new_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_context.c_new_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@new_context.cur_idx = internal global i32 1, align 4
@asid_generation = common dso_local global i32 0, align 4
@ASID_MASK = common dso_local global i32 0, align 4
@asid_map = common dso_local global i32 0, align 4
@NUM_USER_ASIDS = common dso_local global i32 0, align 4
@ASID_FIRST_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*)* @new_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_context(%struct.mm_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %7 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %8 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @atomic64_read(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = call i32 @atomic64_read(i32* @asid_generation)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ASID_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = or i32 %15, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @check_update_reserved_asid(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %61

27:                                               ; preds = %14
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @asid2idx(i32 %28)
  %30 = load i32, i32* @asid_map, align 4
  %31 = call i32 @__test_and_set_bit(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %61

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i32, i32* @asid_map, align 4
  %38 = load i32, i32* @NUM_USER_ASIDS, align 4
  %39 = load i32, i32* @new_context.cur_idx, align 4
  %40 = call i32 @find_next_zero_bit(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @NUM_USER_ASIDS, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %52

45:                                               ; preds = %36
  %46 = load i32, i32* @ASID_FIRST_VERSION, align 4
  %47 = call i32 @atomic64_add_return_relaxed(i32 %46, i32* @asid_generation)
  store i32 %47, i32* %5, align 4
  %48 = call i32 (...) @flush_context()
  %49 = load i32, i32* @asid_map, align 4
  %50 = load i32, i32* @NUM_USER_ASIDS, align 4
  %51 = call i32 @find_next_zero_bit(i32 %49, i32 %50, i32 1)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %45, %44
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @asid_map, align 4
  %55 = call i32 @__set_bit(i32 %53, i32 %54)
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* @new_context.cur_idx, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @idx2asid(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %52, %33, %25
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i64 @check_update_reserved_asid(i32, i32) #1

declare dso_local i32 @__test_and_set_bit(i32, i32) #1

declare dso_local i32 @asid2idx(i32) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @atomic64_add_return_relaxed(i32, i32*) #1

declare dso_local i32 @flush_context(...) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @idx2asid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
