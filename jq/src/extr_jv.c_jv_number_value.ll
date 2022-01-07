; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jv_number_value.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jv_number_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { double }

@JV_KIND_NUMBER = common dso_local global i32 0, align 4
@JVP_FLAGS_NUMBER_LITERAL = common dso_local global i32 0, align 4
@JV_NUMBER_SIZE_CONVERTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @jv_number_value(i64 %0, double %1) #0 {
  %3 = alloca %struct.TYPE_12__, align 8
  %4 = bitcast %struct.TYPE_12__* %3 to { i64, double }*
  %5 = getelementptr inbounds { i64, double }, { i64, double }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, double }, { i64, double }* %4, i32 0, i32 1
  store double %1, double* %6, align 8
  %7 = load i32, i32* @JV_KIND_NUMBER, align 4
  %8 = bitcast %struct.TYPE_12__* %3 to { i64, double }*
  %9 = getelementptr inbounds { i64, double }, { i64, double }* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds { i64, double }, { i64, double }* %8, i32 0, i32 1
  %12 = load double, double* %11, align 8
  %13 = call i32 @JVP_HAS_KIND(i64 %10, double %12, i32 %7)
  %14 = call i32 @assert(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  ret double %17
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @JVP_HAS_KIND(i64, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
