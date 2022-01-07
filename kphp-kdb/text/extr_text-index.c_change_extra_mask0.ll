; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_change_extra_mask0.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_change_extra_mask0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@extra_mask_changes = common dso_local global i64 0, align 8
@MAX_EXTRA_FIELDS = common dso_local global i32 0, align 4
@current_extra_mask = common dso_local global i32 0, align 4
@extra_field_start_offset = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @change_extra_mask0(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @extra_mask_changes, align 8
  %5 = add nsw i64 %4, 1
  store i64 %5, i64* @extra_mask_changes, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %31, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MAX_EXTRA_FIELDS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = load i32, i32* @current_extra_mask, align 4
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = and i32 %14, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %10
  %25 = load i64, i64* @extra_mask_changes, align 8
  %26 = load i64*, i64** @extra_field_start_offset, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64 %25, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %10
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %6

34:                                               ; preds = %6
  %35 = load i32, i32* %2, align 4
  store i32 %35, i32* @current_extra_mask, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
