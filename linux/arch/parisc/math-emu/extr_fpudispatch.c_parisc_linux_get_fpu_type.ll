; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fpudispatch.c_parisc_linux_get_fpu_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fpudispatch.c_parisc_linux_get_fpu_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pcxs = common dso_local global i64 0, align 8
@TIMEX_EXTEN_FLAG = common dso_local global i32 0, align 4
@FPU_TYPE_FLAG_POS = common dso_local global i64 0, align 8
@pcxt = common dso_local global i64 0, align 8
@pcxt_ = common dso_local global i64 0, align 8
@ROLEX_EXTEN_FLAG = common dso_local global i32 0, align 4
@pcxu = common dso_local global i64 0, align 8
@PA2_0_FPU_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @parisc_linux_get_fpu_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parisc_linux_get_fpu_type(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %4 = load i64, i64* @pcxs, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* @TIMEX_EXTEN_FLAG, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = load i64, i64* @FPU_TYPE_FLAG_POS, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  store i32 %7, i32* %10, align 4
  br label %35

11:                                               ; preds = %1
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %13 = load i64, i64* @pcxt, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %17 = load i64, i64* @pcxt_, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %11
  %20 = load i32, i32* @ROLEX_EXTEN_FLAG, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = load i64, i64* @FPU_TYPE_FLAG_POS, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %20, i32* %23, align 4
  br label %34

24:                                               ; preds = %15
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %26 = load i64, i64* @pcxu, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* @PA2_0_FPU_FLAG, align 4
  %30 = load i32*, i32** %2, align 8
  %31 = load i64, i64* @FPU_TYPE_FLAG_POS, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %24
  br label %34

34:                                               ; preds = %33, %19
  br label %35

35:                                               ; preds = %34, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
