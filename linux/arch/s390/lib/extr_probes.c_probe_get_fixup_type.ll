; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/lib/extr_probes.c_probe_get_fixup_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/lib/extr_probes.c_probe_get_fixup_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIXUP_PSW_NORMAL = common dso_local global i32 0, align 4
@FIXUP_RETURN_REGISTER = common dso_local global i32 0, align 4
@FIXUP_BRANCH_NOT_TAKEN = common dso_local global i32 0, align 4
@FIXUP_NOT_REQUIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @probe_get_fixup_type(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @FIXUP_PSW_NORMAL, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = ashr i32 %7, 8
  switch i32 %8, label %85 [
    i32 5, label %9
    i32 13, label %9
    i32 6, label %21
    i32 7, label %21
    i32 69, label %23
    i32 77, label %23
    i32 71, label %25
    i32 70, label %25
    i32 134, label %25
    i32 135, label %25
    i32 130, label %27
    i32 178, label %29
    i32 167, label %38
    i32 192, label %49
    i32 235, label %60
    i32 227, label %68
    i32 236, label %77
  ]

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @FIXUP_RETURN_REGISTER, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i32, i32* @FIXUP_BRANCH_NOT_TAKEN, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %9
  br label %85

21:                                               ; preds = %1, %1
  %22 = load i32, i32* @FIXUP_BRANCH_NOT_TAKEN, align 4
  store i32 %22, i32* %3, align 4
  br label %85

23:                                               ; preds = %1, %1
  %24 = load i32, i32* @FIXUP_RETURN_REGISTER, align 4
  store i32 %24, i32* %3, align 4
  br label %85

25:                                               ; preds = %1, %1, %1, %1
  %26 = load i32, i32* @FIXUP_BRANCH_NOT_TAKEN, align 4
  store i32 %26, i32* %3, align 4
  br label %85

27:                                               ; preds = %1
  %28 = load i32, i32* @FIXUP_NOT_REQUIRED, align 4
  store i32 %28, i32* %3, align 4
  br label %85

29:                                               ; preds = %1
  %30 = load i32*, i32** %2, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, 178
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @FIXUP_NOT_REQUIRED, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %29
  br label %85

38:                                               ; preds = %1
  %39 = load i32*, i32** %2, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 15
  %43 = icmp eq i32 %42, 5
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @FIXUP_RETURN_REGISTER, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %38
  br label %85

49:                                               ; preds = %1
  %50 = load i32*, i32** %2, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 15
  %54 = icmp eq i32 %53, 5
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @FIXUP_RETURN_REGISTER, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %49
  br label %85

60:                                               ; preds = %1
  %61 = load i32*, i32** %2, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 255
  switch i32 %64, label %67 [
    i32 68, label %65
    i32 69, label %65
  ]

65:                                               ; preds = %60, %60
  %66 = load i32, i32* @FIXUP_BRANCH_NOT_TAKEN, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %60, %65
  br label %85

68:                                               ; preds = %1
  %69 = load i32*, i32** %2, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 255
  %73 = icmp eq i32 %72, 70
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @FIXUP_BRANCH_NOT_TAKEN, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %68
  br label %85

77:                                               ; preds = %1
  %78 = load i32*, i32** %2, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 255
  switch i32 %81, label %84 [
    i32 229, label %82
    i32 230, label %82
    i32 246, label %82
    i32 247, label %82
    i32 252, label %82
    i32 253, label %82
    i32 254, label %82
    i32 255, label %82
  ]

82:                                               ; preds = %77, %77, %77, %77, %77, %77, %77, %77
  %83 = load i32, i32* @FIXUP_BRANCH_NOT_TAKEN, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %77, %82
  br label %85

85:                                               ; preds = %1, %84, %76, %67, %59, %48, %37, %27, %25, %23, %21, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
