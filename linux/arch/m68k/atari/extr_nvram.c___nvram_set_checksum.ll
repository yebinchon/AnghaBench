; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/atari/extr_nvram.c___nvram_set_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/atari/extr_nvram.c___nvram_set_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATARI_CKS_RANGE_START = common dso_local global i32 0, align 4
@ATARI_CKS_RANGE_END = common dso_local global i32 0, align 4
@ATARI_CKS_LOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__nvram_set_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nvram_set_checksum() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i8 0, i8* %2, align 1
  %3 = load i32, i32* @ATARI_CKS_RANGE_START, align 4
  store i32 %3, i32* %1, align 4
  br label %4

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @ATARI_CKS_RANGE_END, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @__nvram_read_byte(i32 %9)
  %11 = load i8, i8* %2, align 1
  %12 = zext i8 %11 to i64
  %13 = add nsw i64 %12, %10
  %14 = trunc i64 %13 to i8
  store i8 %14, i8* %2, align 1
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %4

18:                                               ; preds = %4
  %19 = load i8, i8* %2, align 1
  %20 = zext i8 %19 to i32
  %21 = xor i32 %20, -1
  %22 = trunc i32 %21 to i8
  %23 = load i64, i64* @ATARI_CKS_LOC, align 8
  %24 = call i32 @__nvram_write_byte(i8 zeroext %22, i64 %23)
  %25 = load i8, i8* %2, align 1
  %26 = load i64, i64* @ATARI_CKS_LOC, align 8
  %27 = add nsw i64 %26, 1
  %28 = call i32 @__nvram_write_byte(i8 zeroext %25, i64 %27)
  ret void
}

declare dso_local i64 @__nvram_read_byte(i32) #1

declare dso_local i32 @__nvram_write_byte(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
