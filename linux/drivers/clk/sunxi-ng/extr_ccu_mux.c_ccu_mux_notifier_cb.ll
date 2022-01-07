; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mux.c_ccu_mux_notifier_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mux.c_ccu_mux_notifier_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.ccu_mux_nb = type { i32, i32, i32, i32, i32 }

@PRE_RATE_CHANGE = common dso_local global i64 0, align 8
@POST_RATE_CHANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @ccu_mux_notifier_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccu_mux_notifier_cb(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ccu_mux_nb*, align 8
  %8 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %10 = call %struct.ccu_mux_nb* @to_ccu_mux_nb(%struct.notifier_block* %9)
  store %struct.ccu_mux_nb* %10, %struct.ccu_mux_nb** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @PRE_RATE_CHANGE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = load %struct.ccu_mux_nb*, %struct.ccu_mux_nb** %7, align 8
  %16 = getelementptr inbounds %struct.ccu_mux_nb, %struct.ccu_mux_nb* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ccu_mux_nb*, %struct.ccu_mux_nb** %7, align 8
  %19 = getelementptr inbounds %struct.ccu_mux_nb, %struct.ccu_mux_nb* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ccu_mux_helper_get_parent(i32 %17, i32 %20)
  %22 = load %struct.ccu_mux_nb*, %struct.ccu_mux_nb** %7, align 8
  %23 = getelementptr inbounds %struct.ccu_mux_nb, %struct.ccu_mux_nb* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ccu_mux_nb*, %struct.ccu_mux_nb** %7, align 8
  %25 = getelementptr inbounds %struct.ccu_mux_nb, %struct.ccu_mux_nb* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ccu_mux_nb*, %struct.ccu_mux_nb** %7, align 8
  %28 = getelementptr inbounds %struct.ccu_mux_nb, %struct.ccu_mux_nb* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ccu_mux_nb*, %struct.ccu_mux_nb** %7, align 8
  %31 = getelementptr inbounds %struct.ccu_mux_nb, %struct.ccu_mux_nb* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ccu_mux_helper_set_parent(i32 %26, i32 %29, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %50

34:                                               ; preds = %3
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @POST_RATE_CHANGE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.ccu_mux_nb*, %struct.ccu_mux_nb** %7, align 8
  %40 = getelementptr inbounds %struct.ccu_mux_nb, %struct.ccu_mux_nb* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ccu_mux_nb*, %struct.ccu_mux_nb** %7, align 8
  %43 = getelementptr inbounds %struct.ccu_mux_nb, %struct.ccu_mux_nb* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ccu_mux_nb*, %struct.ccu_mux_nb** %7, align 8
  %46 = getelementptr inbounds %struct.ccu_mux_nb, %struct.ccu_mux_nb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ccu_mux_helper_set_parent(i32 %41, i32 %44, i32 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %38, %34
  br label %50

50:                                               ; preds = %49, %14
  %51 = load %struct.ccu_mux_nb*, %struct.ccu_mux_nb** %7, align 8
  %52 = getelementptr inbounds %struct.ccu_mux_nb, %struct.ccu_mux_nb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @udelay(i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @notifier_from_errno(i32 %55)
  ret i32 %56
}

declare dso_local %struct.ccu_mux_nb* @to_ccu_mux_nb(%struct.notifier_block*) #1

declare dso_local i32 @ccu_mux_helper_get_parent(i32, i32) #1

declare dso_local i32 @ccu_mux_helper_set_parent(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @notifier_from_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
