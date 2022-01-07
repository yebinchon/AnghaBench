; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_float80.c_f80_from_double.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_float80.c_f80_from_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8* }
%struct.double_bits = type { i64, i64, i32 }

@EXP64_SPECIAL = common dso_local global i64 0, align 8
@EXP_SPECIAL = common dso_local global i8* null, align 8
@EXP64_DENORMAL = common dso_local global i64 0, align 8
@CURSED_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i8* } @f80_from_double(double %0) #0 {
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.double_bits, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  store double %0, double* %3, align 8
  %6 = call i32 @memcpy(%struct.double_bits* %4, double* %3, i32 24)
  %7 = getelementptr inbounds %struct.double_bits, %struct.double_bits* %4, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @EXP64_SPECIAL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** @EXP_SPECIAL, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  br label %37

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.double_bits, %struct.double_bits* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EXP64_DENORMAL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.double_bits, %struct.double_bits* %4, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %26

24:                                               ; preds = %19
  %25 = call i8* @bias(i32 -1022)
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i8* [ null, %23 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  br label %36

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.double_bits, %struct.double_bits* %4, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = sub nsw i32 %32, 1023
  %34 = call i8* @bias(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  br label %36

36:                                               ; preds = %29, %26
  br label %37

37:                                               ; preds = %36, %11
  %38 = getelementptr inbounds %struct.double_bits, %struct.double_bits* %4, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 11
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.double_bits, %struct.double_bits* %4, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EXP64_DENORMAL, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load i32, i32* @CURSED_BIT, align 4
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47, %37
  %53 = getelementptr inbounds %struct.double_bits, %struct.double_bits* %4, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = bitcast %struct.TYPE_5__* %5 to { i64, i8* }*
  %57 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %56, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call { i64, i8* } @f80_normalize(i64 %58, i8* %60)
  %62 = bitcast %struct.TYPE_5__* %2 to { i64, i8* }*
  %63 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %62, i32 0, i32 0
  %64 = extractvalue { i64, i8* } %61, 0
  store i64 %64, i64* %63, align 8
  %65 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %62, i32 0, i32 1
  %66 = extractvalue { i64, i8* } %61, 1
  store i8* %66, i8** %65, align 8
  %67 = bitcast %struct.TYPE_5__* %2 to { i64, i8* }*
  %68 = load { i64, i8* }, { i64, i8* }* %67, align 8
  ret { i64, i8* } %68
}

declare dso_local i32 @memcpy(%struct.double_bits*, double*, i32) #1

declare dso_local i8* @bias(i32) #1

declare dso_local { i64, i8* } @f80_normalize(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
