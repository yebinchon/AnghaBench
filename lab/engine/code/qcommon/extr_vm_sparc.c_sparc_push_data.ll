; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_sparc_push_data.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_sparc_push_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_info = type { i32, %struct.data_hunk* }
%struct.data_hunk = type { i32, i32*, %struct.data_hunk* }

@data = common dso_local global i32* null, align 8
@HUNK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.func_info*, i32)* @sparc_push_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_push_data(%struct.func_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.func_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.data_hunk*, align 8
  %7 = alloca %struct.data_hunk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.data_hunk*, align 8
  store %struct.func_info* %0, %struct.func_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.func_info*, %struct.func_info** %4, align 8
  %12 = getelementptr inbounds %struct.func_info, %struct.func_info* %11, i32 0, i32 1
  %13 = load %struct.data_hunk*, %struct.data_hunk** %12, align 8
  store %struct.data_hunk* %13, %struct.data_hunk** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.data_hunk* null, %struct.data_hunk** %6, align 8
  br label %14

14:                                               ; preds = %48, %2
  %15 = load %struct.data_hunk*, %struct.data_hunk** %7, align 8
  %16 = icmp ne %struct.data_hunk* %15, null
  br i1 %16, label %17, label %58

17:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.data_hunk*, %struct.data_hunk** %7, align 8
  %21 = getelementptr inbounds %struct.data_hunk, %struct.data_hunk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %18
  %25 = load %struct.data_hunk*, %struct.data_hunk** %7, align 8
  %26 = getelementptr inbounds %struct.data_hunk, %struct.data_hunk* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** @data, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @VM_Data_Offset(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %108

44:                                               ; preds = %24
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %18

48:                                               ; preds = %18
  %49 = load %struct.data_hunk*, %struct.data_hunk** %7, align 8
  %50 = getelementptr inbounds %struct.data_hunk, %struct.data_hunk* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load %struct.data_hunk*, %struct.data_hunk** %7, align 8
  store %struct.data_hunk* %54, %struct.data_hunk** %6, align 8
  %55 = load %struct.data_hunk*, %struct.data_hunk** %7, align 8
  %56 = getelementptr inbounds %struct.data_hunk, %struct.data_hunk* %55, i32 0, i32 2
  %57 = load %struct.data_hunk*, %struct.data_hunk** %56, align 8
  store %struct.data_hunk* %57, %struct.data_hunk** %7, align 8
  br label %14

58:                                               ; preds = %14
  %59 = load %struct.data_hunk*, %struct.data_hunk** %6, align 8
  store %struct.data_hunk* %59, %struct.data_hunk** %7, align 8
  %60 = load %struct.data_hunk*, %struct.data_hunk** %7, align 8
  %61 = icmp ne %struct.data_hunk* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load %struct.data_hunk*, %struct.data_hunk** %7, align 8
  %64 = getelementptr inbounds %struct.data_hunk, %struct.data_hunk* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @HUNK_SIZE, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %62, %58
  %70 = call %struct.data_hunk* @Z_Malloc(i32 24)
  store %struct.data_hunk* %70, %struct.data_hunk** %10, align 8
  %71 = load %struct.data_hunk*, %struct.data_hunk** %7, align 8
  %72 = icmp ne %struct.data_hunk* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load %struct.data_hunk*, %struct.data_hunk** %10, align 8
  %75 = load %struct.func_info*, %struct.func_info** %4, align 8
  %76 = getelementptr inbounds %struct.func_info, %struct.func_info* %75, i32 0, i32 1
  store %struct.data_hunk* %74, %struct.data_hunk** %76, align 8
  br label %81

77:                                               ; preds = %69
  %78 = load %struct.data_hunk*, %struct.data_hunk** %10, align 8
  %79 = load %struct.data_hunk*, %struct.data_hunk** %7, align 8
  %80 = getelementptr inbounds %struct.data_hunk, %struct.data_hunk* %79, i32 0, i32 2
  store %struct.data_hunk* %78, %struct.data_hunk** %80, align 8
  br label %81

81:                                               ; preds = %77, %73
  %82 = load %struct.data_hunk*, %struct.data_hunk** %10, align 8
  store %struct.data_hunk* %82, %struct.data_hunk** %7, align 8
  %83 = load %struct.data_hunk*, %struct.data_hunk** %7, align 8
  %84 = getelementptr inbounds %struct.data_hunk, %struct.data_hunk* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load %struct.data_hunk*, %struct.data_hunk** %7, align 8
  %86 = getelementptr inbounds %struct.data_hunk, %struct.data_hunk* %85, i32 0, i32 2
  store %struct.data_hunk* null, %struct.data_hunk** %86, align 8
  br label %87

87:                                               ; preds = %81, %62
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.data_hunk*, %struct.data_hunk** %7, align 8
  %90 = getelementptr inbounds %struct.data_hunk, %struct.data_hunk* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.data_hunk*, %struct.data_hunk** %7, align 8
  %93 = getelementptr inbounds %struct.data_hunk, %struct.data_hunk* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %91, i64 %96
  store i32 %88, i32* %97, align 4
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  %100 = load %struct.func_info*, %struct.func_info** %4, align 8
  %101 = getelementptr inbounds %struct.func_info, %struct.func_info* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i32*, i32** @data, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @VM_Data_Offset(i32 %106)
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %87, %34
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @VM_Data_Offset(i32) #1

declare dso_local %struct.data_hunk* @Z_Malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
