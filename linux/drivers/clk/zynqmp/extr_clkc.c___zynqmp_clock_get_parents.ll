; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c___zynqmp_clock_get_parents.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c___zynqmp_clock_get_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_parent = type { i32, i8*, i8* }
%struct.parents_resp = type { i64* }

@NA_PARENT = common dso_local global i64 0, align 8
@END_OF_PARENTS = common dso_local global i32 0, align 4
@CLK_PARENTS_ID = common dso_local global i32 0, align 4
@DUMMY_PARENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"dummy_name\00", align 1
@CLK_PARENTS_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_parent*, %struct.parents_resp*, i32*)* @__zynqmp_clock_get_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__zynqmp_clock_get_parents(%struct.clock_parent* %0, %struct.parents_resp* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clock_parent*, align 8
  %6 = alloca %struct.parents_resp*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clock_parent*, align 8
  store %struct.clock_parent* %0, %struct.clock_parent** %5, align 8
  store %struct.parents_resp* %1, %struct.parents_resp** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %87, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.parents_resp*, %struct.parents_resp** %6, align 8
  %13 = getelementptr inbounds %struct.parents_resp, %struct.parents_resp* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = call i32 @ARRAY_SIZE(i64* %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %90

17:                                               ; preds = %10
  %18 = load %struct.parents_resp*, %struct.parents_resp** %6, align 8
  %19 = getelementptr inbounds %struct.parents_resp, %struct.parents_resp* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NA_PARENT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @END_OF_PARENTS, align 4
  store i32 %28, i32* %4, align 4
  br label %91

29:                                               ; preds = %17
  %30 = load %struct.clock_parent*, %struct.clock_parent** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %30, i64 %32
  store %struct.clock_parent* %33, %struct.clock_parent** %9, align 8
  %34 = load i32, i32* @CLK_PARENTS_ID, align 4
  %35 = load %struct.parents_resp*, %struct.parents_resp** %6, align 8
  %36 = getelementptr inbounds %struct.parents_resp, %struct.parents_resp* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i8* @FIELD_GET(i32 %34, i64 %41)
  %43 = load %struct.clock_parent*, %struct.clock_parent** %9, align 8
  %44 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.parents_resp*, %struct.parents_resp** %6, align 8
  %46 = getelementptr inbounds %struct.parents_resp, %struct.parents_resp* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DUMMY_PARENT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %29
  %55 = load %struct.clock_parent*, %struct.clock_parent** %9, align 8
  %56 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @strcpy(i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.clock_parent*, %struct.clock_parent** %9, align 8
  %60 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %59, i32 0, i32 2
  store i8* null, i8** %60, align 8
  br label %83

61:                                               ; preds = %29
  %62 = load i32, i32* @CLK_PARENTS_FLAGS, align 4
  %63 = load %struct.parents_resp*, %struct.parents_resp** %6, align 8
  %64 = getelementptr inbounds %struct.parents_resp, %struct.parents_resp* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i8* @FIELD_GET(i32 %62, i64 %69)
  %71 = load %struct.clock_parent*, %struct.clock_parent** %9, align 8
  %72 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load %struct.clock_parent*, %struct.clock_parent** %9, align 8
  %74 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.clock_parent*, %struct.clock_parent** %9, align 8
  %77 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @zynqmp_get_clock_name(i8* %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %61
  br label %87

82:                                               ; preds = %61
  br label %83

83:                                               ; preds = %82, %54
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %83, %81
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %10

90:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %27
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i8* @FIELD_GET(i32, i64) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @zynqmp_get_clock_name(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
