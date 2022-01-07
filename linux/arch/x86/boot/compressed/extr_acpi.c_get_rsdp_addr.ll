; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_acpi.c_get_rsdp_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_acpi.c_get_rsdp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@boot_params = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_rsdp_addr() #0 {
  %1 = alloca i64, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @boot_params, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i64 (...) @kexec_get_rsdp_addr()
  store i64 %8, i64* %1, align 8
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i64, i64* %1, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call i64 (...) @efi_get_rsdp_addr()
  store i64 %13, i64* %1, align 8
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i64, i64* %1, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call i64 (...) @bios_get_rsdp_addr()
  store i64 %18, i64* %1, align 8
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i64, i64* %1, align 8
  ret i64 %20
}

declare dso_local i64 @kexec_get_rsdp_addr(...) #1

declare dso_local i64 @efi_get_rsdp_addr(...) #1

declare dso_local i64 @bios_get_rsdp_addr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
