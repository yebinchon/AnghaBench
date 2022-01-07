; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_subpage_prot.c_subpage_prot_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_subpage_prot.c_subpage_prot_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.subpage_prot_table = type { i64, i32***, i32** }

@TASK_SIZE_USER64 = common dso_local global i32 0, align 4
@SBP_L2_COUNT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @subpage_prot_free(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.subpage_prot_table*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %8 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %9 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %8, i32 0, i32 0
  %10 = call %struct.subpage_prot_table* @mm_ctx_subpage_prot(i32* %9)
  store %struct.subpage_prot_table* %10, %struct.subpage_prot_table** %3, align 8
  %11 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %3, align 8
  %12 = icmp ne %struct.subpage_prot_table* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %111

14:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i64, i64* %4, align 8
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %3, align 8
  %20 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %19, i32 0, i32 2
  %21 = load i32**, i32*** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i32*, i32** %21, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %18
  %27 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %3, align 8
  %28 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %27, i32 0, i32 2
  %29 = load i32**, i32*** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = ptrtoint i32* %32 to i64
  %34 = call i32 @free_page(i64 %33)
  %35 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %3, align 8
  %36 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %35, i32 0, i32 2
  %37 = load i32**, i32*** %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds i32*, i32** %37, i64 %38
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %26, %18
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %4, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %4, align 8
  br label %15

44:                                               ; preds = %15
  store i64 0, i64* %6, align 8
  store i64 0, i64* %4, align 8
  br label %45

45:                                               ; preds = %103, %44
  %46 = load i64, i64* %4, align 8
  %47 = load i32, i32* @TASK_SIZE_USER64, align 4
  %48 = ashr i32 %47, 43
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %106

51:                                               ; preds = %45
  %52 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %3, align 8
  %53 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %52, i32 0, i32 1
  %54 = load i32***, i32**** %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds i32**, i32*** %54, i64 %55
  %57 = load i32**, i32*** %56, align 8
  store i32** %57, i32*** %7, align 8
  %58 = load i32**, i32*** %7, align 8
  %59 = icmp ne i32** %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  br label %103

61:                                               ; preds = %51
  %62 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %3, align 8
  %63 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %62, i32 0, i32 1
  %64 = load i32***, i32**** %63, align 8
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds i32**, i32*** %64, i64 %65
  store i32** null, i32*** %66, align 8
  store i64 0, i64* %5, align 8
  br label %67

67:                                               ; preds = %93, %61
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @SBP_L2_COUNT, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %3, align 8
  %74 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %72, %75
  br label %77

77:                                               ; preds = %71, %67
  %78 = phi i1 [ false, %67 ], [ %76, %71 ]
  br i1 %78, label %79, label %99

79:                                               ; preds = %77
  %80 = load i32**, i32*** %7, align 8
  %81 = load i64, i64* %5, align 8
  %82 = getelementptr inbounds i32*, i32** %80, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load i32**, i32*** %7, align 8
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds i32*, i32** %86, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = ptrtoint i32* %89 to i64
  %91 = call i32 @free_page(i64 %90)
  br label %92

92:                                               ; preds = %85, %79
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %5, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %5, align 8
  %96 = load i64, i64* @PAGE_SIZE, align 8
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %6, align 8
  br label %67

99:                                               ; preds = %77
  %100 = load i32**, i32*** %7, align 8
  %101 = ptrtoint i32** %100 to i64
  %102 = call i32 @free_page(i64 %101)
  br label %103

103:                                              ; preds = %99, %60
  %104 = load i64, i64* %4, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %4, align 8
  br label %45

106:                                              ; preds = %45
  %107 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %3, align 8
  %108 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %3, align 8
  %110 = call i32 @kfree(%struct.subpage_prot_table* %109)
  br label %111

111:                                              ; preds = %106, %13
  ret void
}

declare dso_local %struct.subpage_prot_table* @mm_ctx_subpage_prot(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.subpage_prot_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
