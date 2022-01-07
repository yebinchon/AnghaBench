; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_btext.c_draw_byte_16.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_btext.c_draw_byte_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@expand_bits_16 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @draw_byte_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_byte_16(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* @expand_bits_16, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %11, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %78, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 16
  br i1 %16, label %17, label %81

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %4, align 8
  %20 = load i8, i8* %18, align 1
  %21 = zext i8 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %8, align 4
  %24 = ashr i32 %23, 6
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %10, align 4
  %31 = xor i32 %29, %30
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %8, align 4
  %36 = ashr i32 %35, 4
  %37 = and i32 %36, 3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %10, align 4
  %44 = xor i32 %42, %43
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %8, align 4
  %49 = ashr i32 %48, 2
  %50 = and i32 %49, 3
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %10, align 4
  %57 = xor i32 %55, %56
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* %10, align 4
  %69 = xor i32 %67, %68
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  store i32 %69, i32* %71, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = bitcast i32* %72 to i8*
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = bitcast i8* %76 to i32*
  store i32* %77, i32** %5, align 8
  br label %78

78:                                               ; preds = %17
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %14

81:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
