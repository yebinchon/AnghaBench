; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Enc.c_Lzma2Enc_MtCallback_Code.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Enc.c_Lzma2Enc_MtCallback_Code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64*, i32*, %struct.TYPE_6__, i32**, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i64, i32* }

@SZ_ERROR_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*, i64, i32)* @Lzma2Enc_MtCallback_Code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Lzma2Enc_MtCallback_Code(i8* %0, i32 %1, i32 %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__, align 8
  %18 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %14, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %15, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %18, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 0, i64* %36, align 8
  %37 = load i32*, i32** %18, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %60, label %39

39:                                               ; preds = %6
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @ISzAlloc_Alloc(i32 %42, i64 %45)
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %18, align 8
  %48 = load i32*, i32** %18, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %51, i32* %7, align 4
  br label %89

52:                                               ; preds = %39
  %53 = load i32*, i32** %18, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  store i32* %53, i32** %59, align 8
  br label %60

60:                                               ; preds = %52, %6
  %61 = call i32 @MtProgressThunk_CreateVTable(%struct.TYPE_7__* %17)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  store i32* %64, i32** %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32*, i32** %18, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i32, i32* %13, align 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %80 = call i32 @Lzma2Enc_EncodeMt1(%struct.TYPE_8__* %68, i32* %74, i32* null, i32* %75, i64* %15, i32* null, i32* %76, i64 %77, i32 %78, i32* %79)
  store i32 %80, i32* %16, align 4
  %81 = load i64, i64* %15, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 %81, i64* %87, align 8
  %88 = load i32, i32* %16, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %60, %50
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i64 @ISzAlloc_Alloc(i32, i64) #1

declare dso_local i32 @MtProgressThunk_CreateVTable(%struct.TYPE_7__*) #1

declare dso_local i32 @Lzma2Enc_EncodeMt1(%struct.TYPE_8__*, i32*, i32*, i32*, i64*, i32*, i32*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
