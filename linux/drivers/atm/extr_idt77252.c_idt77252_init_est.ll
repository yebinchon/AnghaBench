; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_init_est.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_init_est.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_estimator = type { i32, i32, i32, i32, i32, i32, %struct.vc_map* }
%struct.vc_map = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@idt77252_est_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rate_estimator* (%struct.vc_map*, i32)* @idt77252_init_est to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rate_estimator* @idt77252_init_est(%struct.vc_map* %0, i32 %1) #0 {
  %3 = alloca %struct.rate_estimator*, align 8
  %4 = alloca %struct.vc_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rate_estimator*, align 8
  store %struct.vc_map* %0, %struct.vc_map** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.rate_estimator* @kzalloc(i32 32, i32 %7)
  store %struct.rate_estimator* %8, %struct.rate_estimator** %6, align 8
  %9 = load %struct.rate_estimator*, %struct.rate_estimator** %6, align 8
  %10 = icmp ne %struct.rate_estimator* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.rate_estimator* null, %struct.rate_estimator** %3, align 8
  br label %59

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 0, %16
  br label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %17, %15 ], [ %19, %18 ]
  %22 = load %struct.rate_estimator*, %struct.rate_estimator** %6, align 8
  %23 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.rate_estimator*, %struct.rate_estimator** %6, align 8
  %25 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rate_estimator*, %struct.rate_estimator** %6, align 8
  %28 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.rate_estimator*, %struct.rate_estimator** %6, align 8
  %30 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 5
  %33 = load %struct.rate_estimator*, %struct.rate_estimator** %6, align 8
  %34 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %36 = load %struct.rate_estimator*, %struct.rate_estimator** %6, align 8
  %37 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %36, i32 0, i32 6
  store %struct.vc_map* %35, %struct.vc_map** %37, align 8
  %38 = load %struct.rate_estimator*, %struct.rate_estimator** %6, align 8
  %39 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %38, i32 0, i32 3
  store i32 2, i32* %39, align 4
  %40 = load %struct.rate_estimator*, %struct.rate_estimator** %6, align 8
  %41 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %40, i32 0, i32 4
  store i32 2, i32* %41, align 8
  %42 = load %struct.rate_estimator*, %struct.rate_estimator** %6, align 8
  %43 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %42, i32 0, i32 5
  %44 = load i32, i32* @idt77252_est_timer, align 4
  %45 = call i32 @timer_setup(i32* %43, i32 %44, i32 0)
  %46 = load %struct.rate_estimator*, %struct.rate_estimator** %6, align 8
  %47 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %46, i32 0, i32 5
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i32, i32* @HZ, align 4
  %50 = sdiv i32 %49, 4
  %51 = load %struct.rate_estimator*, %struct.rate_estimator** %6, align 8
  %52 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %50, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %48, %55
  %57 = call i32 @mod_timer(i32* %47, i64 %56)
  %58 = load %struct.rate_estimator*, %struct.rate_estimator** %6, align 8
  store %struct.rate_estimator* %58, %struct.rate_estimator** %3, align 8
  br label %59

59:                                               ; preds = %20, %11
  %60 = load %struct.rate_estimator*, %struct.rate_estimator** %3, align 8
  ret %struct.rate_estimator* %60
}

declare dso_local %struct.rate_estimator* @kzalloc(i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
