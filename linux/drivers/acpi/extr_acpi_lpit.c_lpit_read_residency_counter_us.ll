; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_lpit.c_lpit_read_residency_counter_us.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_lpit.c_lpit_read_residency_counter_us.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32 }

@residency_info_mem = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@residency_info_ffh = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32)* @lpit_read_residency_counter_us to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpit_read_residency_counter_us(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @residency_info_mem, i32 0, i32 2), align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @residency_info_mem, i32 0, i32 1, i32 0), align 4
  %15 = call i32 @acpi_os_read_iomem(i32 %13, i64* %7, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %56

20:                                               ; preds = %12
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 %21, 1000000
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @residency_info_mem, i32 0, i32 0), align 4
  %24 = call i64 @div64_u64(i64 %22, i32 %23)
  %25 = load i64*, i64** %4, align 8
  store i64 %24, i64* %25, align 8
  store i32 0, i32* %3, align 4
  br label %56

26:                                               ; preds = %2
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @residency_info_ffh, i32 0, i32 1, i32 2), align 8
  %28 = load i64*, i64** %4, align 8
  %29 = call i32 @rdmsrl_safe(i32 %27, i64* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @residency_info_ffh, i32 0, i32 1, i32 0), align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @residency_info_ffh, i32 0, i32 1, i32 1), align 8
  %35 = add i64 %33, %34
  %36 = sub i64 %35, 1
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @residency_info_ffh, i32 0, i32 1, i32 0), align 8
  %38 = call i64 @GENMASK_ULL(i64 %36, i64 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64*, i64** %4, align 8
  %41 = load i64, i64* %40, align 8
  %42 = and i64 %41, %39
  store i64 %42, i64* %40, align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @residency_info_ffh, i32 0, i32 1, i32 0), align 8
  %44 = load i64*, i64** %4, align 8
  %45 = load i64, i64* %44, align 8
  %46 = lshr i64 %45, %43
  store i64 %46, i64* %44, align 8
  %47 = load i64*, i64** %4, align 8
  %48 = load i64, i64* %47, align 8
  %49 = mul i64 %48, 1000000
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @residency_info_ffh, i32 0, i32 0), align 8
  %51 = call i64 @div64_u64(i64 %49, i32 %50)
  %52 = load i64*, i64** %4, align 8
  store i64 %51, i64* %52, align 8
  store i32 0, i32* %3, align 4
  br label %56

53:                                               ; preds = %26
  %54 = load i32, i32* @ENODATA, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %32, %20, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @acpi_os_read_iomem(i32, i64*, i32) #1

declare dso_local i64 @div64_u64(i64, i32) #1

declare dso_local i32 @rdmsrl_safe(i32, i64*) #1

declare dso_local i64 @GENMASK_ULL(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
