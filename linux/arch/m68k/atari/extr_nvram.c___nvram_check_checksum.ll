; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/atari/extr_nvram.c___nvram_check_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/atari/extr_nvram.c___nvram_check_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATARI_CKS_RANGE_START = common dso_local global i32 0, align 4
@ATARI_CKS_RANGE_END = common dso_local global i32 0, align 4
@ATARI_CKS_LOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__nvram_check_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nvram_check_checksum() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i8 0, i8* %2, align 1
  %3 = load i32, i32* @ATARI_CKS_RANGE_START, align 4
  store i32 %3, i32* %1, align 4
  br label %4

4:                                                ; preds = %16, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @ATARI_CKS_RANGE_END, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  %10 = call zeroext i8 @__nvram_read_byte(i32 %9)
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* %2, align 1
  %13 = zext i8 %12 to i32
  %14 = add nsw i32 %13, %11
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %2, align 1
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %4

19:                                               ; preds = %4
  %20 = load i32, i32* @ATARI_CKS_LOC, align 4
  %21 = call zeroext i8 @__nvram_read_byte(i32 %20)
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* %2, align 1
  %24 = zext i8 %23 to i32
  %25 = xor i32 %24, -1
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %22, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load i32, i32* @ATARI_CKS_LOC, align 4
  %30 = add nsw i32 %29, 1
  %31 = call zeroext i8 @__nvram_read_byte(i32 %30)
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %2, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 255
  %36 = icmp eq i32 %32, %35
  br label %37

37:                                               ; preds = %28, %19
  %38 = phi i1 [ false, %19 ], [ %36, %28 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local zeroext i8 @__nvram_read_byte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
