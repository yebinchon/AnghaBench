; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberToIntegralValue.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberToIntegralValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@DEC_Invalid_operation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @decNumberToIntegralValue(i32* %0, i32* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %9 = bitcast %struct.TYPE_4__* %7 to i8*
  %10 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @decNumberToIntegralExact(i32* %12, i32* %13, %struct.TYPE_4__* %7)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DEC_Invalid_operation, align 4
  %18 = and i32 %16, %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load i32*, i32** %4, align 8
  ret i32* %23
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @decNumberToIntegralExact(i32*, i32*, %struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
