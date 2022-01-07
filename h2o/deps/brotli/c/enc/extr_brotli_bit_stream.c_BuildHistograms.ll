; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_brotli_bit_stream.c_BuildHistograms.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_brotli_bit_stream.c_BuildHistograms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, %struct.TYPE_4__*, i64, i32*, i32*, i32*)* @BuildHistograms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BuildHistograms(i32* %0, i64 %1, i64 %2, %struct.TYPE_4__* %3, i64 %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_4__, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %21 = load i64, i64* %10, align 8
  store i64 %21, i64* %17, align 8
  store i64 0, i64* %18, align 8
  br label %22

22:                                               ; preds = %71, %8
  %23 = load i64, i64* %18, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = load i64, i64* %18, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %28
  %30 = bitcast %struct.TYPE_4__* %19 to i8*
  %31 = bitcast %struct.TYPE_4__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 24, i1 false)
  %32 = load i32*, i32** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @HistogramAddCommand(i32* %32, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %20, align 8
  br label %38

38:                                               ; preds = %52, %26
  %39 = load i64, i64* %20, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i32*, i32** %14, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i64, i64* %17, align 8
  %45 = load i64, i64* %11, align 8
  %46 = and i64 %44, %45
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @HistogramAddLiteral(i32* %42, i32 %48)
  %50 = load i64, i64* %17, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %17, align 8
  br label %52

52:                                               ; preds = %41
  %53 = load i64, i64* %20, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %20, align 8
  br label %38

55:                                               ; preds = %38
  %56 = call i64 @CommandCopyLen(%struct.TYPE_4__* %19)
  %57 = load i64, i64* %17, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %17, align 8
  %59 = call i64 @CommandCopyLen(%struct.TYPE_4__* %19)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %63, 128
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32*, i32** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @HistogramAddDistance(i32* %66, i32 %68)
  br label %70

70:                                               ; preds = %65, %61, %55
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %18, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %18, align 8
  br label %22

74:                                               ; preds = %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @HistogramAddCommand(i32*, i32) #2

declare dso_local i32 @HistogramAddLiteral(i32*, i32) #2

declare dso_local i64 @CommandCopyLen(%struct.TYPE_4__*) #2

declare dso_local i32 @HistogramAddDistance(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
