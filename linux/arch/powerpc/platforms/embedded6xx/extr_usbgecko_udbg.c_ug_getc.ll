; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/embedded6xx/extr_usbgecko_udbg.c_ug_getc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/embedded6xx/extr_usbgecko_udbg.c_ug_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UG_READ_ATTEMPTS = common dso_local global i32 0, align 4
@ug_io_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ug_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ug_getc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @UG_READ_ATTEMPTS, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @ug_io_base, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %21

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %17, %7
  %9 = call i32 (...) @ug_is_rxfifo_ready()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %2, align 4
  %14 = icmp ne i32 %12, 0
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i1 [ false, %8 ], [ %14, %11 ]
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = call i32 (...) @barrier()
  br label %8

19:                                               ; preds = %15
  %20 = call i32 (...) @ug_raw_getc()
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %19, %6
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @ug_is_rxfifo_ready(...) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @ug_raw_getc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
