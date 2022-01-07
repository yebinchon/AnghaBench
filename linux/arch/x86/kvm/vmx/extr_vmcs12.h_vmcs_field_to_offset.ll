; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmcs12.h_vmcs_field_to_offset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmcs12.h_vmcs_field_to_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i16 0, align 2
@nr_vmcs12_fields = common dso_local global i32 0, align 4
@vmcs_field_to_offset_table = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i64)* @vmcs_field_to_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @vmcs_field_to_offset(i64 %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = lshr i64 %6, 15
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i16, i16* @ENOENT, align 2
  %11 = sext i16 %10 to i32
  %12 = sub nsw i32 0, %11
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %2, align 2
  br label %44

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @ROL16(i64 %15, i32 6)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @nr_vmcs12_fields, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i16, i16* @ENOENT, align 2
  %22 = sext i16 %21 to i32
  %23 = sub nsw i32 0, %22
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %2, align 2
  br label %44

25:                                               ; preds = %14
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @nr_vmcs12_fields, align 4
  %28 = call i32 @array_index_nospec(i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i16*, i16** @vmcs_field_to_offset_table, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i16, i16* %29, i64 %31
  %33 = load i16, i16* %32, align 2
  store i16 %33, i16* %4, align 2
  %34 = load i16, i16* %4, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load i16, i16* @ENOENT, align 2
  %39 = sext i16 %38 to i32
  %40 = sub nsw i32 0, %39
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %2, align 2
  br label %44

42:                                               ; preds = %25
  %43 = load i16, i16* %4, align 2
  store i16 %43, i16* %2, align 2
  br label %44

44:                                               ; preds = %42, %37, %20, %9
  %45 = load i16, i16* %2, align 2
  ret i16 %45
}

declare dso_local i32 @ROL16(i64, i32) #1

declare dso_local i32 @array_index_nospec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
