; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_opal.c_opal_con_putc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_opal.c_opal_con_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opal_con_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @opal_con_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opal_con_putc(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  br label %6

6:                                                ; preds = %16, %1
  %7 = load i32, i32* @opal_con_id, align 4
  %8 = call i64 @opal_console_write_buffer_space(i32 %7, i32* %4)
  store i64 %8, i64* %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @be64_to_cpu(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %23

14:                                               ; preds = %6
  %15 = call i32 @opal_poll_events(i32* null)
  br label %16

16:                                               ; preds = %14
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %6, label %19

19:                                               ; preds = %16
  %20 = call i32 @cpu_to_be64(i32 1)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @opal_con_id, align 4
  %22 = call i32 @opal_console_write(i32 %21, i32* %4, i8* %2)
  br label %23

23:                                               ; preds = %19, %13
  ret void
}

declare dso_local i64 @opal_console_write_buffer_space(i32, i32*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @opal_poll_events(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @opal_console_write(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
