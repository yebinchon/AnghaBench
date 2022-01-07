; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/net/extr_bpf_jit_comp.c_restore_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/net/extr_bpf_jit_comp.c_restore_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_jit = type { i32 }

@STK_OFF_R6 = common dso_local global i32 0, align 4
@SEEN_STACK = common dso_local global i32 0, align 4
@STK_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_jit*, i32, i32, i32)* @restore_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_regs(%struct.bpf_jit* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bpf_jit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bpf_jit* %0, %struct.bpf_jit** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @STK_OFF_R6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sub nsw i32 %11, 6
  %13 = mul nsw i32 %12, 8
  %14 = add nsw i32 %10, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.bpf_jit*, %struct.bpf_jit** %5, align 8
  %16 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SEEN_STACK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32, i32* @STK_OFF, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %21, %4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %32, 20
  %34 = or i32 -486477824, %33
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @_EMIT6(i32 %36, i32 4)
  br label %47

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 20
  %41 = or i32 -352260096, %40
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 %42, 16
  %44 = or i32 %41, %43
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @_EMIT6_DISP(i32 %44, i32 4, i32 %45)
  br label %47

47:                                               ; preds = %38, %31
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
