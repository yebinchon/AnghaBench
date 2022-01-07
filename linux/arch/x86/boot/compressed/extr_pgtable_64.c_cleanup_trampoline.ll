; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_pgtable_64.c_cleanup_trampoline.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_pgtable_64.c_cleanup_trampoline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trampoline_32bit = common dso_local global i8* null, align 8
@TRAMPOLINE_32BIT_PGTABLE_OFFSET = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@trampoline_save = common dso_local global i8* null, align 8
@TRAMPOLINE_32BIT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleanup_trampoline(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** @trampoline_32bit, align 8
  %5 = load i32, i32* @TRAMPOLINE_32BIT_PGTABLE_OFFSET, align 4
  %6 = sext i32 %5 to i64
  %7 = udiv i64 %6, 8
  %8 = getelementptr i8, i8* %4, i64 %7
  store i8* %8, i8** %3, align 8
  %9 = call i64 (...) @__native_read_cr3()
  %10 = inttoptr i64 %9 to i8*
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i8*, i8** %2, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = call i32 @memcpy(i8* %14, i8* %15, i32 %16)
  %18 = load i8*, i8** %2, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = call i32 @native_write_cr3(i64 %19)
  br label %21

21:                                               ; preds = %13, %1
  %22 = load i8*, i8** @trampoline_32bit, align 8
  %23 = load i8*, i8** @trampoline_save, align 8
  %24 = load i32, i32* @TRAMPOLINE_32BIT_SIZE, align 4
  %25 = call i32 @memcpy(i8* %22, i8* %23, i32 %24)
  ret void
}

declare dso_local i64 @__native_read_cr3(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @native_write_cr3(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
