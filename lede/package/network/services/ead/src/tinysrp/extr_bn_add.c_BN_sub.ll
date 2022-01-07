; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_bn_add.c_BN_sub.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_bn_add.c_BN_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_sub(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = call i32 @bn_check_top(%struct.TYPE_15__* %12)
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %15 = call i32 @bn_check_top(%struct.TYPE_15__* %14)
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %11, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %6, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %7, align 8
  br label %30

29:                                               ; preds = %20
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %30

30:                                               ; preds = %29, %25
  br label %38

31:                                               ; preds = %3
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %36, %31
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %45 = call i32 @BN_uadd(%struct.TYPE_15__* %42, %struct.TYPE_15__* %43, %struct.TYPE_15__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %101

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  store i32 1, i32* %4, align 4
  br label %101

52:                                               ; preds = %38
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  br label %68

64:                                               ; preds = %52
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i32 [ %63, %60 ], [ %67, %64 ]
  store i32 %69, i32* %8, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32* @bn_wexpand(%struct.TYPE_15__* %70, i32 %71)
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %101

75:                                               ; preds = %68
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %78 = call i64 @BN_ucmp(%struct.TYPE_15__* %76, %struct.TYPE_15__* %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = call i32 @BN_usub(%struct.TYPE_15__* %81, %struct.TYPE_15__* %82, %struct.TYPE_15__* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %101

87:                                               ; preds = %80
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  br label %100

90:                                               ; preds = %75
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %94 = call i32 @BN_usub(%struct.TYPE_15__* %91, %struct.TYPE_15__* %92, %struct.TYPE_15__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %101

97:                                               ; preds = %90
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %87
  store i32 1, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %96, %86, %74, %48, %47
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @bn_check_top(%struct.TYPE_15__*) #1

declare dso_local i32 @BN_uadd(%struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32* @bn_wexpand(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @BN_ucmp(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @BN_usub(%struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
