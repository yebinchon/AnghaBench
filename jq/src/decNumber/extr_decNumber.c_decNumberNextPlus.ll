; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberNextPlus.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberNextPlus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32*, i64 }
%struct.TYPE_20__ = type { i32 }

@DECINF = common dso_local global i32 0, align 4
@DECNEG = common dso_local global i32 0, align 4
@DEC_MIN_EMIN = common dso_local global i64 0, align 8
@DEC_ROUND_CEILING = common dso_local global i32 0, align 4
@DEC_Invalid_operation = common dso_local global i32 0, align 4
@DEC_sNaN = common dso_local global i32 0, align 4
@DECUNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @decNumberNextPlus(%struct.TYPE_19__* %0, %struct.TYPE_19__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca %struct.TYPE_20__, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %12 = bitcast %struct.TYPE_20__* %9 to i8*
  %13 = bitcast %struct.TYPE_20__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DECINF, align 4
  %18 = load i32, i32* @DECNEG, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @DECINF, align 4
  %22 = load i32, i32* @DECNEG, align 4
  %23 = or i32 %21, %22
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %28 = call i32 @decSetMaxValue(%struct.TYPE_19__* %26, %struct.TYPE_20__* %27)
  %29 = load i32, i32* @DECNEG, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %4, align 8
  br label %60

33:                                               ; preds = %3
  %34 = call i32 @decNumberZero(%struct.TYPE_19__* %8)
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 1, i32* %37, align 4
  %38 = load i64, i64* @DEC_MIN_EMIN, align 8
  %39 = sub nsw i64 %38, 1
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  store i64 %39, i64* %40, align 8
  %41 = load i32, i32* @DEC_ROUND_CEILING, align 4
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %45 = call i32 @decAddOp(%struct.TYPE_19__* %43, %struct.TYPE_19__* %44, %struct.TYPE_19__* %8, %struct.TYPE_20__* %9, i32 0, i32* %10)
  %46 = load i32, i32* @DEC_Invalid_operation, align 4
  %47 = load i32, i32* @DEC_sNaN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %33
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %57 = call i32 @decStatus(%struct.TYPE_19__* %54, i32 %55, %struct.TYPE_20__* %56)
  br label %58

58:                                               ; preds = %53, %33
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %59, %struct.TYPE_19__** %4, align 8
  br label %60

60:                                               ; preds = %58, %25
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @decSetMaxValue(%struct.TYPE_19__*, %struct.TYPE_20__*) #2

declare dso_local i32 @decNumberZero(%struct.TYPE_19__*) #2

declare dso_local i32 @decAddOp(%struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32*) #2

declare dso_local i32 @decStatus(%struct.TYPE_19__*, i32, %struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
