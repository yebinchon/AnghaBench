; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-fadump.c_opal_fadump_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-fadump.c_opal_fadump_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_dump = type { i64*, i64*, i32, i64, i64, i32, i32 }
%struct.opal_fadump_mem_struct = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Boot memory regions:\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\09[%03d] base: 0x%lx, size: 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Not all memory regions were saved!!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"  Unsaved memory regions:\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\09[%03d] base: 0x%llx, size: 0x%llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [123 x i8] c"If the unsaved regions only contain pages that are filtered out (eg. free/user pages), the vmcore should still be usable.\0A\00", align 1
@.str.6 = private unnamed_addr constant [85 x i8] c"WARNING: If the unsaved regions contain kernel pages, the vmcore will be corrupted.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_dump*, %struct.opal_fadump_mem_struct*)* @opal_fadump_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opal_fadump_get_config(%struct.fw_dump* %0, %struct.opal_fadump_mem_struct* %1) #0 {
  %3 = alloca %struct.fw_dump*, align 8
  %4 = alloca %struct.opal_fadump_mem_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.fw_dump* %0, %struct.fw_dump** %3, align 8
  store %struct.opal_fadump_mem_struct* %1, %struct.opal_fadump_mem_struct** %4, align 8
  %10 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %11 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %144

15:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %16 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %17 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %73, %15
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.opal_fadump_mem_struct*, %struct.opal_fadump_mem_struct** %4, align 8
  %22 = getelementptr inbounds %struct.opal_fadump_mem_struct, %struct.opal_fadump_mem_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %19
  %26 = load %struct.opal_fadump_mem_struct*, %struct.opal_fadump_mem_struct** %4, align 8
  %27 = getelementptr inbounds %struct.opal_fadump_mem_struct, %struct.opal_fadump_mem_struct* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  %34 = load %struct.opal_fadump_mem_struct*, %struct.opal_fadump_mem_struct** %4, align 8
  %35 = getelementptr inbounds %struct.opal_fadump_mem_struct, %struct.opal_fadump_mem_struct* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %42, i64 %43, i64 %44)
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %48 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 %46, i64* %52, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %55 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 %53, i64* %59, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %62 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %7, align 8
  %67 = sub i64 %65, %66
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %70, %71
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %25
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %19

76:                                               ; preds = %19
  %77 = load %struct.opal_fadump_mem_struct*, %struct.opal_fadump_mem_struct** %4, align 8
  %78 = getelementptr inbounds %struct.opal_fadump_mem_struct, %struct.opal_fadump_mem_struct* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %84 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  %85 = load %struct.opal_fadump_mem_struct*, %struct.opal_fadump_mem_struct** %4, align 8
  %86 = getelementptr inbounds %struct.opal_fadump_mem_struct, %struct.opal_fadump_mem_struct* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.opal_fadump_mem_struct*, %struct.opal_fadump_mem_struct** %4, align 8
  %89 = getelementptr inbounds %struct.opal_fadump_mem_struct, %struct.opal_fadump_mem_struct* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %128

92:                                               ; preds = %76
  %93 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %94 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %95 = load %struct.opal_fadump_mem_struct*, %struct.opal_fadump_mem_struct** %4, align 8
  %96 = getelementptr inbounds %struct.opal_fadump_mem_struct, %struct.opal_fadump_mem_struct* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %104, %92
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.opal_fadump_mem_struct*, %struct.opal_fadump_mem_struct** %4, align 8
  %101 = getelementptr inbounds %struct.opal_fadump_mem_struct, %struct.opal_fadump_mem_struct* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %98
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.opal_fadump_mem_struct*, %struct.opal_fadump_mem_struct** %4, align 8
  %107 = getelementptr inbounds %struct.opal_fadump_mem_struct, %struct.opal_fadump_mem_struct* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.opal_fadump_mem_struct*, %struct.opal_fadump_mem_struct** %4, align 8
  %115 = getelementptr inbounds %struct.opal_fadump_mem_struct, %struct.opal_fadump_mem_struct* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %105, i64 %113, i64 %121)
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %98

125:                                              ; preds = %98
  %126 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.5, i64 0, i64 0))
  %127 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %76
  %129 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %130 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %8, align 8
  %133 = add i64 %131, %132
  %134 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %135 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %134, i32 0, i32 4
  store i64 %133, i64* %135, align 8
  %136 = load %struct.opal_fadump_mem_struct*, %struct.opal_fadump_mem_struct** %4, align 8
  %137 = getelementptr inbounds %struct.opal_fadump_mem_struct, %struct.opal_fadump_mem_struct* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %140 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %142 = load %struct.opal_fadump_mem_struct*, %struct.opal_fadump_mem_struct** %4, align 8
  %143 = call i32 @opal_fadump_update_config(%struct.fw_dump* %141, %struct.opal_fadump_mem_struct* %142)
  br label %144

144:                                              ; preds = %128, %14
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @opal_fadump_update_config(%struct.fw_dump*, %struct.opal_fadump_mem_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
