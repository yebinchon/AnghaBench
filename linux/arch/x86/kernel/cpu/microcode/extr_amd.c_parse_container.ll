; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_amd.c_parse_container.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_amd.c_parse_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cont_desc = type { i32, i64, i32*, %struct.microcode_amd*, i32 }
%struct.microcode_amd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.equiv_cpu_table = type { i32, %struct.equiv_cpu_entry* }
%struct.equiv_cpu_entry = type { i32 }

@CONTAINER_HDR_SZ = common dso_local global i32 0, align 4
@SECTION_HDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, %struct.cont_desc*)* @parse_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_container(i32* %0, i64 %1, %struct.cont_desc* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cont_desc*, align 8
  %8 = alloca %struct.equiv_cpu_table, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.microcode_amd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.cont_desc* %2, %struct.cont_desc** %7, align 8
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i32*, i32** %5, align 8
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @verify_equivalence_table(i32* %18, i64 %19, i32 1)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %129

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* @CONTAINER_HDR_SZ, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = bitcast i32* %28 to %struct.equiv_cpu_entry*
  %30 = getelementptr inbounds %struct.equiv_cpu_table, %struct.equiv_cpu_table* %8, i32 0, i32 1
  store %struct.equiv_cpu_entry* %29, %struct.equiv_cpu_entry** %30, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.equiv_cpu_table, %struct.equiv_cpu_table* %8, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load %struct.cont_desc*, %struct.cont_desc** %7, align 8
  %39 = getelementptr inbounds %struct.cont_desc, %struct.cont_desc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @find_equiv_id(%struct.equiv_cpu_table* %8, i32 %40)
  store i64 %41, i64* %11, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CONTAINER_HDR_SZ, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32*, i32** %12, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %12, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CONTAINER_HDR_SZ, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %6, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %97, %23
  %59 = load i64, i64* %6, align 8
  %60 = icmp ugt i64 %59, 0
  br i1 %60, label %61, label %110

61:                                               ; preds = %58
  %62 = load %struct.cont_desc*, %struct.cont_desc** %7, align 8
  %63 = getelementptr inbounds %struct.cont_desc, %struct.cont_desc* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @x86_family(i32 %64)
  %66 = load i32*, i32** %12, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @verify_patch(i32 %65, i32* %66, i64 %67, i32* %14, i32 1)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %125

72:                                               ; preds = %61
  %73 = load i32, i32* %15, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %97

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* @SECTION_HDR_SIZE, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = bitcast i32* %81 to %struct.microcode_amd*
  store %struct.microcode_amd* %82, %struct.microcode_amd** %13, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.microcode_amd*, %struct.microcode_amd** %13, align 8
  %85 = getelementptr inbounds %struct.microcode_amd, %struct.microcode_amd* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %83, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %77
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.cont_desc*, %struct.cont_desc** %7, align 8
  %92 = getelementptr inbounds %struct.cont_desc, %struct.cont_desc* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.microcode_amd*, %struct.microcode_amd** %13, align 8
  %94 = load %struct.cont_desc*, %struct.cont_desc** %7, align 8
  %95 = getelementptr inbounds %struct.cont_desc, %struct.cont_desc* %94, i32 0, i32 3
  store %struct.microcode_amd* %93, %struct.microcode_amd** %95, align 8
  br label %96

96:                                               ; preds = %89, %77
  br label %97

97:                                               ; preds = %96, %75
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @SECTION_HDR_SIZE, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32*, i32** %12, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %12, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @SECTION_HDR_SIZE, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %6, align 8
  %109 = sub i64 %108, %107
  store i64 %109, i64* %6, align 8
  br label %58

110:                                              ; preds = %58
  %111 = load %struct.cont_desc*, %struct.cont_desc** %7, align 8
  %112 = getelementptr inbounds %struct.cont_desc, %struct.cont_desc* %111, i32 0, i32 3
  %113 = load %struct.microcode_amd*, %struct.microcode_amd** %112, align 8
  %114 = icmp ne %struct.microcode_amd* %113, null
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load i32*, i32** %5, align 8
  %117 = load %struct.cont_desc*, %struct.cont_desc** %7, align 8
  %118 = getelementptr inbounds %struct.cont_desc, %struct.cont_desc* %117, i32 0, i32 2
  store i32* %116, i32** %118, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %6, align 8
  %121 = sub i64 %119, %120
  %122 = load %struct.cont_desc*, %struct.cont_desc** %7, align 8
  %123 = getelementptr inbounds %struct.cont_desc, %struct.cont_desc* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  store i64 0, i64* %4, align 8
  br label %129

124:                                              ; preds = %110
  br label %125

125:                                              ; preds = %124, %71
  %126 = load i64, i64* %9, align 8
  %127 = load i64, i64* %6, align 8
  %128 = sub i64 %126, %127
  store i64 %128, i64* %4, align 8
  br label %129

129:                                              ; preds = %125, %115, %22
  %130 = load i64, i64* %4, align 8
  ret i64 %130
}

declare dso_local i32 @verify_equivalence_table(i32*, i64, i32) #1

declare dso_local i64 @find_equiv_id(%struct.equiv_cpu_table*, i32) #1

declare dso_local i32 @verify_patch(i32, i32*, i64, i32*, i32) #1

declare dso_local i32 @x86_family(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
