; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_ec_guard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_ec_guard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i64, i32, i64, i32 }

@jiffies = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ec*)* @ec_guard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_guard(%struct.acpi_ec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_ec*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.acpi_ec* %0, %struct.acpi_ec** %3, align 8
  %6 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @usecs_to_jiffies(i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %12, %13
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %50, %1
  %16 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %22 = call i64 @ec_transaction_completed(%struct.acpi_ec* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %58

25:                                               ; preds = %20
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @jiffies_to_usecs(i64 %26)
  %28 = call i32 @udelay(i32 %27)
  br label %49

29:                                               ; preds = %15
  %30 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %31 = call i32 @ec_transaction_polled(%struct.acpi_ec* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %35 = call i32 @acpi_ec_guard_event(%struct.acpi_ec* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %55

38:                                               ; preds = %33, %29
  %39 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %40 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %43 = call i64 @ec_transaction_completed(%struct.acpi_ec* %42)
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @wait_event_timeout(i32 %41, i64 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %58

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %25
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* @jiffies, align 4
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @time_before(i32 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %15, label %55

55:                                               ; preds = %50, %37
  %56 = load i32, i32* @ETIME, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %47, %24
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i64 @ec_transaction_completed(%struct.acpi_ec*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @jiffies_to_usecs(i64) #1

declare dso_local i32 @ec_transaction_polled(%struct.acpi_ec*) #1

declare dso_local i32 @acpi_ec_guard_event(%struct.acpi_ec*) #1

declare dso_local i64 @wait_event_timeout(i32, i64, i64) #1

declare dso_local i64 @time_before(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
