; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_ssif_alert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_ssif_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ssif_info = type { i32, i32, i64, i32 }

@I2C_PROTOCOL_SMBUS_ALERT = common dso_local global i32 0, align 4
@alerts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, i32, i32)* @ssif_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssif_alert(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssif_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = call %struct.ssif_info* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.ssif_info* %12, %struct.ssif_info** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @I2C_PROTOCOL_SMBUS_ALERT, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %51

17:                                               ; preds = %3
  %18 = load %struct.ssif_info*, %struct.ssif_info** %7, align 8
  %19 = load i32, i32* @alerts, align 4
  %20 = call i32 @ssif_inc_stat(%struct.ssif_info* %18, i32 %19)
  %21 = load %struct.ssif_info*, %struct.ssif_info** %7, align 8
  %22 = call i64* @ipmi_ssif_lock_cond(%struct.ssif_info* %21, i64* %8)
  store i64* %22, i64** %9, align 8
  %23 = load %struct.ssif_info*, %struct.ssif_info** %7, align 8
  %24 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load %struct.ssif_info*, %struct.ssif_info** %7, align 8
  %29 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.ssif_info*, %struct.ssif_info** %7, align 8
  %31 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %30, i32 0, i32 3
  %32 = call i32 @del_timer(i32* %31)
  store i32 1, i32* %10, align 4
  br label %42

33:                                               ; preds = %17
  %34 = load %struct.ssif_info*, %struct.ssif_info** %7, align 8
  %35 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.ssif_info*, %struct.ssif_info** %7, align 8
  %40 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %33
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.ssif_info*, %struct.ssif_info** %7, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = call i32 @ipmi_ssif_unlock_cond(%struct.ssif_info* %43, i64* %44)
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.ssif_info*, %struct.ssif_info** %7, align 8
  %50 = call i32 @start_get(%struct.ssif_info* %49)
  br label %51

51:                                               ; preds = %16, %48, %42
  ret void
}

declare dso_local %struct.ssif_info* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @ssif_inc_stat(%struct.ssif_info*, i32) #1

declare dso_local i64* @ipmi_ssif_lock_cond(%struct.ssif_info*, i64*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @ipmi_ssif_unlock_cond(%struct.ssif_info*, i64*) #1

declare dso_local i32 @start_get(%struct.ssif_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
