; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_serpent_sse2_glue.c_serpent_decrypt_cbc_xway.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_serpent_sse2_glue.c_serpent_decrypt_cbc_xway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SERPENT_PARALLEL_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*)* @serpent_decrypt_cbc_xway to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serpent_decrypt_cbc_xway(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @SERPENT_PARALLEL_BLOCKS, align 4
  %11 = sub nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %29, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @SERPENT_PARALLEL_BLOCKS, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %14, i64 %27
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %9, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %15

32:                                               ; preds = %15
  %33 = load i8*, i8** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @serpent_dec_blk_xway(i8* %33, i32* %34, i32* %35)
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %57, %32
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @SERPENT_PARALLEL_BLOCKS, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %14, i64 %54
  %56 = call i32 @u128_xor(i32* %47, i32* %52, i32* %55)
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %9, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %37

60:                                               ; preds = %37
  %61 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %61)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @serpent_dec_blk_xway(i8*, i32*, i32*) #2

declare dso_local i32 @u128_xor(i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
