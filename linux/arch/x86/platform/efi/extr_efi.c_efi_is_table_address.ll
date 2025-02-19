; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/efi/extr_efi.c_efi_is_table_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/efi/extr_efi.c_efi_is_table_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFI_INVALID_TABLE_ADDR = common dso_local global i64 0, align 8
@efi_tables = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_is_table_address(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @EFI_INVALID_TABLE_ADDR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %26, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i64**, i64*** @efi_tables, align 8
  %13 = call i32 @ARRAY_SIZE(i64** %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load i64**, i64*** @efi_tables, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i64*, i64** %16, i64 %18
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %30

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %10

29:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %24, %8
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @ARRAY_SIZE(i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
