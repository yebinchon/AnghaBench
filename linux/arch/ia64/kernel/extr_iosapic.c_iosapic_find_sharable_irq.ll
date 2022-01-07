; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_iosapic.c_iosapic_find_sharable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_iosapic.c_iosapic_find_sharable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iosapic_intr_info = type { i64, i64, i64, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@IOSAPIC_EDGE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NR_IRQS = common dso_local global i32 0, align 4
@iosapic_intr_info = common dso_local global %struct.iosapic_intr_info* null, align 8
@IOSAPIC_FIXED = common dso_local global i64 0, align 8
@IOSAPIC_LOWEST_PRIORITY = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @iosapic_find_sharable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iosapic_find_sharable_irq(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iosapic_intr_info*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @ENOSPC, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @IOSAPIC_EDGE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %77

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %72, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @NR_IRQS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %75

23:                                               ; preds = %19
  %24 = load %struct.iosapic_intr_info*, %struct.iosapic_intr_info** @iosapic_intr_info, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.iosapic_intr_info, %struct.iosapic_intr_info* %24, i64 %26
  store %struct.iosapic_intr_info* %27, %struct.iosapic_intr_info** %9, align 8
  %28 = load %struct.iosapic_intr_info*, %struct.iosapic_intr_info** %9, align 8
  %29 = getelementptr inbounds %struct.iosapic_intr_info, %struct.iosapic_intr_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %23
  %34 = load %struct.iosapic_intr_info*, %struct.iosapic_intr_info** %9, align 8
  %35 = getelementptr inbounds %struct.iosapic_intr_info, %struct.iosapic_intr_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %33
  %40 = load %struct.iosapic_intr_info*, %struct.iosapic_intr_info** %9, align 8
  %41 = getelementptr inbounds %struct.iosapic_intr_info, %struct.iosapic_intr_info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IOSAPIC_FIXED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.iosapic_intr_info*, %struct.iosapic_intr_info** %9, align 8
  %47 = getelementptr inbounds %struct.iosapic_intr_info, %struct.iosapic_intr_info* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IOSAPIC_LOWEST_PRIORITY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %45, %39
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @IRQF_SHARED, align 4
  %54 = call i64 @can_request_irq(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load %struct.iosapic_intr_info*, %struct.iosapic_intr_info** %9, align 8
  %61 = getelementptr inbounds %struct.iosapic_intr_info, %struct.iosapic_intr_info* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59, %56
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %7, align 4
  %67 = load %struct.iosapic_intr_info*, %struct.iosapic_intr_info** %9, align 8
  %68 = getelementptr inbounds %struct.iosapic_intr_info, %struct.iosapic_intr_info* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %65, %59
  br label %71

71:                                               ; preds = %70, %51, %45, %33, %23
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %19

75:                                               ; preds = %19
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %15
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @can_request_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
