; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberToIntegralExact.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberToIntegralExact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32, i64, i32 }

@SPECIALARG = common dso_local global i64 0, align 8
@DECUNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @decNumberToIntegralExact(%struct.TYPE_24__* %0, %struct.TYPE_24__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__, align 8
  %9 = alloca %struct.TYPE_25__, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i64, i64* @SPECIALARG, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %15 = call i64 @decNumberIsInfinite(%struct.TYPE_24__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %20 = call %struct.TYPE_24__* @decNumberCopy(%struct.TYPE_24__* %18, %struct.TYPE_24__* %19)
  br label %26

21:                                               ; preds = %13
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %25 = call i32 @decNaNs(%struct.TYPE_24__* %22, %struct.TYPE_24__* %23, i32* null, %struct.TYPE_25__* %24, i32* %10)
  br label %26

26:                                               ; preds = %21, %17
  br label %53

27:                                               ; preds = %3
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %35 = call %struct.TYPE_24__* @decNumberCopy(%struct.TYPE_24__* %33, %struct.TYPE_24__* %34)
  store %struct.TYPE_24__* %35, %struct.TYPE_24__** %4, align 8
  br label %63

36:                                               ; preds = %27
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %38 = bitcast %struct.TYPE_25__* %9 to i8*
  %39 = bitcast %struct.TYPE_25__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 24, i1 false)
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 2
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = call i32 @decNumberZero(%struct.TYPE_24__* %8)
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %48 = call i32 @decNumberQuantize(%struct.TYPE_24__* %46, %struct.TYPE_24__* %47, %struct.TYPE_24__* %8, %struct.TYPE_25__* %9)
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %36, %26
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %60 = call i32 @decStatus(%struct.TYPE_24__* %57, i32 %58, %struct.TYPE_25__* %59)
  br label %61

61:                                               ; preds = %56, %53
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %62, %struct.TYPE_24__** %4, align 8
  br label %63

63:                                               ; preds = %61, %32
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  ret %struct.TYPE_24__* %64
}

declare dso_local i64 @decNumberIsInfinite(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @decNumberCopy(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @decNaNs(%struct.TYPE_24__*, %struct.TYPE_24__*, i32*, %struct.TYPE_25__*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @decNumberZero(%struct.TYPE_24__*) #1

declare dso_local i32 @decNumberQuantize(%struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @decStatus(%struct.TYPE_24__*, i32, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
