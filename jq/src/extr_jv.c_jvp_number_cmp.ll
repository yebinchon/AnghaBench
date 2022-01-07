; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_number_cmp.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_number_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@JV_KIND_NUMBER = common dso_local global i32 0, align 4
@JVP_FLAGS_NUMBER_LITERAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jvp_number_cmp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @JV_KIND_NUMBER, align 4
  %11 = call i32 @JVP_HAS_KIND(i32 %9, i32 %10)
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @JV_KIND_NUMBER, align 4
  %15 = call i32 @JVP_HAS_KIND(i32 %13, i32 %14)
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @JVP_FLAGS_NUMBER_LITERAL, align 4
  %19 = call i64 @JVP_HAS_FLAGS(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @JVP_FLAGS_NUMBER_LITERAL, align 4
  %24 = call i64 @JVP_HAS_FLAGS(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @jvp_dec_number_ptr(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @jvp_dec_number_ptr(i32 %30)
  %32 = call i32 (...) @DEC_CONTEXT()
  %33 = call i32 @decNumberCompare(i32* %27, i32 %29, i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %35 = call i64 @decNumberIsZero(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %59

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %40 = call i64 @decNumberIsNegative(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %59

43:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %59

44:                                               ; preds = %21, %2
  %45 = load i32, i32* %4, align 4
  %46 = call double @jv_number_value(i32 %45)
  store double %46, double* %7, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call double @jv_number_value(i32 %47)
  store double %48, double* %8, align 8
  %49 = load double, double* %7, align 8
  %50 = load double, double* %8, align 8
  %51 = fcmp olt double %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %59

53:                                               ; preds = %44
  %54 = load double, double* %7, align 8
  %55 = load double, double* %8, align 8
  %56 = fcmp oeq double %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %59

58:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %57, %52, %43, %42, %37
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @JVP_HAS_KIND(i32, i32) #1

declare dso_local i64 @JVP_HAS_FLAGS(i32, i32) #1

declare dso_local i32 @decNumberCompare(i32*, i32, i32, i32) #1

declare dso_local i32 @jvp_dec_number_ptr(i32) #1

declare dso_local i32 @DEC_CONTEXT(...) #1

declare dso_local i64 @decNumberIsZero(i32*) #1

declare dso_local i64 @decNumberIsNegative(i32*) #1

declare dso_local double @jv_number_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
