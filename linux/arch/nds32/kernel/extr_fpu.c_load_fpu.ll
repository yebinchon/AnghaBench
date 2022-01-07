; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_fpu.c_load_fpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_fpu.c_load_fpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpu_struct = type { i32 }

@FPCFG_mskFREG = common dso_local global i32 0, align 4
@FPCFG_offFREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_fpu(%struct.fpu_struct* %0) #0 {
  %2 = alloca %struct.fpu_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fpu_struct* %0, %struct.fpu_struct** %2, align 8
  %5 = call i32 (...) @enable_fpu()
  %6 = call i32 (...) @__nds32__fmfcfg()
  %7 = load i32, i32* @FPCFG_mskFREG, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @FPCFG_offFREG, align 4
  %10 = lshr i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %21 [
    i32 129, label %12
    i32 130, label %14
    i32 131, label %16
    i32 128, label %18
  ]

12:                                               ; preds = %1
  %13 = load %struct.fpu_struct*, %struct.fpu_struct** %2, align 8
  call void asm sideeffect "fldi $$fd31, [$0+0xf8]\0A\09fldi $$fd30, [$0+0xf0]\0A\09fldi $$fd29, [$0+0xe8]\0A\09fldi $$fd28, [$0+0xe0]\0A\09fldi $$fd27, [$0+0xd8]\0A\09fldi $$fd26, [$0+0xd0]\0A\09fldi $$fd25, [$0+0xc8]\0A\09fldi $$fd24, [$0+0xc0]\0A\09fldi $$fd23, [$0+0xb8]\0A\09fldi $$fd22, [$0+0xb0]\0A\09fldi $$fd21, [$0+0xa8]\0A\09fldi $$fd20, [$0+0xa0]\0A\09fldi $$fd19, [$0+0x98]\0A\09fldi $$fd18, [$0+0x90]\0A\09fldi $$fd17, [$0+0x88]\0A\09fldi $$fd16, [$0+0x80]\0A\09", "r,~{dirflag},~{fpsr},~{flags}"(%struct.fpu_struct* %13) #2, !srcloc !2
  br label %14

14:                                               ; preds = %1, %12
  %15 = load %struct.fpu_struct*, %struct.fpu_struct** %2, align 8
  call void asm sideeffect "fldi $$fd15, [$0+0x78]\0A\09fldi $$fd14, [$0+0x70]\0A\09fldi $$fd13, [$0+0x68]\0A\09fldi $$fd12, [$0+0x60]\0A\09fldi $$fd11, [$0+0x58]\0A\09fldi $$fd10, [$0+0x50]\0A\09fldi $$fd9,  [$0+0x48]\0A\09fldi $$fd8,  [$0+0x40]\0A\09", "r,~{dirflag},~{fpsr},~{flags}"(%struct.fpu_struct* %15) #2, !srcloc !3
  br label %16

16:                                               ; preds = %1, %14
  %17 = load %struct.fpu_struct*, %struct.fpu_struct** %2, align 8
  call void asm sideeffect "fldi $$fd7,  [$0+0x38]\0A\09fldi $$fd6,  [$0+0x30]\0A\09fldi $$fd5,  [$0+0x28]\0A\09fldi $$fd4,  [$0+0x20]\0A\09", "r,~{dirflag},~{fpsr},~{flags}"(%struct.fpu_struct* %17) #2, !srcloc !4
  br label %18

18:                                               ; preds = %1, %16
  %19 = load %struct.fpu_struct*, %struct.fpu_struct** %2, align 8
  %20 = call i32 asm sideeffect "fldi $$fd3,  [$1+0x18]\0A\09fldi $$fd2,  [$1+0x10]\0A\09fldi $$fd1,  [$1+0x8]\0A\09fldi $$fd0,  [$1+0x0]\0A\09lwi  $0, [$1+0x100]\0A\09fmtcsr\09$0\0A\09", "=&r,r,~{dirflag},~{fpsr},~{flags}"(%struct.fpu_struct* %19) #2, !srcloc !5
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = call i32 (...) @disable_fpu()
  ret void
}

declare dso_local i32 @enable_fpu(...) #1

declare dso_local i32 @__nds32__fmfcfg(...) #1

declare dso_local i32 @disable_fpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 521, i32 545, i32 582, i32 619, i32 656, i32 693, i32 730, i32 767, i32 804, i32 841, i32 878, i32 915, i32 952, i32 989, i32 1026, i32 1063, i32 1100}
!3 = !{i32 1169, i32 1193, i32 1230, i32 1267, i32 1304, i32 1341, i32 1378, i32 1415, i32 1452}
!4 = !{i32 1521, i32 1545, i32 1582, i32 1619, i32 1656}
!5 = !{i32 1725, i32 1749, i32 1786, i32 1822, i32 1858, i32 1893, i32 1918}
