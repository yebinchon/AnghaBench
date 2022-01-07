; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberFMA.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberFMA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i64 }
%struct.TYPE_32__ = type { i64, i32, i32, i32 }

@DECBUFFER = common dso_local global i32 0, align 4
@DEC_MAX_EMAX = common dso_local global i32 0, align 4
@DEC_MIN_EMIN = common dso_local global i32 0, align 4
@DEC_Insufficient_storage = common dso_local global i32 0, align 4
@DEC_Invalid_operation = common dso_local global i32 0, align 4
@DEC_sNaN = common dso_local global i32 0, align 4
@DECNAN = common dso_local global i32 0, align 4
@DECUNUSED = common dso_local global %struct.TYPE_31__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_31__* @decNumberFMA(%struct.TYPE_31__* %0, %struct.TYPE_31__* %1, %struct.TYPE_31__* %2, %struct.TYPE_31__* %3, %struct.TYPE_32__* %4) #0 {
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_32__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_31__*, align 8
  %17 = alloca %struct.TYPE_31__*, align 8
  %18 = alloca %struct.TYPE_31__, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %6, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %7, align 8
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %8, align 8
  store %struct.TYPE_31__* %3, %struct.TYPE_31__** %9, align 8
  store %struct.TYPE_32__* %4, %struct.TYPE_32__** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @DECBUFFER, align 4
  %20 = mul nsw i32 %19, 2
  %21 = add nsw i32 %20, 1
  %22 = call i32 @D2N(i32 %21)
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %14, align 8
  %25 = alloca %struct.TYPE_31__, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %16, align 8
  br label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %28 = call i32 @decNumberIsSpecial(%struct.TYPE_31__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %33 = call i64 @decCheckMath(%struct.TYPE_31__* %31, %struct.TYPE_32__* %32, i32* %11)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %37 = call i32 @decNumberIsSpecial(%struct.TYPE_31__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %41 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %42 = call i64 @decCheckMath(%struct.TYPE_31__* %40, %struct.TYPE_32__* %41, i32* %11)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39, %35
  %45 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %46 = call i32 @decNumberIsSpecial(%struct.TYPE_31__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %51 = call i64 @decCheckMath(%struct.TYPE_31__* %49, %struct.TYPE_32__* %50, i32* %11)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %39, %30
  br label %123

54:                                               ; preds = %48, %44
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %56 = bitcast %struct.TYPE_32__* %12 to i8*
  %57 = bitcast %struct.TYPE_32__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 24, i1 false)
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = load i32, i32* @DEC_MAX_EMAX, align 4
  %67 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 2
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @DEC_MIN_EMIN, align 4
  %69 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 1
  store i32 %68, i32* %69, align 8
  store %struct.TYPE_31__* %25, %struct.TYPE_31__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @D2U(i64 %71)
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = add i64 16, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = mul nuw i64 16, %23
  %81 = icmp ugt i64 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %54
  %83 = load i32, i32* %13, align 4
  %84 = call i64 @malloc(i32 %83)
  %85 = inttoptr i64 %84 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %85, %struct.TYPE_31__** %16, align 8
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %87 = icmp eq %struct.TYPE_31__* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* @DEC_Insufficient_storage, align 4
  %90 = load i32, i32* %11, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %11, align 4
  br label %123

92:                                               ; preds = %82
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  store %struct.TYPE_31__* %93, %struct.TYPE_31__** %17, align 8
  br label %94

94:                                               ; preds = %92, %54
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %98 = call i32 @decMultiplyOp(%struct.TYPE_31__* %95, %struct.TYPE_31__* %96, %struct.TYPE_31__* %97, %struct.TYPE_32__* %12, i32* %11)
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @DEC_Invalid_operation, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %94
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @DEC_sNaN, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %110 = call i32 @decNumberZero(%struct.TYPE_31__* %109)
  %111 = load i32, i32* @DECNAN, align 4
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %123

114:                                              ; preds = %103
  %115 = call i32 @decNumberZero(%struct.TYPE_31__* %18)
  store %struct.TYPE_31__* %18, %struct.TYPE_31__** %9, align 8
  br label %116

116:                                              ; preds = %114, %94
  %117 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %121 = call i32 @decAddOp(%struct.TYPE_31__* %117, %struct.TYPE_31__* %118, %struct.TYPE_31__* %119, %struct.TYPE_32__* %120, i32 0, i32* %11)
  br label %122

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %108, %88, %53
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %125 = icmp ne %struct.TYPE_31__* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %128 = call i32 @free(%struct.TYPE_31__* %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %136 = call i32 @decStatus(%struct.TYPE_31__* %133, i32 %134, %struct.TYPE_32__* %135)
  br label %137

137:                                              ; preds = %132, %129
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %139 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %139)
  ret %struct.TYPE_31__* %138
}

declare dso_local i32 @D2N(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @decNumberIsSpecial(%struct.TYPE_31__*) #1

declare dso_local i64 @decCheckMath(%struct.TYPE_31__*, %struct.TYPE_32__*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @D2U(i64) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @decMultiplyOp(%struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_32__*, i32*) #1

declare dso_local i32 @decNumberZero(%struct.TYPE_31__*) #1

declare dso_local i32 @decAddOp(%struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_32__*, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_31__*) #1

declare dso_local i32 @decStatus(%struct.TYPE_31__*, i32, %struct.TYPE_32__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
