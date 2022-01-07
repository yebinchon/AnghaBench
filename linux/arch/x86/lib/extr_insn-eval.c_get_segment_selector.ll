; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_get_segment_selector.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_get_segment_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32, i32, i32 }
%struct.kernel_vm86_regs = type { i16, i16, i16, i16 }

@EINVAL = common dso_local global i16 0, align 2
@ds = common dso_local global i32 0, align 4
@es = common dso_local global i32 0, align 4
@fs = common dso_local global i32 0, align 4
@gs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.pt_regs*, i32)* @get_segment_selector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @get_segment_selector(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernel_vm86_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %8 = bitcast %struct.pt_regs* %7 to %struct.kernel_vm86_regs*
  store %struct.kernel_vm86_regs* %8, %struct.kernel_vm86_regs** %6, align 8
  %9 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %10 = call i64 @v8086_mode(%struct.pt_regs* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %43 [
    i32 134, label %14
    i32 128, label %20
    i32 133, label %26
    i32 132, label %30
    i32 131, label %34
    i32 130, label %38
    i32 129, label %42
  ]

14:                                               ; preds = %12
  %15 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 65535
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %3, align 2
  br label %89

20:                                               ; preds = %12
  %21 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 65535
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %3, align 2
  br label %89

26:                                               ; preds = %12
  %27 = load %struct.kernel_vm86_regs*, %struct.kernel_vm86_regs** %6, align 8
  %28 = getelementptr inbounds %struct.kernel_vm86_regs, %struct.kernel_vm86_regs* %27, i32 0, i32 0
  %29 = load i16, i16* %28, align 2
  store i16 %29, i16* %3, align 2
  br label %89

30:                                               ; preds = %12
  %31 = load %struct.kernel_vm86_regs*, %struct.kernel_vm86_regs** %6, align 8
  %32 = getelementptr inbounds %struct.kernel_vm86_regs, %struct.kernel_vm86_regs* %31, i32 0, i32 1
  %33 = load i16, i16* %32, align 2
  store i16 %33, i16* %3, align 2
  br label %89

34:                                               ; preds = %12
  %35 = load %struct.kernel_vm86_regs*, %struct.kernel_vm86_regs** %6, align 8
  %36 = getelementptr inbounds %struct.kernel_vm86_regs, %struct.kernel_vm86_regs* %35, i32 0, i32 2
  %37 = load i16, i16* %36, align 2
  store i16 %37, i16* %3, align 2
  br label %89

38:                                               ; preds = %12
  %39 = load %struct.kernel_vm86_regs*, %struct.kernel_vm86_regs** %6, align 8
  %40 = getelementptr inbounds %struct.kernel_vm86_regs, %struct.kernel_vm86_regs* %39, i32 0, i32 3
  %41 = load i16, i16* %40, align 2
  store i16 %41, i16* %3, align 2
  br label %89

42:                                               ; preds = %12
  br label %43

43:                                               ; preds = %12, %42
  %44 = load i16, i16* @EINVAL, align 2
  %45 = sext i16 %44 to i32
  %46 = sub nsw i32 0, %45
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %3, align 2
  br label %89

48:                                               ; preds = %2
  %49 = load i32, i32* %5, align 4
  switch i32 %49, label %84 [
    i32 134, label %50
    i32 128, label %56
    i32 133, label %62
    i32 132, label %68
    i32 131, label %74
    i32 130, label %80
    i32 129, label %83
  ]

50:                                               ; preds = %48
  %51 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 65535
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %3, align 2
  br label %89

56:                                               ; preds = %48
  %57 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %58 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 65535
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %3, align 2
  br label %89

62:                                               ; preds = %48
  %63 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 65535
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %3, align 2
  br label %89

68:                                               ; preds = %48
  %69 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %70 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 65535
  %73 = trunc i32 %72 to i16
  store i16 %73, i16* %3, align 2
  br label %89

74:                                               ; preds = %48
  %75 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %76 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 65535
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %3, align 2
  br label %89

80:                                               ; preds = %48
  %81 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %82 = call signext i16 @get_user_gs(%struct.pt_regs* %81)
  store i16 %82, i16* %3, align 2
  br label %89

83:                                               ; preds = %48
  br label %84

84:                                               ; preds = %48, %83
  %85 = load i16, i16* @EINVAL, align 2
  %86 = sext i16 %85 to i32
  %87 = sub nsw i32 0, %86
  %88 = trunc i32 %87 to i16
  store i16 %88, i16* %3, align 2
  br label %89

89:                                               ; preds = %84, %80, %74, %68, %62, %56, %50, %43, %38, %34, %30, %26, %20, %14
  %90 = load i16, i16* %3, align 2
  ret i16 %90
}

declare dso_local i64 @v8086_mode(%struct.pt_regs*) #1

declare dso_local signext i16 @get_user_gs(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
