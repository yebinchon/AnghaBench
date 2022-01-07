; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_string.c___div_u64_rem.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_string.c___div_u64_rem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [2 x i32] }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @__div_u64_rem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__div_u64_rem(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %union.anon, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = bitcast %union.anon* %7 to i32*
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %9, align 4
  %11 = bitcast %union.anon* %7 to [2 x i32]*
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = bitcast %union.anon* %7 to [2 x i32]*
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %20, %21
  %23 = bitcast %union.anon* %7 to [2 x i32]*
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %8, align 4
  %27 = srem i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %19, %3
  %29 = bitcast %union.anon* %7 to [2 x i32]*
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = bitcast %union.anon* %7 to [2 x i32]*
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call { i32, i32 } asm "divl $2", "={ax},={dx},rm,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %32, i32 %35, i32 %36) #1, !srcloc !2
  %38 = extractvalue { i32, i32 } %37, 0
  %39 = extractvalue { i32, i32 } %37, 1
  store i32 %38, i32* %30, align 4
  store i32 %39, i32* %31, align 4
  %40 = bitcast %union.anon* %7 to i32*
  %41 = load i32, i32* %40, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 463}
