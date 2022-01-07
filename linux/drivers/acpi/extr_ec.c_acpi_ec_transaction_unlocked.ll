; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_transaction_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_transaction_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32, %struct.transaction* }
%struct.transaction = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Increase command\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Command(%s) started\00", align 1
@ec_storm_threshold = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Command(%s) stopped\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Decrease command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ec*, %struct.transaction*)* @acpi_ec_transaction_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ec_transaction_unlocked(%struct.acpi_ec* %0, %struct.transaction* %1) #0 {
  %3 = alloca %struct.acpi_ec*, align 8
  %4 = alloca %struct.transaction*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_ec* %0, %struct.acpi_ec** %3, align 8
  store %struct.transaction* %1, %struct.transaction** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %12 = call i32 @acpi_ec_submit_flushable_request(%struct.acpi_ec* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %19 = call i32 @ec_dbg_ref(%struct.acpi_ec* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.transaction*, %struct.transaction** %4, align 8
  %21 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %21, i32 0, i32 1
  store %struct.transaction* %20, %struct.transaction** %22, align 8
  %23 = load %struct.transaction*, %struct.transaction** %4, align 8
  %24 = getelementptr inbounds %struct.transaction, %struct.transaction* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @acpi_ec_cmd_string(i32 %25)
  %27 = call i32 @ec_dbg_req(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %29 = call i32 @start_transaction(%struct.acpi_ec* %28)
  %30 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %35 = call i32 @ec_poll(%struct.acpi_ec* %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %37 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %36, i32 0, i32 0
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.transaction*, %struct.transaction** %4, align 8
  %41 = getelementptr inbounds %struct.transaction, %struct.transaction* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ec_storm_threshold, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %17
  %46 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %47 = call i32 @acpi_ec_unmask_gpe(%struct.acpi_ec* %46)
  br label %48

48:                                               ; preds = %45, %17
  %49 = load %struct.transaction*, %struct.transaction** %4, align 8
  %50 = getelementptr inbounds %struct.transaction, %struct.transaction* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @acpi_ec_cmd_string(i32 %51)
  %53 = call i32 @ec_dbg_req(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %55 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %54, i32 0, i32 1
  store %struct.transaction* null, %struct.transaction** %55, align 8
  %56 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %57 = call i32 @acpi_ec_complete_request(%struct.acpi_ec* %56)
  %58 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %59 = call i32 @ec_dbg_ref(%struct.acpi_ec* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %48, %14
  %61 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %62 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %61, i32 0, i32 0
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @acpi_ec_submit_flushable_request(%struct.acpi_ec*) #1

declare dso_local i32 @ec_dbg_ref(%struct.acpi_ec*, i8*) #1

declare dso_local i32 @ec_dbg_req(i8*, i32) #1

declare dso_local i32 @acpi_ec_cmd_string(i32) #1

declare dso_local i32 @start_transaction(%struct.acpi_ec*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ec_poll(%struct.acpi_ec*) #1

declare dso_local i32 @acpi_ec_unmask_gpe(%struct.acpi_ec*) #1

declare dso_local i32 @acpi_ec_complete_request(%struct.acpi_ec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
