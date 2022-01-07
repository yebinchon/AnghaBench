; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_vtime.c_update_mt_scaling.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_vtime.c_update_mt_scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MT_DIAG = common dso_local global i32 0, align 4
@smp_cpu_mtid = common dso_local global i32 0, align 4
@mt_cycles = common dso_local global i32 0, align 4
@mt_scaling_mult = common dso_local global i32 0, align 4
@mt_scaling_div = common dso_local global i32 0, align 4
@mt_scaling_jiffies = common dso_local global i32 0, align 4
@jiffies_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_mt_scaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_mt_scaling() #0 {
  %1 = alloca [8 x i32], align 16
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MT_DIAG, align 4
  %9 = load i32, i32* @smp_cpu_mtid, align 4
  %10 = add nsw i32 %9, 1
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %12 = call i32 @stcctm(i32 %8, i32 %10, i32* %11)
  %13 = load i32, i32* @mt_cycles, align 4
  %14 = call i32* @this_cpu_ptr(i32 %13)
  store i32* %14, i32** %2, align 8
  store i32 1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %46, %0
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @smp_cpu_mtid, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %23, %28
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %4, align 4
  %45 = mul nsw i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %19
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %15

49:                                               ; preds = %15
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %49
  %56 = load i32, i32* @mt_scaling_mult, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @__this_cpu_write(i32 %56, i32 %57)
  %59 = load i32, i32* @mt_scaling_div, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @__this_cpu_write(i32 %59, i32 %60)
  %62 = load i32*, i32** %2, align 8
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %64 = load i32, i32* @smp_cpu_mtid, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memcpy(i32* %62, i32* %63, i32 %68)
  br label %70

70:                                               ; preds = %55, %49
  %71 = load i32, i32* @mt_scaling_jiffies, align 4
  %72 = load i32, i32* @jiffies_64, align 4
  %73 = call i32 @__this_cpu_write(i32 %71, i32 %72)
  ret void
}

declare dso_local i32 @stcctm(i32, i32, i32*) #1

declare dso_local i32* @this_cpu_ptr(i32) #1

declare dso_local i32 @__this_cpu_write(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
