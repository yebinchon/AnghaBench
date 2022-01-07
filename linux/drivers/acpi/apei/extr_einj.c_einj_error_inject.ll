; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_einj.c_einj_error_inject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_einj.c_einj_error_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SETWA_FLAGS_APICID = common dso_local global i32 0, align 4
@SETWA_FLAGS_MEM = common dso_local global i32 0, align 4
@SETWA_FLAGS_PCIE_SBDF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@param_extension = common dso_local global i64 0, align 8
@acpi5 = common dso_local global i64 0, align 8
@ACPI5_VENDOR_BIT = common dso_local global i32 0, align 4
@vendor_flags = common dso_local global i32 0, align 4
@MEM_ERROR_MASK = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@IORESOURCE_SYSTEM_RAM = common dso_local global i32 0, align 4
@IORES_DESC_NONE = common dso_local global i32 0, align 4
@REGION_INTERSECTS = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORES_DESC_PERSISTENT_MEMORY = common dso_local global i32 0, align 4
@einj_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @einj_error_inject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @einj_error_inject(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %6
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @SETWA_FLAGS_APICID, align 4
  %22 = load i32, i32* @SETWA_FLAGS_MEM, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SETWA_FLAGS_PCIE_SBDF, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %20, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %105

32:                                               ; preds = %19, %6
  %33 = load i64, i64* @param_extension, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* @acpi5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %94

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @ACPI5_VENDOR_BIT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* @vendor_flags, align 4
  %46 = load i32, i32* @SETWA_FLAGS_MEM, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %94

49:                                               ; preds = %44
  br label %62

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @MEM_ERROR_MASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @SETWA_FLAGS_MEM, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %94

61:                                               ; preds = %55, %50
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %11, align 4
  %67 = xor i32 %66, -1
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @PAGE_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @PAGE_MASK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %90, label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* @IORESOURCE_SYSTEM_RAM, align 4
  %78 = load i32, i32* @IORES_DESC_NONE, align 4
  %79 = call i64 @region_intersects(i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i64, i64* @REGION_INTERSECTS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %74
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @IORESOURCE_MEM, align 4
  %86 = load i32, i32* @IORES_DESC_PERSISTENT_MEMORY, align 4
  %87 = call i64 @region_intersects(i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i64, i64* @REGION_INTERSECTS, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %82, %62
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %105

93:                                               ; preds = %82, %74
  br label %94

94:                                               ; preds = %93, %60, %48, %38
  %95 = call i32 @mutex_lock(i32* @einj_mutex)
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @__einj_error_inject(i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %14, align 4
  %103 = call i32 @mutex_unlock(i32* @einj_mutex)
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %94, %90, %29
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i64 @region_intersects(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__einj_error_inject(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
