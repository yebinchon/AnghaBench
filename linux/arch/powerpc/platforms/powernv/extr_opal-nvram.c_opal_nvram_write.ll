; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-nvram.c_opal_nvram_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-nvram.c_opal_nvram_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPAL_BUSY = common dso_local global i64 0, align 8
@nvram_size = common dso_local global i32 0, align 4
@OPAL_BUSY_EVENT = common dso_local global i64 0, align 8
@OPAL_BUSY_DELAY_MS = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32*)* @opal_nvram_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @opal_nvram_write(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i64, i64* @OPAL_BUSY, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @nvram_size, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %98

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %20, %21
  %23 = load i32, i32* @nvram_size, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load i32, i32* @nvram_size, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %26, %16
  br label %32

32:                                               ; preds = %83, %31
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @OPAL_BUSY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @OPAL_BUSY_EVENT, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ true, %32 ], [ %39, %36 ]
  br i1 %41, label %42, label %84

42:                                               ; preds = %40
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @__pa(i8* %43)
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @opal_write_nvram(i32 %44, i64 %45, i32 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @OPAL_BUSY_EVENT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %42
  %52 = call i64 (...) @in_interrupt()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = call i64 (...) @irqs_disabled()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @OPAL_BUSY_DELAY_MS, align 4
  %59 = call i32 @mdelay(i32 %58)
  br label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @OPAL_BUSY_DELAY_MS, align 4
  %62 = call i32 @msleep(i32 %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = call i32 @opal_poll_events(i32* null)
  br label %83

65:                                               ; preds = %42
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @OPAL_BUSY, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = call i64 (...) @in_interrupt()
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = call i64 (...) @irqs_disabled()
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72, %69
  %76 = load i32, i32* @OPAL_BUSY_DELAY_MS, align 4
  %77 = call i32 @mdelay(i32 %76)
  br label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @OPAL_BUSY_DELAY_MS, align 4
  %80 = call i32 @msleep(i32 %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %65
  br label %83

83:                                               ; preds = %82, %63
  br label %32

84:                                               ; preds = %40
  %85 = load i64, i64* %8, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i64, i64* @EIO, align 8
  %89 = sub i64 0, %88
  store i64 %89, i64* %4, align 8
  br label %98

90:                                               ; preds = %84
  %91 = load i64, i64* %6, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 %94, %91
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  %97 = load i64, i64* %6, align 8
  store i64 %97, i64* %4, align 8
  br label %98

98:                                               ; preds = %90, %87, %15
  %99 = load i64, i64* %4, align 8
  ret i64 %99
}

declare dso_local i64 @opal_write_nvram(i32, i64, i32) #1

declare dso_local i32 @__pa(i8*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i64 @irqs_disabled(...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @opal_poll_events(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
