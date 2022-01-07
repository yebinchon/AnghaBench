; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_t_conf.c_BN_from_montgomery.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_t_conf.c_BN_from_montgomery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32*, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_26__, %struct.TYPE_26__ }

@BN_BITS2 = common dso_local global i32 0, align 4
@BN_MASK2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_from_montgomery(%struct.TYPE_26__* %0, %struct.TYPE_26__* %1, %struct.TYPE_25__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @BN_CTX_start(i32* %12)
  %14 = load i32*, i32** %8, align 8
  %15 = call %struct.TYPE_26__* @BN_CTX_get(i32* %14)
  store %struct.TYPE_26__* %15, %struct.TYPE_26__** %10, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call %struct.TYPE_26__* @BN_CTX_get(i32* %16)
  store %struct.TYPE_26__* %17, %struct.TYPE_26__** %11, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %19 = icmp eq %struct.TYPE_26__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %22 = icmp eq %struct.TYPE_26__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %4
  br label %84

24:                                               ; preds = %20
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %27 = call i32 @BN_copy(%struct.TYPE_26__* %25, %struct.TYPE_26__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %84

30:                                               ; preds = %24
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @BN_mask_bits(%struct.TYPE_26__* %31, i32 %34)
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 3
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @BN_mul(%struct.TYPE_26__* %36, %struct.TYPE_26__* %37, %struct.TYPE_26__* %39, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %30
  br label %84

44:                                               ; preds = %30
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @BN_mask_bits(%struct.TYPE_26__* %45, i32 %48)
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 2
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @BN_mul(%struct.TYPE_26__* %50, %struct.TYPE_26__* %51, %struct.TYPE_26__* %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %44
  br label %84

58:                                               ; preds = %44
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %62 = call i32 @BN_add(%struct.TYPE_26__* %59, %struct.TYPE_26__* %60, %struct.TYPE_26__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %84

65:                                               ; preds = %58
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @BN_rshift(%struct.TYPE_26__* %66, %struct.TYPE_26__* %67, i32 %70)
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 2
  %75 = call i64 @BN_ucmp(%struct.TYPE_26__* %72, %struct.TYPE_26__* %74)
  %76 = icmp sge i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %65
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 2
  %82 = call i32 @BN_usub(%struct.TYPE_26__* %78, %struct.TYPE_26__* %79, %struct.TYPE_26__* %81)
  br label %83

83:                                               ; preds = %77, %65
  store i32 1, i32* %9, align 4
  br label %84

84:                                               ; preds = %83, %64, %57, %43, %29, %23
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @BN_CTX_end(i32* %85)
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local %struct.TYPE_26__* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_copy(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @BN_mask_bits(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @BN_mul(%struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @BN_add(%struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @BN_rshift(%struct.TYPE_26__*, %struct.TYPE_26__*, i32) #1

declare dso_local i64 @BN_ucmp(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @BN_usub(%struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
