; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_cpumap.c_enumerate_cpuinfo_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_cpumap.c_enumerate_cpuinfo_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_level = type { i32, i32, i32 }

@CPUINFO_LVL_MAX = common dso_local global i32 0, align 4
@CPUINFO_LVL_ROOT = common dso_local global i64 0, align 8
@CPUINFO_LVL_NODE = common dso_local global i64 0, align 8
@CPUINFO_LVL_CORE = common dso_local global i64 0, align 8
@CPUINFO_LVL_PROC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_level*)* @enumerate_cpuinfo_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enumerate_cpuinfo_nodes(%struct.cpuinfo_level* %0) #0 {
  %2 = alloca %struct.cpuinfo_level*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpuinfo_level*, align 8
  store %struct.cpuinfo_level* %0, %struct.cpuinfo_level** %2, align 8
  %9 = load i32, i32* @CPUINFO_LVL_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i64, i64* @CPUINFO_LVL_ROOT, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %33, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CPUINFO_LVL_MAX, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load %struct.cpuinfo_level*, %struct.cpuinfo_level** %2, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %20, i64 %22
  store %struct.cpuinfo_level* %23, %struct.cpuinfo_level** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %12, i64 %25
  store i32 -1, i32* %26, align 4
  %27 = load %struct.cpuinfo_level*, %struct.cpuinfo_level** %8, align 8
  %28 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %27, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = load %struct.cpuinfo_level*, %struct.cpuinfo_level** %8, align 8
  %30 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.cpuinfo_level*, %struct.cpuinfo_level** %8, align 8
  %32 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %15

36:                                               ; preds = %15
  store i32 1, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %110, %36
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (...) @num_possible_cpus()
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %113

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @cpu_online(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %110

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = load i64, i64* @CPUINFO_LVL_NODE, align 8
  %49 = call i32 @cpuinfo_id(i32 %47, i64 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i64, i64* @CPUINFO_LVL_NODE, align 8
  %52 = getelementptr inbounds i32, i32* %12, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %46
  %56 = load %struct.cpuinfo_level*, %struct.cpuinfo_level** %2, align 8
  %57 = load i64, i64* @CPUINFO_LVL_NODE, align 8
  %58 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %56, i64 %57
  %59 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i64, i64* @CPUINFO_LVL_NODE, align 8
  %64 = getelementptr inbounds i32, i32* %12, i64 %63
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %55, %46
  %68 = load i32, i32* %5, align 4
  %69 = load i64, i64* @CPUINFO_LVL_CORE, align 8
  %70 = call i32 @cpuinfo_id(i32 %68, i64 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i64, i64* @CPUINFO_LVL_CORE, align 8
  %73 = getelementptr inbounds i32, i32* %12, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %67
  %77 = load %struct.cpuinfo_level*, %struct.cpuinfo_level** %2, align 8
  %78 = load i64, i64* @CPUINFO_LVL_CORE, align 8
  %79 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %77, i64 %78
  %80 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i64, i64* @CPUINFO_LVL_CORE, align 8
  %85 = getelementptr inbounds i32, i32* %12, i64 %84
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %76, %67
  %89 = load i32, i32* %5, align 4
  %90 = load i64, i64* @CPUINFO_LVL_PROC, align 8
  %91 = call i32 @cpuinfo_id(i32 %89, i64 %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i64, i64* @CPUINFO_LVL_PROC, align 8
  %94 = getelementptr inbounds i32, i32* %12, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %92, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %88
  %98 = load %struct.cpuinfo_level*, %struct.cpuinfo_level** %2, align 8
  %99 = load i64, i64* @CPUINFO_LVL_PROC, align 8
  %100 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %98, i64 %99
  %101 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i64, i64* @CPUINFO_LVL_PROC, align 8
  %106 = getelementptr inbounds i32, i32* %12, i64 %105
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %97, %88
  br label %110

110:                                              ; preds = %109, %45
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %37

113:                                              ; preds = %37
  %114 = load %struct.cpuinfo_level*, %struct.cpuinfo_level** %2, align 8
  %115 = load i64, i64* @CPUINFO_LVL_ROOT, align 8
  %116 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %114, i64 %115
  %117 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %116, i32 0, i32 2
  store i32 1, i32* %117, align 4
  %118 = load %struct.cpuinfo_level*, %struct.cpuinfo_level** %2, align 8
  %119 = load i64, i64* @CPUINFO_LVL_NODE, align 8
  %120 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %118, i64 %119
  %121 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %6, align 4
  %123 = load %struct.cpuinfo_level*, %struct.cpuinfo_level** %2, align 8
  %124 = load i64, i64* @CPUINFO_LVL_NODE, align 8
  %125 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %123, i64 %124
  %126 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %125, i32 0, i32 0
  store i32 1, i32* %126, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.cpuinfo_level*, %struct.cpuinfo_level** %2, align 8
  %129 = load i64, i64* @CPUINFO_LVL_NODE, align 8
  %130 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %128, i64 %129
  %131 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %130, i32 0, i32 1
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.cpuinfo_level*, %struct.cpuinfo_level** %2, align 8
  %136 = load i64, i64* @CPUINFO_LVL_CORE, align 8
  %137 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %135, i64 %136
  %138 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %137, i32 0, i32 0
  store i32 %134, i32* %138, align 4
  %139 = load %struct.cpuinfo_level*, %struct.cpuinfo_level** %2, align 8
  %140 = load i64, i64* @CPUINFO_LVL_CORE, align 8
  %141 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %139, i64 %140
  %142 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = sub nsw i32 %146, 1
  %148 = load %struct.cpuinfo_level*, %struct.cpuinfo_level** %2, align 8
  %149 = load i64, i64* @CPUINFO_LVL_CORE, align 8
  %150 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %148, i64 %149
  %151 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %150, i32 0, i32 1
  store i32 %147, i32* %151, align 4
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.cpuinfo_level*, %struct.cpuinfo_level** %2, align 8
  %154 = load i64, i64* @CPUINFO_LVL_PROC, align 8
  %155 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %153, i64 %154
  %156 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %155, i32 0, i32 0
  store i32 %152, i32* %156, align 4
  %157 = load %struct.cpuinfo_level*, %struct.cpuinfo_level** %2, align 8
  %158 = load i64, i64* @CPUINFO_LVL_PROC, align 8
  %159 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %157, i64 %158
  %160 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = sub nsw i32 %164, 1
  %166 = load %struct.cpuinfo_level*, %struct.cpuinfo_level** %2, align 8
  %167 = load i64, i64* @CPUINFO_LVL_PROC, align 8
  %168 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %166, i64 %167
  %169 = getelementptr inbounds %struct.cpuinfo_level, %struct.cpuinfo_level* %168, i32 0, i32 1
  store i32 %165, i32* %169, align 4
  %170 = load i32, i32* %7, align 4
  %171 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %171)
  ret i32 %170
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @num_possible_cpus(...) #2

declare dso_local i32 @cpu_online(i32) #2

declare dso_local i32 @cpuinfo_id(i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
