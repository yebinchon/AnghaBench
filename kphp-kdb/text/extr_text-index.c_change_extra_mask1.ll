; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_change_extra_mask1.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_change_extra_mask1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@extra_mask_changes = common dso_local global i64 0, align 8
@MAX_EXTRA_FIELDS = common dso_local global i32 0, align 4
@extra_field_start_offset = common dso_local global i64* null, align 8
@current_extra_mask = common dso_local global i32 0, align 4
@final_extra_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @change_extra_mask1(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @extra_mask_changes, align 8
  %5 = add nsw i64 %4, 1
  store i64 %5, i64* @extra_mask_changes, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MAX_EXTRA_FIELDS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load i64, i64* @extra_mask_changes, align 8
  %18 = load i64*, i64** @extra_field_start_offset, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %17, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* @current_extra_mask, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* @current_extra_mask, align 4
  br label %29

29:                                               ; preds = %24, %16, %10
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %6

33:                                               ; preds = %6
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @final_extra_mask, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @current_extra_mask, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* @current_extra_mask, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
