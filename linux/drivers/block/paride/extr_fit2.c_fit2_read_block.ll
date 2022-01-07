; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_fit2.c_fit2_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_fit2.c_fit2_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @fit2_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fit2_read_block(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = call i32 @w2(i32 12)
  %13 = call i32 @w0(i32 16)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %75, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sdiv i32 %16, 4
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %78

19:                                               ; preds = %14
  %20 = call i32 @w2(i32 4)
  %21 = call i32 @w2(i32 5)
  %22 = call i32 @w0(i32 0)
  %23 = call i32 (...) @r1()
  store i32 %23, i32* %8, align 4
  %24 = call i32 @w0(i32 1)
  %25 = call i32 (...) @r1()
  store i32 %25, i32* %9, align 4
  %26 = call i32 @w0(i32 3)
  %27 = call i32 (...) @r1()
  store i32 %27, i32* %10, align 4
  %28 = call i32 @w0(i32 2)
  %29 = call i32 (...) @r1()
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call signext i8 @j44(i32 %30, i32 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 4, %34
  %36 = add nsw i32 %35, 0
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  store i8 %32, i8* %38, align 1
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call signext i8 @j44(i32 %39, i32 %40)
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 4, %43
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  store i8 %41, i8* %47, align 1
  %48 = call i32 @w2(i32 4)
  %49 = call i32 @w2(i32 5)
  %50 = call i32 (...) @r1()
  store i32 %50, i32* %8, align 4
  %51 = call i32 @w0(i32 3)
  %52 = call i32 (...) @r1()
  store i32 %52, i32* %9, align 4
  %53 = call i32 @w0(i32 1)
  %54 = call i32 (...) @r1()
  store i32 %54, i32* %10, align 4
  %55 = call i32 @w0(i32 0)
  %56 = call i32 (...) @r1()
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call signext i8 @j44(i32 %57, i32 %58)
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 4, %61
  %63 = add nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  store i8 %59, i8* %65, align 1
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call signext i8 @j44(i32 %66, i32 %67)
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 4, %70
  %72 = add nsw i32 %71, 3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  store i8 %68, i8* %74, align 1
  br label %75

75:                                               ; preds = %19
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %14

78:                                               ; preds = %14
  %79 = call i32 @w2(i32 4)
  ret void
}

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local signext i8 @j44(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
