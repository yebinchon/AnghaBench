; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tsc.c_pit_calibrate_tsc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tsc.c_pit_calibrate_tsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USEC_PER_MSEC = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32)* @pit_calibrate_tsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pit_calibrate_tsc(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = call i32 (...) @has_legacy_pic()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @USEC_PER_MSEC, align 4
  %19 = mul nsw i32 10, %18
  %20 = call i32 @udelay(i32 %19)
  %21 = load i32, i32* @USEC_PER_MSEC, align 4
  %22 = mul nsw i32 10, %21
  %23 = call i32 @udelay(i32 %22)
  %24 = load i32, i32* @USEC_PER_MSEC, align 4
  %25 = mul nsw i32 10, %24
  %26 = call i32 @udelay(i32 %25)
  %27 = load i32, i32* @USEC_PER_MSEC, align 4
  %28 = mul nsw i32 10, %27
  %29 = call i32 @udelay(i32 %28)
  %30 = load i32, i32* @USEC_PER_MSEC, align 4
  %31 = mul nsw i32 10, %30
  %32 = call i32 @udelay(i32 %31)
  %33 = load i64, i64* @ULONG_MAX, align 8
  store i64 %33, i64* %4, align 8
  br label %95

34:                                               ; preds = %3
  %35 = call i32 @inb(i32 97)
  %36 = and i32 %35, -3
  %37 = or i32 %36, 1
  %38 = call i32 @outb(i32 %37, i32 97)
  %39 = call i32 @outb(i32 176, i32 67)
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 255
  %42 = call i32 @outb(i32 %41, i32 66)
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, 8
  %45 = call i32 @outb(i32 %44, i32 66)
  %46 = call i64 (...) @get_cycles()
  store i64 %46, i64* %10, align 8
  store i64 %46, i64* %9, align 8
  store i64 %46, i64* %8, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %13, align 8
  %47 = load i64, i64* @ULONG_MAX, align 8
  store i64 %47, i64* %12, align 8
  br label %48

48:                                               ; preds = %73, %34
  %49 = call i32 @inb(i32 97)
  %50 = and i32 %49, 32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %48
  %53 = call i64 (...) @get_cycles()
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub i64 %54, %55
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %10, align 8
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load i64, i64* %11, align 8
  %63 = trunc i64 %62 to i32
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %12, align 8
  br label %65

65:                                               ; preds = %61, %52
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i64, i64* %11, align 8
  %71 = trunc i64 %70 to i32
  %72 = zext i32 %71 to i64
  store i64 %72, i64* %13, align 8
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %48

76:                                               ; preds = %48
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %12, align 8
  %83 = mul i64 10, %82
  %84 = icmp ugt i64 %81, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %80, %76
  %86 = load i64, i64* @ULONG_MAX, align 8
  store i64 %86, i64* %4, align 8
  br label %95

87:                                               ; preds = %80
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %9, align 8
  %90 = sub i64 %88, %89
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @do_div(i64 %91, i64 %92)
  %94 = load i64, i64* %11, align 8
  store i64 %94, i64* %4, align 8
  br label %95

95:                                               ; preds = %87, %85, %17
  %96 = load i64, i64* %4, align 8
  ret i64 %96
}

declare dso_local i32 @has_legacy_pic(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i64 @get_cycles(...) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
