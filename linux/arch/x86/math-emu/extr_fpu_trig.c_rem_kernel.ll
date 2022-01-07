; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_fpu_trig.c_rem_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_fpu_trig.c_rem_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*, i64, i64, i32)* @rem_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rem_kernel(i64 %0, i64* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* %10, align 4
  %15 = zext i32 %14 to i64
  %16 = shl i64 %13, %15
  store i64 %16, i64* %12, align 8
  %17 = bitcast i64* %12 to i32*
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = bitcast i64* %12 to i32*
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = bitcast i64* %8 to i32*
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 8
  %24 = bitcast i64* %9 to i32*
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = call i32 asm sideeffect "mull $4; subl %eax,$0; sbbl %edx,$1", "=*m,=*m,={ax},2,*m,~{dx},~{dirflag},~{fpsr},~{flags}"(i32* %18, i32* %20, i32 %23, i32* %25) #1, !srcloc !2
  store i32 %26, i32* %11, align 4
  %27 = bitcast i64* %12 to i32*
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = bitcast i64* %8 to i32*
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = bitcast i64* %9 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = call i32 asm sideeffect "mull $3; subl %eax,$0", "=*m,={ax},1,*m,~{dx},~{dirflag},~{fpsr},~{flags}"(i32* %28, i32 %31, i32* %33) #1, !srcloc !3
  store i32 %34, i32* %11, align 4
  %35 = bitcast i64* %12 to i32*
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = bitcast i64* %8 to i32*
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 8
  %40 = bitcast i64* %9 to i32*
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = call i32 asm sideeffect "mull $3; subl %eax,$0", "=*m,={ax},1,*m,~{dx},~{dirflag},~{fpsr},~{flags}"(i32* %36, i32 %39, i32* %41) #1, !srcloc !4
  store i32 %42, i32* %11, align 4
  %43 = load i64, i64* %12, align 8
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 359}
!3 = !{i32 577}
!4 = !{i32 745}
