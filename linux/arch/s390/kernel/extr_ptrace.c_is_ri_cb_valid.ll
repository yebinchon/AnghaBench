; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ptrace.c_is_ri_cb_valid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ptrace.c_is_ri_cb_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.runtime_instr_cb = type { i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@PAGE_DEFAULT_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.runtime_instr_cb*)* @is_ri_cb_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ri_cb_valid(%struct.runtime_instr_cb* %0) #0 {
  %2 = alloca %struct.runtime_instr_cb*, align 8
  store %struct.runtime_instr_cb* %0, %struct.runtime_instr_cb** %2, align 8
  %3 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %4 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = and i32 %5, 31
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %131

8:                                                ; preds = %1
  %9 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %10 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 4095
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %131

14:                                               ; preds = %8
  %15 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %16 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 4095
  %19 = icmp eq i32 %18, 4095
  br i1 %19, label %20, label %131

20:                                               ; preds = %14
  %21 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %22 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %131

25:                                               ; preds = %20
  %26 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %27 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %131

30:                                               ; preds = %25
  %31 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %32 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %131

35:                                               ; preds = %30
  %36 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %37 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %131

40:                                               ; preds = %35
  %41 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %42 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %131

45:                                               ; preds = %40
  %46 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %47 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %131

50:                                               ; preds = %45
  %51 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %52 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %131

55:                                               ; preds = %50
  %56 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %57 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %56, i32 0, i32 10
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %131

60:                                               ; preds = %55
  %61 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %62 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %61, i32 0, i32 11
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %131

65:                                               ; preds = %60
  %66 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %67 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %66, i32 0, i32 12
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PAGE_DEFAULT_KEY, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %131

71:                                               ; preds = %65
  %72 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %73 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %72, i32 0, i32 13
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %131

76:                                               ; preds = %71
  %77 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %78 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %77, i32 0, i32 14
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %131

81:                                               ; preds = %76
  %82 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %83 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %82, i32 0, i32 15
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %131

86:                                               ; preds = %81
  %87 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %88 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %87, i32 0, i32 16
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %131

91:                                               ; preds = %86
  %92 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %93 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %92, i32 0, i32 17
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %131

96:                                               ; preds = %91
  %97 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %98 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %97, i32 0, i32 18
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %131

101:                                              ; preds = %96
  %102 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %103 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %106 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sge i32 %104, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %101
  %110 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %111 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %114 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp sge i32 %112, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %109
  %118 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %119 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %122 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  %125 = icmp sle i32 %120, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %117
  %127 = load %struct.runtime_instr_cb*, %struct.runtime_instr_cb** %2, align 8
  %128 = getelementptr inbounds %struct.runtime_instr_cb, %struct.runtime_instr_cb* %127, i32 0, i32 19
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %129, 3
  br label %131

131:                                              ; preds = %126, %117, %109, %101, %96, %91, %86, %81, %76, %71, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20, %14, %8, %1
  %132 = phi i1 [ false, %117 ], [ false, %109 ], [ false, %101 ], [ false, %96 ], [ false, %91 ], [ false, %86 ], [ false, %81 ], [ false, %76 ], [ false, %71 ], [ false, %65 ], [ false, %60 ], [ false, %55 ], [ false, %50 ], [ false, %45 ], [ false, %40 ], [ false, %35 ], [ false, %30 ], [ false, %25 ], [ false, %20 ], [ false, %14 ], [ false, %8 ], [ false, %1 ], [ %130, %126 ]
  %133 = zext i1 %132 to i32
  ret i32 %133
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
