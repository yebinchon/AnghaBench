; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_context.c_new_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_context.c_new_context.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i32)* @new_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_context(%struct.mm_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @atomic64_read(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = call i32 @atomic64_read(i32* @asid_generation)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ASID_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = or i32 %17, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @check_update_reserved_asid(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %68

29:                                               ; preds = %16
  %30 = load i32, i32* @ASID_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @asid_map, align 4
  %36 = call i32 @__test_and_set_bit(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %68

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32, i32* @asid_map, align 4
  %43 = load i32, i32* @NUM_USER_ASIDS, align 4
  %44 = load i32, i32* @new_context.cur_idx, align 4
  %45 = call i32 @find_next_zero_bit(i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @NUM_USER_ASIDS, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load i32, i32* @ASID_FIRST_VERSION, align 4
  %51 = call i32 @atomic64_add_return(i32 %50, i32* @asid_generation)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @flush_context(i32 %52)
  %54 = load i32, i32* @asid_map, align 4
  %55 = load i32, i32* @NUM_USER_ASIDS, align 4
  %56 = call i32 @find_next_zero_bit(i32 %54, i32 %55, i32 1)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %49, %41
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @asid_map, align 4
  %60 = call i32 @__set_bit(i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* @new_context.cur_idx, align 4
  %62 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %63 = call i32 @mm_cpumask(%struct.mm_struct* %62)
  %64 = call i32 @cpumask_clear(i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %57, %38, %27
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i64 @check_update_reserved_asid(i32, i32) #1

declare dso_local i32 @__test_and_set_bit(i32, i32) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @atomic64_add_return(i32, i32*) #1

declare dso_local i32 @flush_context(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @cpumask_clear(i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
