; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip22-gio.c_ip22_is_gr2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip22-gio.c_ip22_is_gr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HQ2_MYSTERY_OFFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ip22_is_gr2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip22_is_gr2(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @HQ2_MYSTERY_OFFS, align 8
  %8 = add i64 %6, %7
  %9 = call i64 @CKSEG1ADDR(i64 %8)
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @get_dbe(i32 %12, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, -559038737
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %22

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20, %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %19
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @CKSEG1ADDR(i64) #1

declare dso_local i32 @get_dbe(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
