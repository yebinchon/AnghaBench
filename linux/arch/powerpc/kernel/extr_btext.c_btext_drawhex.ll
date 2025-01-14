; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_btext.c_btext_drawhex.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_btext.c_btext_drawhex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@boot_text_mapped = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btext_drawhex(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @boot_text_mapped, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %38

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = lshr i64 %7, 24
  %9 = call signext i8 @hex_asc_hi(i64 %8)
  %10 = call i32 @btext_drawchar(i8 signext %9)
  %11 = load i64, i64* %2, align 8
  %12 = lshr i64 %11, 24
  %13 = call signext i8 @hex_asc_lo(i64 %12)
  %14 = call i32 @btext_drawchar(i8 signext %13)
  %15 = load i64, i64* %2, align 8
  %16 = lshr i64 %15, 16
  %17 = call signext i8 @hex_asc_hi(i64 %16)
  %18 = call i32 @btext_drawchar(i8 signext %17)
  %19 = load i64, i64* %2, align 8
  %20 = lshr i64 %19, 16
  %21 = call signext i8 @hex_asc_lo(i64 %20)
  %22 = call i32 @btext_drawchar(i8 signext %21)
  %23 = load i64, i64* %2, align 8
  %24 = lshr i64 %23, 8
  %25 = call signext i8 @hex_asc_hi(i64 %24)
  %26 = call i32 @btext_drawchar(i8 signext %25)
  %27 = load i64, i64* %2, align 8
  %28 = lshr i64 %27, 8
  %29 = call signext i8 @hex_asc_lo(i64 %28)
  %30 = call i32 @btext_drawchar(i8 signext %29)
  %31 = load i64, i64* %2, align 8
  %32 = call signext i8 @hex_asc_hi(i64 %31)
  %33 = call i32 @btext_drawchar(i8 signext %32)
  %34 = load i64, i64* %2, align 8
  %35 = call signext i8 @hex_asc_lo(i64 %34)
  %36 = call i32 @btext_drawchar(i8 signext %35)
  %37 = call i32 @btext_drawchar(i8 signext 32)
  br label %38

38:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @btext_drawchar(i8 signext) #1

declare dso_local signext i8 @hex_asc_hi(i64) #1

declare dso_local signext i8 @hex_asc_lo(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
