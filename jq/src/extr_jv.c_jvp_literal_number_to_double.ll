; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_literal_number_to_double.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_literal_number_to_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@JVP_FLAGS_NUMBER_LITERAL = common dso_local global i32 0, align 4
@BIN64_DEC_PRECISION = common dso_local global i64 0, align 8
@DEC_NUMBER_STRING_GUARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32)* @jvp_literal_number_to_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @jvp_literal_number_to_double(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @JVP_FLAGS_NUMBER_LITERAL, align 4
  %10 = call i32 @JVP_HAS_FLAGS(i32 %8, i32 %9)
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = call i32* @jvp_dec_number_ptr(i32 %12)
  store i32* %13, i32** %3, align 8
  %14 = load i64, i64* @BIN64_DEC_PRECISION, align 8
  %15 = load i64, i64* @DEC_NUMBER_STRING_GUARD, align 8
  %16 = add nsw i64 %14, %15
  %17 = add nsw i64 %16, 1
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 (...) @DEC_CONTEXT_TO_DOUBLE()
  %23 = call i32 @decNumberReduce(i32* %20, i32* %21, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %25 = call i32 @decNumberToString(i32* %24, i8* %19)
  %26 = call i32 (...) @tsd_dtoa_context_get()
  %27 = call double @jvp_strtod(i32 %26, i8* %19, i8** %7)
  %28 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %28)
  ret double %27
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @JVP_HAS_FLAGS(i32, i32) #1

declare dso_local i32* @jvp_dec_number_ptr(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @decNumberReduce(i32*, i32*, i32) #1

declare dso_local i32 @DEC_CONTEXT_TO_DOUBLE(...) #1

declare dso_local i32 @decNumberToString(i32*, i8*) #1

declare dso_local double @jvp_strtod(i32, i8*, i8**) #1

declare dso_local i32 @tsd_dtoa_context_get(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
