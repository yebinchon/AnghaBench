; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_init_64.c_patch_one_ktsb_phys.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_init_64.c_patch_one_ktsb_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64)* @patch_one_ktsb_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @patch_one_ktsb_phys(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = lshr i64 %10, 32
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = lshr i64 %13, 0
  %15 = and i64 %14, 4294967295
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %20, %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ult i32* %17, %18
  br i1 %19, label %20, label %78

20:                                               ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = zext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, -4194304
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* %7, align 8
  %31 = lshr i64 %30, 10
  %32 = or i64 %29, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %9, align 8
  call void asm sideeffect "flush\09$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %36) #1, !srcloc !2
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, -4194304
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %8, align 8
  %43 = lshr i64 %42, 10
  %44 = or i64 %41, %43
  %45 = trunc i64 %44 to i32
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  call void asm sideeffect "flush\09$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %49) #1, !srcloc !3
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, -8192
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* %7, align 8
  %56 = and i64 %55, 1023
  %57 = or i64 %54, %56
  %58 = trunc i64 %57 to i32
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  call void asm sideeffect "flush\09$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %62) #1, !srcloc !4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, -8192
  %67 = zext i32 %66 to i64
  %68 = load i64, i64* %8, align 8
  %69 = and i64 %68, 1023
  %70 = or i64 %67, %69
  %71 = trunc i64 %70 to i32
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  store i32 %71, i32* %73, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  call void asm sideeffect "flush\09$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %75) #1, !srcloc !5
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %4, align 8
  br label %16

78:                                               ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 517}
!3 = !{i32 617}
!4 = !{i32 722}
!5 = !{i32 826}
