; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberNextMinus.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberNextMinus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32*, i64 }
%struct.TYPE_20__ = type { i32 }

@DECINF = common dso_local global i32 0, align 4
@DECNEG = common dso_local global i32 0, align 4
@DEC_MIN_EMIN = common dso_local global i64 0, align 8
@DEC_ROUND_FLOOR = common dso_local global i32 0, align 4
@DEC_Invalid_operation = common dso_local global i32 0, align 4
@DEC_sNaN = common dso_local global i32 0, align 4
@DECUNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @decNumberNextMinus(%struct.TYPE_19__* %0, %struct.TYPE_19__* %1, %struct.TYPE_20__* %2) #0 {
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
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %26 = call i32 @decSetMaxValue(%struct.TYPE_19__* %24, %struct.TYPE_20__* %25)
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %4, align 8
  br label %56

28:                                               ; preds = %3
  %29 = call i32 @decNumberZero(%struct.TYPE_19__* %8)
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 1, i32* %32, align 4
  %33 = load i64, i64* @DEC_MIN_EMIN, align 8
  %34 = sub nsw i64 %33, 1
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  store i64 %34, i64* %35, align 8
  %36 = load i32, i32* @DEC_ROUND_FLOOR, align 4
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = load i32, i32* @DECNEG, align 4
  %41 = call i32 @decAddOp(%struct.TYPE_19__* %38, %struct.TYPE_19__* %39, %struct.TYPE_19__* %8, %struct.TYPE_20__* %9, i32 %40, i32* %10)
  %42 = load i32, i32* @DEC_Invalid_operation, align 4
  %43 = load i32, i32* @DEC_sNaN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %28
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %53 = call i32 @decStatus(%struct.TYPE_19__* %50, i32 %51, %struct.TYPE_20__* %52)
  br label %54

54:                                               ; preds = %49, %28
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %55, %struct.TYPE_19__** %4, align 8
  br label %56

56:                                               ; preds = %54, %23
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %57
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
