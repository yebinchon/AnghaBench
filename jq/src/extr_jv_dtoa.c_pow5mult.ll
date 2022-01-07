; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_pow5mult.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_pow5mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtoa_context = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }

@pow5mult.p05 = internal constant [3 x i32] [i32 5, i32 25, i32 125], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.dtoa_context*, %struct.TYPE_10__*, i32)* @pow5mult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @pow5mult(%struct.dtoa_context* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.dtoa_context*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  store %struct.dtoa_context* %0, %struct.dtoa_context** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 3
  store i32 %13, i32* %11, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.dtoa_context*, %struct.dtoa_context** %5, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* @pow5mult.p05, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_10__* @multadd(%struct.dtoa_context* %16, %struct.TYPE_10__* %17, i32 %22, i32 0)
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %6, align 8
  br label %24

24:                                               ; preds = %15, %3
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 2
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %4, align 8
  br label %81

30:                                               ; preds = %24
  %31 = load %struct.dtoa_context*, %struct.dtoa_context** %5, align 8
  %32 = getelementptr inbounds %struct.dtoa_context, %struct.dtoa_context* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %9, align 8
  %34 = icmp ne %struct.TYPE_10__* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.dtoa_context*, %struct.dtoa_context** %5, align 8
  %37 = call %struct.TYPE_10__* @i2b(%struct.dtoa_context* %36, i32 625)
  %38 = load %struct.dtoa_context*, %struct.dtoa_context** %5, align 8
  %39 = getelementptr inbounds %struct.dtoa_context, %struct.dtoa_context* %38, i32 0, i32 0
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %39, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %9, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %41, align 8
  br label %42

42:                                               ; preds = %35, %30
  br label %43

43:                                               ; preds = %77, %42
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load %struct.dtoa_context*, %struct.dtoa_context** %5, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = call i8* @mult(%struct.dtoa_context* %48, %struct.TYPE_10__* %49, %struct.TYPE_10__* %50)
  %52 = bitcast i8* %51 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %8, align 8
  %53 = load %struct.dtoa_context*, %struct.dtoa_context** %5, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = call i32 @Bfree(%struct.dtoa_context* %53, %struct.TYPE_10__* %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %6, align 8
  br label %57

57:                                               ; preds = %47, %43
  %58 = load i32, i32* %7, align 4
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %79

62:                                               ; preds = %57
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %10, align 8
  %66 = icmp ne %struct.TYPE_10__* %65, null
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = load %struct.dtoa_context*, %struct.dtoa_context** %5, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = call i8* @mult(%struct.dtoa_context* %68, %struct.TYPE_10__* %69, %struct.TYPE_10__* %70)
  %72 = bitcast i8* %71 to %struct.TYPE_10__*
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %74, align 8
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %10, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %76, align 8
  br label %77

77:                                               ; preds = %67, %62
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %9, align 8
  br label %43

79:                                               ; preds = %61
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %4, align 8
  br label %81

81:                                               ; preds = %79, %28
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %82
}

declare dso_local %struct.TYPE_10__* @multadd(%struct.dtoa_context*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @i2b(%struct.dtoa_context*, i32) #1

declare dso_local i8* @mult(%struct.dtoa_context*, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @Bfree(%struct.dtoa_context*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
