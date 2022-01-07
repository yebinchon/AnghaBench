; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_is_memory_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_is_memory_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce = type { i64, i32 }

@X86_VENDOR_AMD = common dso_local global i64 0, align 8
@X86_VENDOR_HYGON = common dso_local global i64 0, align 8
@X86_VENDOR_INTEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mce_is_memory_error(%struct.mce* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mce*, align 8
  store %struct.mce* %0, %struct.mce** %3, align 8
  %4 = load %struct.mce*, %struct.mce** %3, align 8
  %5 = getelementptr inbounds %struct.mce, %struct.mce* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @X86_VENDOR_AMD, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.mce*, %struct.mce** %3, align 8
  %11 = getelementptr inbounds %struct.mce, %struct.mce* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @X86_VENDOR_HYGON, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9, %1
  %16 = load %struct.mce*, %struct.mce** %3, align 8
  %17 = call i32 @amd_mce_is_memory_error(%struct.mce* %16)
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %9
  %19 = load %struct.mce*, %struct.mce** %3, align 8
  %20 = getelementptr inbounds %struct.mce, %struct.mce* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @X86_VENDOR_INTEL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %18
  %25 = load %struct.mce*, %struct.mce** %3, align 8
  %26 = getelementptr inbounds %struct.mce, %struct.mce* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 61312
  %29 = call i32 @BIT(i32 7)
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %44, label %31

31:                                               ; preds = %24
  %32 = load %struct.mce*, %struct.mce** %3, align 8
  %33 = getelementptr inbounds %struct.mce, %struct.mce* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 61184
  %36 = call i32 @BIT(i32 8)
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load %struct.mce*, %struct.mce** %3, align 8
  %40 = getelementptr inbounds %struct.mce, %struct.mce* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 61436
  %43 = icmp eq i32 %42, 12
  br label %44

44:                                               ; preds = %38, %31, %24
  %45 = phi i1 [ true, %31 ], [ true, %24 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %2, align 4
  br label %49

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %44, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @amd_mce_is_memory_error(%struct.mce*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
