; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/efi/extr_quirks.c_query_variable_store_nonblocking.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/efi/extr_quirks.c_query_variable_store_nonblocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i64*, i64*, i64*)* }

@efi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EFI_SUCCESS = common dso_local global i64 0, align 8
@EFI_MIN_RESERVE = common dso_local global i64 0, align 8
@EFI_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @query_variable_store_nonblocking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @query_variable_store_nonblocking(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %10 = load i64 (i32, i64*, i64*, i64*)*, i64 (i32, i64*, i64*, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 0), align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 %10(i32 %11, i64* %7, i64* %8, i64* %9)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @EFI_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %3, align 8
  br label %28

18:                                               ; preds = %2
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = sub i64 %19, %20
  %22 = load i64, i64* @EFI_MIN_RESERVE, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i64, i64* @EFI_OUT_OF_RESOURCES, align 8
  store i64 %25, i64* %3, align 8
  br label %28

26:                                               ; preds = %18
  %27 = load i64, i64* @EFI_SUCCESS, align 8
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %26, %24, %16
  %29 = load i64, i64* %3, align 8
  ret i64 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
