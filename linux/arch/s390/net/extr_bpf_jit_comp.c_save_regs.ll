; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/net/extr_bpf_jit_comp.c_save_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/net/extr_bpf_jit_comp.c_save_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_jit = type { i32 }

@STK_OFF_R6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_jit*, i32, i32)* @save_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_regs(%struct.bpf_jit* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_jit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bpf_jit* %0, %struct.bpf_jit** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @STK_OFF_R6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sub nsw i32 %9, 6
  %11 = mul nsw i32 %10, 8
  %12 = add nsw i32 %8, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, 20
  %19 = or i32 -486477824, %18
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @_EMIT6(i32 %21, i32 36)
  br label %32

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 20
  %26 = or i32 -352260096, %25
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 16
  %29 = or i32 %26, %28
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @_EMIT6_DISP(i32 %29, i32 36, i32 %30)
  br label %32

32:                                               ; preds = %23, %16
  ret void
}

declare dso_local i32 @_EMIT6(i32, i32) #1

declare dso_local i32 @_EMIT6_DISP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
