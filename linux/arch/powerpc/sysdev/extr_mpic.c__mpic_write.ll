; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic.c__mpic_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic.c__mpic_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpic_reg_bank = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.mpic_reg_bank*, i32, i32)* @_mpic_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mpic_write(i32 %0, %struct.mpic_reg_bank* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpic_reg_bank*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mpic_reg_bank* %1, %struct.mpic_reg_bank** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %20 [
    i32 129, label %10
    i32 128, label %19
  ]

10:                                               ; preds = %4
  %11 = load %struct.mpic_reg_bank*, %struct.mpic_reg_bank** %6, align 8
  %12 = getelementptr inbounds %struct.mpic_reg_bank, %struct.mpic_reg_bank* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = lshr i32 %14, 2
  %16 = add i32 %13, %15
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @out_be32(i32 %16, i32 %17)
  br label %29

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %4, %19
  %21 = load %struct.mpic_reg_bank*, %struct.mpic_reg_bank** %6, align 8
  %22 = getelementptr inbounds %struct.mpic_reg_bank, %struct.mpic_reg_bank* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = lshr i32 %24, 2
  %26 = add i32 %23, %25
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @out_le32(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %20, %10
  ret void
}

declare dso_local i32 @out_be32(i32, i32) #1

declare dso_local i32 @out_le32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
