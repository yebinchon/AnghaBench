; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_xive_get_max_prio.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_xive_get_max_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"not root node found !\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"ibm,plat-res-int-priorities\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Failed to read 'ibm,plat-res-int-priorities' property\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"invalid 'ibm,plat-res-int-priorities' property\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"no valid priority found in 'ibm,plat-res-int-priorities'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @xive_get_max_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xive_get_max_prio(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %13 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %93

18:                                               ; preds = %1
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i32* @of_get_property(%struct.device_node* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %93

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = urem i64 %27, 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %93

32:                                               ; preds = %25
  store i32 255, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %82, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %85

36:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %73, %36
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %41, 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %37
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 2, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @be32_to_cpu(i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 2, %53
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @be32_to_cpu(i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %44
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %65, %66
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69, %63, %44
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %37

76:                                               ; preds = %37
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %79, %76
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %33

85:                                               ; preds = %33
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 255
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = load i32*, i32** %3, align 8
  store i32 %91, i32* %92, align 4
  store i32 1, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %88, %30, %23, %16
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
