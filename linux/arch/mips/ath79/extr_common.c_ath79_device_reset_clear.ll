; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ath79/extr_common.c_ath79_device_reset_clear.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ath79/extr_common.c_ath79_device_reset_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR71XX_RESET_REG_RESET_MODULE = common dso_local global i32 0, align 4
@AR724X_RESET_REG_RESET_MODULE = common dso_local global i32 0, align 4
@AR913X_RESET_REG_RESET_MODULE = common dso_local global i32 0, align 4
@AR933X_RESET_REG_RESET_MODULE = common dso_local global i32 0, align 4
@AR934X_RESET_REG_RESET_MODULE = common dso_local global i32 0, align 4
@QCA953X_RESET_REG_RESET_MODULE = common dso_local global i32 0, align 4
@QCA955X_RESET_REG_RESET_MODULE = common dso_local global i32 0, align 4
@QCA956X_RESET_REG_RESET_MODULE = common dso_local global i32 0, align 4
@ath79_device_reset_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath79_device_reset_clear(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i64 (...) @soc_is_ar71xx()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @AR71XX_RESET_REG_RESET_MODULE, align 4
  store i32 %9, i32* %4, align 4
  br label %57

10:                                               ; preds = %1
  %11 = call i64 (...) @soc_is_ar724x()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @AR724X_RESET_REG_RESET_MODULE, align 4
  store i32 %14, i32* %4, align 4
  br label %56

15:                                               ; preds = %10
  %16 = call i64 (...) @soc_is_ar913x()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @AR913X_RESET_REG_RESET_MODULE, align 4
  store i32 %19, i32* %4, align 4
  br label %55

20:                                               ; preds = %15
  %21 = call i64 (...) @soc_is_ar933x()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @AR933X_RESET_REG_RESET_MODULE, align 4
  store i32 %24, i32* %4, align 4
  br label %54

25:                                               ; preds = %20
  %26 = call i64 (...) @soc_is_ar934x()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @AR934X_RESET_REG_RESET_MODULE, align 4
  store i32 %29, i32* %4, align 4
  br label %53

30:                                               ; preds = %25
  %31 = call i64 (...) @soc_is_qca953x()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @QCA953X_RESET_REG_RESET_MODULE, align 4
  store i32 %34, i32* %4, align 4
  br label %52

35:                                               ; preds = %30
  %36 = call i64 (...) @soc_is_qca955x()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @QCA955X_RESET_REG_RESET_MODULE, align 4
  store i32 %39, i32* %4, align 4
  br label %51

40:                                               ; preds = %35
  %41 = call i64 (...) @soc_is_qca956x()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = call i64 (...) @soc_is_tp9343()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @QCA956X_RESET_REG_RESET_MODULE, align 4
  store i32 %47, i32* %4, align 4
  br label %50

48:                                               ; preds = %43
  %49 = call i32 (...) @BUG()
  br label %50

50:                                               ; preds = %48, %46
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %33
  br label %53

53:                                               ; preds = %52, %28
  br label %54

54:                                               ; preds = %53, %23
  br label %55

55:                                               ; preds = %54, %18
  br label %56

56:                                               ; preds = %55, %13
  br label %57

57:                                               ; preds = %56, %8
  %58 = load i64, i64* %3, align 8
  %59 = call i32 @spin_lock_irqsave(i32* @ath79_device_reset_lock, i64 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @ath79_reset_rr(i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %2, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = call i32 @ath79_reset_wr(i32 %62, i32 %66)
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* @ath79_device_reset_lock, i64 %68)
  ret void
}

declare dso_local i64 @soc_is_ar71xx(...) #1

declare dso_local i64 @soc_is_ar724x(...) #1

declare dso_local i64 @soc_is_ar913x(...) #1

declare dso_local i64 @soc_is_ar933x(...) #1

declare dso_local i64 @soc_is_ar934x(...) #1

declare dso_local i64 @soc_is_qca953x(...) #1

declare dso_local i64 @soc_is_qca955x(...) #1

declare dso_local i64 @soc_is_qca956x(...) #1

declare dso_local i64 @soc_is_tp9343(...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ath79_reset_rr(i32) #1

declare dso_local i32 @ath79_reset_wr(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
