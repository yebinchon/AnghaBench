; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_init_ubr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_init_ubr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32 }
%struct.vc_map = type { i32, i32, i32, i32, %struct.rate_estimator*, i32 }
%struct.rate_estimator = type { i32 }
%struct.atm_vcc = type { i32 }
%struct.atm_qos = type { i32 }

@SCHED_UBR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*, %struct.vc_map*, %struct.atm_vcc*, %struct.atm_qos*)* @idt77252_init_ubr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt77252_init_ubr(%struct.idt77252_dev* %0, %struct.vc_map* %1, %struct.atm_vcc* %2, %struct.atm_qos* %3) #0 {
  %5 = alloca %struct.idt77252_dev*, align 8
  %6 = alloca %struct.vc_map*, align 8
  %7 = alloca %struct.atm_vcc*, align 8
  %8 = alloca %struct.atm_qos*, align 8
  %9 = alloca %struct.rate_estimator*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %5, align 8
  store %struct.vc_map* %1, %struct.vc_map** %6, align 8
  store %struct.atm_vcc* %2, %struct.atm_vcc** %7, align 8
  store %struct.atm_qos* %3, %struct.atm_qos** %8, align 8
  store %struct.rate_estimator* null, %struct.rate_estimator** %9, align 8
  %12 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %13 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %12, i32 0, i32 5
  %14 = load i64, i64* %10, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %17 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %16, i32 0, i32 4
  %18 = load %struct.rate_estimator*, %struct.rate_estimator** %17, align 8
  %19 = icmp ne %struct.rate_estimator* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %22 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %21, i32 0, i32 4
  %23 = load %struct.rate_estimator*, %struct.rate_estimator** %22, align 8
  store %struct.rate_estimator* %23, %struct.rate_estimator** %9, align 8
  %24 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %25 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %24, i32 0, i32 4
  store %struct.rate_estimator* null, %struct.rate_estimator** %25, align 8
  br label %26

26:                                               ; preds = %20, %4
  %27 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %28 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %27, i32 0, i32 5
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.rate_estimator*, %struct.rate_estimator** %9, align 8
  %32 = icmp ne %struct.rate_estimator* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.rate_estimator*, %struct.rate_estimator** %9, align 8
  %35 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %34, i32 0, i32 0
  %36 = call i32 @del_timer_sync(i32* %35)
  %37 = load %struct.rate_estimator*, %struct.rate_estimator** %9, align 8
  %38 = call i32 @kfree(%struct.rate_estimator* %37)
  br label %39

39:                                               ; preds = %33, %26
  %40 = load %struct.atm_qos*, %struct.atm_qos** %8, align 8
  %41 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %40, i32 0, i32 0
  %42 = call i32 @atm_pcr_goal(i32* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %47 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call %struct.rate_estimator* @idt77252_init_est(%struct.vc_map* %50, i32 %51)
  %53 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %54 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %53, i32 0, i32 4
  store %struct.rate_estimator* %52, %struct.rate_estimator** %54, align 8
  %55 = load i32, i32* @SCHED_UBR, align 4
  %56 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %57 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @idt77252_rate_logindex(%struct.idt77252_dev* %58, i32 %59)
  %61 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %62 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %64 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %67 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %49
  %71 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %72 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %75 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  br label %79

76:                                               ; preds = %49
  %77 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %78 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %77, i32 0, i32 2
  store i32 255, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %70
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @kfree(%struct.rate_estimator*) #1

declare dso_local i32 @atm_pcr_goal(i32*) #1

declare dso_local %struct.rate_estimator* @idt77252_init_est(%struct.vc_map*, i32) #1

declare dso_local i32 @idt77252_rate_logindex(%struct.idt77252_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
