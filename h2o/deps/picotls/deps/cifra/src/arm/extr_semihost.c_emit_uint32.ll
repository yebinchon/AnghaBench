; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/extr_semihost.c_emit_uint32.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/extr_semihost.c_emit_uint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hex_chars = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_uint32(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [11 x i8], align 1
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  store i8 48, i8* %4, align 1
  %5 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 1
  store i8 120, i8* %5, align 1
  %6 = load i8*, i8** @hex_chars, align 8
  %7 = load i32, i32* %2, align 4
  %8 = ashr i32 %7, 28
  %9 = and i32 %8, 15
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %6, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 2
  store i8 %12, i8* %13, align 1
  %14 = load i8*, i8** @hex_chars, align 8
  %15 = load i32, i32* %2, align 4
  %16 = ashr i32 %15, 24
  %17 = and i32 %16, 15
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 3
  store i8 %20, i8* %21, align 1
  %22 = load i8*, i8** @hex_chars, align 8
  %23 = load i32, i32* %2, align 4
  %24 = ashr i32 %23, 20
  %25 = and i32 %24, 15
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 4
  store i8 %28, i8* %29, align 1
  %30 = load i8*, i8** @hex_chars, align 8
  %31 = load i32, i32* %2, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 15
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 5
  store i8 %36, i8* %37, align 1
  %38 = load i8*, i8** @hex_chars, align 8
  %39 = load i32, i32* %2, align 4
  %40 = ashr i32 %39, 12
  %41 = and i32 %40, 15
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 6
  store i8 %44, i8* %45, align 1
  %46 = load i8*, i8** @hex_chars, align 8
  %47 = load i32, i32* %2, align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 15
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 7
  store i8 %52, i8* %53, align 1
  %54 = load i8*, i8** @hex_chars, align 8
  %55 = load i32, i32* %2, align 4
  %56 = ashr i32 %55, 4
  %57 = and i32 %56, 15
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 8
  store i8 %60, i8* %61, align 1
  %62 = load i8*, i8** @hex_chars, align 8
  %63 = load i32, i32* %2, align 4
  %64 = and i32 %63, 15
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 9
  store i8 %67, i8* %68, align 1
  %69 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 10
  store i8 0, i8* %69, align 1
  %70 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %71 = call i32 @emit(i8* %70)
  ret void
}

declare dso_local i32 @emit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
