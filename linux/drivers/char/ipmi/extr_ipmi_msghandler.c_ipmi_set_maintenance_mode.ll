; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_set_maintenance_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_set_maintenance_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_user = type { %struct.ipmi_smi* }
%struct.ipmi_smi = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmi_set_maintenance_mode(%struct.ipmi_user* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_user*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ipmi_smi*, align 8
  store %struct.ipmi_user* %0, %struct.ipmi_user** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.ipmi_user*, %struct.ipmi_user** %4, align 8
  %11 = getelementptr inbounds %struct.ipmi_user, %struct.ipmi_user* %10, i32 0, i32 0
  %12 = load %struct.ipmi_smi*, %struct.ipmi_smi** %11, align 8
  store %struct.ipmi_smi* %12, %struct.ipmi_smi** %9, align 8
  %13 = load %struct.ipmi_user*, %struct.ipmi_user** %4, align 8
  %14 = call %struct.ipmi_user* @acquire_ipmi_user(%struct.ipmi_user* %13, i32* %7)
  store %struct.ipmi_user* %14, %struct.ipmi_user** %4, align 8
  %15 = load %struct.ipmi_user*, %struct.ipmi_user** %4, align 8
  %16 = icmp ne %struct.ipmi_user* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %65

20:                                               ; preds = %2
  %21 = load %struct.ipmi_smi*, %struct.ipmi_smi** %9, align 8
  %22 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %21, i32 0, i32 2
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.ipmi_smi*, %struct.ipmi_smi** %9, align 8
  %26 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %46 [
    i32 130, label %32
    i32 129, label %40
    i32 128, label %43
  ]

32:                                               ; preds = %30
  %33 = load %struct.ipmi_smi*, %struct.ipmi_smi** %9, align 8
  %34 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load %struct.ipmi_smi*, %struct.ipmi_smi** %9, align 8
  %39 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %49

40:                                               ; preds = %30
  %41 = load %struct.ipmi_smi*, %struct.ipmi_smi** %9, align 8
  %42 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  br label %49

43:                                               ; preds = %30
  %44 = load %struct.ipmi_smi*, %struct.ipmi_smi** %9, align 8
  %45 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %49

46:                                               ; preds = %30
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %56

49:                                               ; preds = %43, %40, %32
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.ipmi_smi*, %struct.ipmi_smi** %9, align 8
  %52 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ipmi_smi*, %struct.ipmi_smi** %9, align 8
  %54 = call i32 @maintenance_mode_update(%struct.ipmi_smi* %53)
  br label %55

55:                                               ; preds = %49, %20
  br label %56

56:                                               ; preds = %55, %46
  %57 = load %struct.ipmi_smi*, %struct.ipmi_smi** %9, align 8
  %58 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %57, i32 0, i32 2
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load %struct.ipmi_user*, %struct.ipmi_user** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @release_ipmi_user(%struct.ipmi_user* %61, i32 %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %56, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.ipmi_user* @acquire_ipmi_user(%struct.ipmi_user*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @maintenance_mode_update(%struct.ipmi_smi*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @release_ipmi_user(%struct.ipmi_user*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
