; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_osl.c_acpi_os_write_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_osl.c_acpi_os_write_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_os_write_port(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp sle i32 %7, 8
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @outb(i32 %10, i32 %11)
  br label %31

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp sle i32 %14, 16
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @outw(i32 %17, i32 %18)
  br label %30

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %21, 32
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @outl(i32 %24, i32 %25)
  br label %29

27:                                               ; preds = %20
  %28 = call i32 (...) @BUG()
  br label %29

29:                                               ; preds = %27, %23
  br label %30

30:                                               ; preds = %29, %16
  br label %31

31:                                               ; preds = %30, %9
  %32 = load i32, i32* @AE_OK, align 4
  ret i32 %32
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
