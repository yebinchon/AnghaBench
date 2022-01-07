; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvm_init_subcore_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvm_init_subcore_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.sibling_subcore_state* }
%struct.sibling_subcore_state = type { i32 }

@threads_per_core = common dso_local global i32 0, align 4
@paca_ptrs = common dso_local global %struct.TYPE_2__** null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kvm_init_subcore_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_init_subcore_bitmap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sibling_subcore_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 (...) @cpu_nr_cores()
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %58, %0
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %61

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @threads_per_core, align 4
  %17 = mul nsw i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @cpu_to_node(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @paca_ptrs, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.sibling_subcore_state*, %struct.sibling_subcore_state** %25, align 8
  %27 = icmp ne %struct.sibling_subcore_state* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  br label %58

29:                                               ; preds = %14
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.sibling_subcore_state* @kzalloc_node(i32 4, i32 %30, i32 %31)
  store %struct.sibling_subcore_state* %32, %struct.sibling_subcore_state** %5, align 8
  %33 = load %struct.sibling_subcore_state*, %struct.sibling_subcore_state** %5, align 8
  %34 = icmp ne %struct.sibling_subcore_state* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %1, align 4
  br label %62

38:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %54, %38
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @threads_per_core, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %8, align 4
  %47 = load %struct.sibling_subcore_state*, %struct.sibling_subcore_state** %5, align 8
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @paca_ptrs, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store %struct.sibling_subcore_state* %47, %struct.sibling_subcore_state** %53, align 8
  br label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %39

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57, %28
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %10

61:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %62

62:                                               ; preds = %61, %35
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i32 @cpu_nr_cores(...) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local %struct.sibling_subcore_state* @kzalloc_node(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
