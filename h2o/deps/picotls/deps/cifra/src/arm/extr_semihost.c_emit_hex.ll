; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/extr_semihost.c_emit_hex.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/extr_semihost.c_emit_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hex_chars = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_hex(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [3 x i8], align 1
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  store i8 0, i8* %10, align 1
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %39, %2
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load i8*, i8** @hex_chars, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 4
  %22 = and i32 %21, 15
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %16, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  store i8 %25, i8* %26, align 1
  %27 = load i8*, i8** @hex_chars, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 15
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %27, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  store i8 %35, i8* %36, align 1
  %37 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %38 = call i32 @emit(i8* %37)
  br label %39

39:                                               ; preds = %15
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %11

42:                                               ; preds = %11
  ret void
}

declare dso_local i32 @emit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
