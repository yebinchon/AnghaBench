; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_drbg.c_cf_hmac_drbg_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_drbg.c_cf_hmac_drbg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_9__ = type { i32 }

@CF_MAXHASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cf_hmac_drbg_init(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  store i64 %7, i64* %16, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = call i32 @mem_clean(%struct.TYPE_8__* %19, i32 16)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CF_MAXHASH, align 4
  %25 = icmp sle i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* @CF_MAXHASH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %17, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %18, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memset(i32* %31, i32 0, i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memset(i32* %38, i32 1, i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cf_hmac_init(i32* %44, %struct.TYPE_9__* %45, i32* %31, i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = load i64, i64* %16, align 8
  %57 = call i32 @hmac_drbg_update(%struct.TYPE_8__* %50, i8* %51, i64 %52, i8* %53, i64 %54, i8* %55, i64 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %60)
  ret void
}

declare dso_local i32 @mem_clean(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cf_hmac_init(i32*, %struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @hmac_drbg_update(%struct.TYPE_8__*, i8*, i64, i8*, i64, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
