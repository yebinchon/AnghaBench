; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kexec-bzimage64.c_setup_e820_entries.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kexec-bzimage64.c_setup_e820_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.boot_params = type { i32, i32 }

@e820_table_kexec = common dso_local global %struct.TYPE_2__* null, align 8
@E820_MAX_ENTRIES_ZEROPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.boot_params*)* @setup_e820_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_e820_entries(%struct.boot_params* %0) #0 {
  %2 = alloca %struct.boot_params*, align 8
  %3 = alloca i32, align 4
  store %struct.boot_params* %0, %struct.boot_params** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @e820_table_kexec, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @E820_MAX_ENTRIES_ZEROPAGE, align 4
  %9 = icmp ugt i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @E820_MAX_ENTRIES_ZEROPAGE, align 4
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.boot_params*, %struct.boot_params** %2, align 8
  %15 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.boot_params*, %struct.boot_params** %2, align 8
  %17 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @e820_table_kexec, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memcpy(i32* %17, i32* %19, i32 %23)
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
