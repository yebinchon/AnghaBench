; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32, i64 }
%struct.transaction = type { i64, i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_EC_UDELAY_GLK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ec*, %struct.transaction*)* @acpi_ec_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ec_transaction(%struct.acpi_ec* %0, %struct.transaction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_ec*, align 8
  %5 = alloca %struct.transaction*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_ec* %0, %struct.acpi_ec** %4, align 8
  store %struct.transaction* %1, %struct.transaction** %5, align 8
  %8 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %9 = icmp ne %struct.acpi_ec* %8, null
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load %struct.transaction*, %struct.transaction** %5, align 8
  %12 = icmp ne %struct.transaction* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load %struct.transaction*, %struct.transaction** %5, align 8
  %15 = getelementptr inbounds %struct.transaction, %struct.transaction* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.transaction*, %struct.transaction** %5, align 8
  %20 = getelementptr inbounds %struct.transaction, %struct.transaction* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18, %13
  %24 = load %struct.transaction*, %struct.transaction** %5, align 8
  %25 = getelementptr inbounds %struct.transaction, %struct.transaction* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.transaction*, %struct.transaction** %5, align 8
  %30 = getelementptr inbounds %struct.transaction, %struct.transaction* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %18, %10, %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %84

36:                                               ; preds = %28, %23
  %37 = load %struct.transaction*, %struct.transaction** %5, align 8
  %38 = getelementptr inbounds %struct.transaction, %struct.transaction* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.transaction*, %struct.transaction** %5, align 8
  %43 = getelementptr inbounds %struct.transaction, %struct.transaction* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.transaction*, %struct.transaction** %5, align 8
  %46 = getelementptr inbounds %struct.transaction, %struct.transaction* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @memset(i64 %44, i32 0, i64 %47)
  br label %49

49:                                               ; preds = %41, %36
  %50 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %51 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %54 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load i32, i32* @ACPI_EC_UDELAY_GLK, align 4
  %59 = call i32 @acpi_acquire_global_lock(i32 %58, i32* %7)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @ACPI_FAILURE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %79

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %49
  %68 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %69 = load %struct.transaction*, %struct.transaction** %5, align 8
  %70 = call i32 @acpi_ec_transaction_unlocked(%struct.acpi_ec* %68, %struct.transaction* %69)
  store i32 %70, i32* %6, align 4
  %71 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %72 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @acpi_release_global_lock(i32 %76)
  br label %78

78:                                               ; preds = %75, %67
  br label %79

79:                                               ; preds = %78, %63
  %80 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %81 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %79, %33
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @acpi_acquire_global_lock(i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ec_transaction_unlocked(%struct.acpi_ec*, %struct.transaction*) #1

declare dso_local i32 @acpi_release_global_lock(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
