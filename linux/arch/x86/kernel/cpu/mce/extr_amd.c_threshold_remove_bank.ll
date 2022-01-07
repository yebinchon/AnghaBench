; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_threshold_remove_bank.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_threshold_remove_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_northbridge = type { i32* }
%struct.threshold_bank = type { i32, i32, i32 }

@threshold_banks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @threshold_remove_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @threshold_remove_bank(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.amd_northbridge*, align 8
  %6 = alloca %struct.threshold_bank*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @threshold_banks, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.threshold_bank** @per_cpu(i32 %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.threshold_bank*, %struct.threshold_bank** %9, i64 %11
  %13 = load %struct.threshold_bank*, %struct.threshold_bank** %12, align 8
  store %struct.threshold_bank* %13, %struct.threshold_bank** %6, align 8
  %14 = load %struct.threshold_bank*, %struct.threshold_bank** %6, align 8
  %15 = icmp ne %struct.threshold_bank* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %69

17:                                               ; preds = %2
  %18 = load %struct.threshold_bank*, %struct.threshold_bank** %6, align 8
  %19 = getelementptr inbounds %struct.threshold_bank, %struct.threshold_bank* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %52

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @is_shared_bank(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = load %struct.threshold_bank*, %struct.threshold_bank** %6, align 8
  %29 = getelementptr inbounds %struct.threshold_bank, %struct.threshold_bank* %28, i32 0, i32 1
  %30 = call i32 @refcount_dec_and_test(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = load %struct.threshold_bank*, %struct.threshold_bank** %6, align 8
  %34 = call i32 @__threshold_remove_blocks(%struct.threshold_bank* %33)
  %35 = load i32, i32* @threshold_banks, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call %struct.threshold_bank** @per_cpu(i32 %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.threshold_bank*, %struct.threshold_bank** %37, i64 %39
  store %struct.threshold_bank* null, %struct.threshold_bank** %40, align 8
  br label %69

41:                                               ; preds = %27
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @amd_get_nb_id(i32 %42)
  %44 = call %struct.amd_northbridge* @node_to_amd_nb(i32 %43)
  store %struct.amd_northbridge* %44, %struct.amd_northbridge** %5, align 8
  %45 = load %struct.amd_northbridge*, %struct.amd_northbridge** %5, align 8
  %46 = getelementptr inbounds %struct.amd_northbridge, %struct.amd_northbridge* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %23
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @deallocate_threshold_block(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %22
  %53 = load %struct.threshold_bank*, %struct.threshold_bank** %6, align 8
  %54 = getelementptr inbounds %struct.threshold_bank, %struct.threshold_bank* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @kobject_del(i32 %55)
  %57 = load %struct.threshold_bank*, %struct.threshold_bank** %6, align 8
  %58 = getelementptr inbounds %struct.threshold_bank, %struct.threshold_bank* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @kobject_put(i32 %59)
  %61 = load %struct.threshold_bank*, %struct.threshold_bank** %6, align 8
  %62 = call i32 @kfree(%struct.threshold_bank* %61)
  %63 = load i32, i32* @threshold_banks, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call %struct.threshold_bank** @per_cpu(i32 %63, i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.threshold_bank*, %struct.threshold_bank** %65, i64 %67
  store %struct.threshold_bank* null, %struct.threshold_bank** %68, align 8
  br label %69

69:                                               ; preds = %52, %32, %16
  ret void
}

declare dso_local %struct.threshold_bank** @per_cpu(i32, i32) #1

declare dso_local i64 @is_shared_bank(i32) #1

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @__threshold_remove_blocks(%struct.threshold_bank*) #1

declare dso_local %struct.amd_northbridge* @node_to_amd_nb(i32) #1

declare dso_local i32 @amd_get_nb_id(i32) #1

declare dso_local i32 @deallocate_threshold_block(i32, i32) #1

declare dso_local i32 @kobject_del(i32) #1

declare dso_local i32 @kobject_put(i32) #1

declare dso_local i32 @kfree(%struct.threshold_bank*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
