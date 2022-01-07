; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_assabet.c_assabet_codec_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_assabet.c_assabet_codec_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@codec_nreset = common dso_local global i32 0, align 4
@ASSABET_BCR_NCODEC_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @assabet_codec_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assabet_codec_reset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load i32, i32* @codec_nreset, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* @codec_nreset, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* @codec_nreset, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @codec_nreset, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* @codec_nreset, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @codec_nreset, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = icmp ne i32 %25, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load i32, i32* @codec_nreset, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @ASSABET_BCR_NCODEC_RST, align 4
  %36 = call i32 @ASSABET_BCR_set(i32 %35)
  %37 = call i32 (...) @adv7171_sleep()
  br label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @ASSABET_BCR_NCODEC_RST, align 4
  %40 = call i32 @ASSABET_BCR_clear(i32 %39)
  br label %41

41:                                               ; preds = %38, %34
  br label %42

42:                                               ; preds = %41, %24
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @local_irq_restore(i64 %43)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ASSABET_BCR_set(i32) #1

declare dso_local i32 @adv7171_sleep(...) #1

declare dso_local i32 @ASSABET_BCR_clear(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
