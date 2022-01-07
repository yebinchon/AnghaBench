; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/math-emu/extr_math.c_id_fxfd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/math-emu/extr_math.c_id_fxfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_fpu_soft_struct = type { i32 }

@FPSCR_SZ = common dso_local global i32 0, align 4
@FPSCR_PR = common dso_local global i32 0, align 4
@FPSCR_FR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_fpu_soft_struct*, i32)* @id_fxfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @id_fxfd(%struct.sh_fpu_soft_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_fpu_soft_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  store %struct.sh_fpu_soft_struct* %0, %struct.sh_fpu_soft_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %7 = load i32, i32* @FPSCR_SZ, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  %9 = load i32, i32* @FPSCR_PR, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @FPSCR_FR, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 3
  switch i32 %14, label %28 [
    i32 3, label %15
    i32 1, label %23
  ]

15:                                               ; preds = %2
  %16 = load %struct.sh_fpu_soft_struct*, %struct.sh_fpu_soft_struct** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @fxchg(%struct.sh_fpu_soft_struct* %16, i32 %21)
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.sh_fpu_soft_struct*, %struct.sh_fpu_soft_struct** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 1
  %27 = call i32 @ftrv(%struct.sh_fpu_soft_struct* %24, i32 %26)
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.sh_fpu_soft_struct*, %struct.sh_fpu_soft_struct** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @fsca(%struct.sh_fpu_soft_struct* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %23, %15
  ret i32 0
}

declare dso_local i32 @fxchg(%struct.sh_fpu_soft_struct*, i32) #1

declare dso_local i32 @ftrv(%struct.sh_fpu_soft_struct*, i32) #1

declare dso_local i32 @fsca(%struct.sh_fpu_soft_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
