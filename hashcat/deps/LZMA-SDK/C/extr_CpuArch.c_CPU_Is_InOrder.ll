; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_CpuArch.c_CPU_Is_InOrder.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_CpuArch.c_CPU_Is_InOrder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@True = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CPU_Is_InOrder() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @x86cpuid_CheckAndRead(%struct.TYPE_4__* %2)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @True, align 4
  store i32 %9, i32* %1, align 4
  br label %82

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @x86cpuid_GetFamily(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @x86cpuid_GetModel(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = call i32 @x86cpuid_GetFirm(%struct.TYPE_4__* %2)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  switch i32 %18, label %80 [
    i32 129, label %19
    i32 130, label %47
    i32 128, label %66
  ]

19:                                               ; preds = %10
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %44, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 6
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 28
  br i1 %27, label %40, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 38
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 39
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 53
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 54
  br label %40

40:                                               ; preds = %37, %34, %31, %28, %25
  %41 = phi i1 [ true, %34 ], [ true, %31 ], [ true, %28 ], [ true, %25 ], [ %39, %37 ]
  br label %42

42:                                               ; preds = %40, %22
  %43 = phi i1 [ false, %22 ], [ %41, %40 ]
  br label %44

44:                                               ; preds = %42, %19
  %45 = phi i1 [ true, %19 ], [ %43, %42 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %1, align 4
  br label %82

47:                                               ; preds = %10
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 5
  br i1 %49, label %63, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 5
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 6
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 10
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i1 [ true, %53 ], [ %58, %56 ]
  br label %61

61:                                               ; preds = %59, %50
  %62 = phi i1 [ false, %50 ], [ %60, %59 ]
  br label %63

63:                                               ; preds = %61, %47
  %64 = phi i1 [ true, %47 ], [ %62, %61 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %1, align 4
  br label %82

66:                                               ; preds = %10
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 6
  br i1 %68, label %77, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 6
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 15
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i1 [ false, %69 ], [ %74, %72 ]
  br label %77

77:                                               ; preds = %75, %66
  %78 = phi i1 [ true, %66 ], [ %76, %75 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %1, align 4
  br label %82

80:                                               ; preds = %10
  %81 = load i32, i32* @True, align 4
  store i32 %81, i32* %1, align 4
  br label %82

82:                                               ; preds = %80, %77, %63, %44, %8
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

declare dso_local i32 @x86cpuid_CheckAndRead(%struct.TYPE_4__*) #1

declare dso_local i32 @x86cpuid_GetFamily(i32) #1

declare dso_local i32 @x86cpuid_GetModel(i32) #1

declare dso_local i32 @x86cpuid_GetFirm(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
