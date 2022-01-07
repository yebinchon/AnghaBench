; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_amd_mce_is_memory_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_amd_mce_is_memory_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.mce = type { i32, i32 }

@mce_flags = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SMCA_UMC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd_mce_is_memory_error(%struct.mce* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mce*, align 8
  %4 = alloca i32, align 4
  store %struct.mce* %0, %struct.mce** %3, align 8
  %5 = load %struct.mce*, %struct.mce** %3, align 8
  %6 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = ashr i32 %7, 16
  %9 = and i32 %8, 31
  store i32 %9, i32* %4, align 4
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mce_flags, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.mce*, %struct.mce** %3, align 8
  %14 = getelementptr inbounds %struct.mce, %struct.mce* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @smca_get_bank_type(i32 %15)
  %17 = load i64, i64* @SMCA_UMC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %19, %12
  %23 = phi i1 [ false, %12 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %36

25:                                               ; preds = %1
  %26 = load %struct.mce*, %struct.mce** %3, align 8
  %27 = getelementptr inbounds %struct.mce, %struct.mce* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 8
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i1 [ false, %25 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %22
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @smca_get_bank_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
