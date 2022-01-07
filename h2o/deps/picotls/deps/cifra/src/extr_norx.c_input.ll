; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_norx.c_input.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_norx.c_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@RATE_BYTES = common dso_local global i32 0, align 4
@input_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i64)* @input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input(i32* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* @RATE_BYTES, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %18 = load i32*, i32** %5, align 8
  %19 = ptrtoint i32* %18 to i32
  store i32 %19, i32* %17, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %20, align 8
  %24 = mul nuw i64 4, %14
  %25 = trunc i64 %24 to i32
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* @input_block, align 4
  %29 = call i32 @cf_blockwise_accumulate(i32* %16, i64* %11, i32 %25, i32* %26, i64 %27, i32 %28, %struct.TYPE_4__* %12)
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds i32, i32* %16, i64 %30
  %32 = mul nuw i64 4, %14
  %33 = load i64, i64* %11, align 8
  %34 = sub i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(i32* %31, i32 0, i32 %35)
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i32, i32* %16, i64 %37
  store i32 1, i32* %38, align 4
  %39 = mul nuw i64 4, %14
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds i32, i32* %16, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %42, 128
  store i32 %43, i32* %41, align 4
  %44 = call i32 @input_block_final(%struct.TYPE_4__* %12, i32* %16)
  %45 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %45)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cf_blockwise_accumulate(i32*, i64*, i32, i32*, i64, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @input_block_final(%struct.TYPE_4__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
