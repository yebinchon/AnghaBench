; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberLogB.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberLogB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64, i64 }
%struct.TYPE_26__ = type { i32 }

@DECNEG = common dso_local global i32 0, align 4
@DECINF = common dso_local global i32 0, align 4
@DEC_Division_by_zero = common dso_local global i32 0, align 4
@DECUNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_25__* @decNumberLogB(%struct.TYPE_25__* %0, %struct.TYPE_25__* %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %13 = call i64 @decNumberIsNaN(%struct.TYPE_25__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %19 = call i32 @decNaNs(%struct.TYPE_25__* %16, %struct.TYPE_25__* %17, i32* null, %struct.TYPE_26__* %18, i32* %7)
  br label %76

20:                                               ; preds = %3
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %22 = call i64 @decNumberIsInfinite(%struct.TYPE_25__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %27 = call i32 @decNumberCopyAbs(%struct.TYPE_25__* %25, %struct.TYPE_25__* %26)
  br label %75

28:                                               ; preds = %20
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %30 = call i64 @decNumberIsZero(%struct.TYPE_25__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %34 = call i32 @decNumberZero(%struct.TYPE_25__* %33)
  %35 = load i32, i32* @DECNEG, align 4
  %36 = load i32, i32* @DECINF, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @DEC_Division_by_zero, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %74

43:                                               ; preds = %28
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = sub nsw i64 %50, 1
  store i64 %51, i64* %8, align 8
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 10
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @decNumberFromInt32(%struct.TYPE_25__* %57, i64 %58)
  br label %73

60:                                               ; preds = %43
  %61 = call i32 @D2N(i32 10)
  %62 = zext i32 %61 to i64
  %63 = call i8* @llvm.stacksave()
  store i8* %63, i8** %9, align 8
  %64 = alloca %struct.TYPE_25__, i64 %62, align 16
  store i64 %62, i64* %10, align 8
  store %struct.TYPE_25__* %64, %struct.TYPE_25__** %11, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @decNumberFromInt32(%struct.TYPE_25__* %65, i64 %66)
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %71 = call i32 @decNumberPlus(%struct.TYPE_25__* %68, %struct.TYPE_25__* %69, %struct.TYPE_26__* %70)
  %72 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %72)
  br label %73

73:                                               ; preds = %60, %56
  br label %74

74:                                               ; preds = %73, %32
  br label %75

75:                                               ; preds = %74, %24
  br label %76

76:                                               ; preds = %75, %15
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %83 = call i32 @decStatus(%struct.TYPE_25__* %80, i32 %81, %struct.TYPE_26__* %82)
  br label %84

84:                                               ; preds = %79, %76
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  ret %struct.TYPE_25__* %85
}

declare dso_local i64 @decNumberIsNaN(%struct.TYPE_25__*) #1

declare dso_local i32 @decNaNs(%struct.TYPE_25__*, %struct.TYPE_25__*, i32*, %struct.TYPE_26__*, i32*) #1

declare dso_local i64 @decNumberIsInfinite(%struct.TYPE_25__*) #1

declare dso_local i32 @decNumberCopyAbs(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i64 @decNumberIsZero(%struct.TYPE_25__*) #1

declare dso_local i32 @decNumberZero(%struct.TYPE_25__*) #1

declare dso_local i32 @decNumberFromInt32(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @D2N(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @decNumberPlus(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_26__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @decStatus(%struct.TYPE_25__*, i32, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
