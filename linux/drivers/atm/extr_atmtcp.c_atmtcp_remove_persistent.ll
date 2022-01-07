; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_atmtcp.c_atmtcp_remove_persistent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_atmtcp.c_atmtcp_remove_persistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32* }
%struct.atmtcp_dev_data = type { i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@atmtcp_v_dev_ops = common dso_local global i32 0, align 4
@EMEDIUMTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atmtcp_remove_persistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmtcp_remove_persistent(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_dev*, align 8
  %5 = alloca %struct.atmtcp_dev_data*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.atm_dev* @atm_dev_lookup(i32 %6)
  store %struct.atm_dev* %7, %struct.atm_dev** %4, align 8
  %8 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %9 = icmp ne %struct.atm_dev* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %47

13:                                               ; preds = %1
  %14 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %15 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, @atmtcp_v_dev_ops
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %20 = call i32 @atm_dev_put(%struct.atm_dev* %19)
  %21 = load i32, i32* @EMEDIUMTYPE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %47

23:                                               ; preds = %13
  %24 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %25 = call %struct.atmtcp_dev_data* @PRIV(%struct.atm_dev* %24)
  store %struct.atmtcp_dev_data* %25, %struct.atmtcp_dev_data** %5, align 8
  %26 = load %struct.atmtcp_dev_data*, %struct.atmtcp_dev_data** %5, align 8
  %27 = getelementptr inbounds %struct.atmtcp_dev_data, %struct.atmtcp_dev_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %47

31:                                               ; preds = %23
  %32 = load %struct.atmtcp_dev_data*, %struct.atmtcp_dev_data** %5, align 8
  %33 = getelementptr inbounds %struct.atmtcp_dev_data, %struct.atmtcp_dev_data* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %35 = call %struct.atmtcp_dev_data* @PRIV(%struct.atm_dev* %34)
  %36 = getelementptr inbounds %struct.atmtcp_dev_data, %struct.atmtcp_dev_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %47

40:                                               ; preds = %31
  %41 = load %struct.atmtcp_dev_data*, %struct.atmtcp_dev_data** %5, align 8
  %42 = call i32 @kfree(%struct.atmtcp_dev_data* %41)
  %43 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %44 = call i32 @atm_dev_put(%struct.atm_dev* %43)
  %45 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %46 = call i32 @atm_dev_deregister(%struct.atm_dev* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %40, %39, %30, %18, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.atm_dev* @atm_dev_lookup(i32) #1

declare dso_local i32 @atm_dev_put(%struct.atm_dev*) #1

declare dso_local %struct.atmtcp_dev_data* @PRIV(%struct.atm_dev*) #1

declare dso_local i32 @kfree(%struct.atmtcp_dev_data*) #1

declare dso_local i32 @atm_dev_deregister(%struct.atm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
