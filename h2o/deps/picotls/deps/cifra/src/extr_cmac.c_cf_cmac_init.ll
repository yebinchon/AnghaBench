; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_cmac.c_cf_cmac_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_cmac.c_cf_cmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 (i8*, %struct.TYPE_10__*, %struct.TYPE_10__*)* }

@CF_MAXBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cf_cmac_init(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @CF_MAXBLOCK, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca %struct.TYPE_10__, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = call i32 @mem_clean(%struct.TYPE_10__* %20, i32 24)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mem_clean(%struct.TYPE_10__* %13, i32 %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32 (i8*, %struct.TYPE_10__*, %struct.TYPE_10__*)*, i32 (i8*, %struct.TYPE_10__*, %struct.TYPE_10__*)** %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 %28(i8* %29, %struct.TYPE_10__* %13, %struct.TYPE_10__* %13)
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @cf_gf128_frombytes_be(%struct.TYPE_10__* %13, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @cf_gf128_double(i32 %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cf_gf128_tobytes_be(i32 %36, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @cf_gf128_double(i32 %41, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @cf_gf128_tobytes_be(i32 %44, i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %51, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %55)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @mem_clean(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @cf_gf128_frombytes_be(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @cf_gf128_double(i32, i32) #2

declare dso_local i32 @cf_gf128_tobytes_be(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
