; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_add_mem_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_add_mem_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fadump_mrange_info = type { i32, i32, i32, %struct.fadump_memory_range* }
%struct.fadump_memory_range = type { i64, i64 }

@.str = private unnamed_addr constant [54 x i8] c"%s_memory_range[%d] [%#016llx-%#016llx], %#llx bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fadump_mrange_info*, i64, i64)* @fadump_add_mem_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fadump_add_mem_range(%struct.fadump_mrange_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fadump_mrange_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fadump_memory_range*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.fadump_mrange_info* %0, %struct.fadump_mrange_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %5, align 8
  %14 = getelementptr inbounds %struct.fadump_mrange_info, %struct.fadump_mrange_info* %13, i32 0, i32 3
  %15 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %14, align 8
  store %struct.fadump_memory_range* %15, %struct.fadump_memory_range** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %113

20:                                               ; preds = %3
  %21 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %5, align 8
  %22 = getelementptr inbounds %struct.fadump_mrange_info, %struct.fadump_mrange_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %20
  %26 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %8, align 8
  %27 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %5, align 8
  %28 = getelementptr inbounds %struct.fadump_mrange_info, %struct.fadump_mrange_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %26, i64 %31
  %33 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %8, align 8
  %36 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %5, align 8
  %37 = getelementptr inbounds %struct.fadump_mrange_info, %struct.fadump_mrange_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %35, i64 %40
  %42 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i64, i64* %6, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %25
  store i32 1, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %25
  br label %51

51:                                               ; preds = %50, %20
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %87, label %54

54:                                               ; preds = %51
  %55 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %5, align 8
  %56 = getelementptr inbounds %struct.fadump_mrange_info, %struct.fadump_mrange_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %5, align 8
  %59 = getelementptr inbounds %struct.fadump_mrange_info, %struct.fadump_mrange_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %54
  %63 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %5, align 8
  %64 = call i32 @fadump_alloc_mem_ranges(%struct.fadump_mrange_info* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %4, align 4
  br label %113

69:                                               ; preds = %62
  %70 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %5, align 8
  %71 = getelementptr inbounds %struct.fadump_mrange_info, %struct.fadump_mrange_info* %70, i32 0, i32 3
  %72 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %71, align 8
  store %struct.fadump_memory_range* %72, %struct.fadump_memory_range** %8, align 8
  br label %73

73:                                               ; preds = %69, %54
  %74 = load i64, i64* %6, align 8
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %8, align 8
  %77 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %5, align 8
  %78 = getelementptr inbounds %struct.fadump_mrange_info, %struct.fadump_mrange_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %76, i64 %80
  %82 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %81, i32 0, i32 0
  store i64 %75, i64* %82, align 8
  %83 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %5, align 8
  %84 = getelementptr inbounds %struct.fadump_mrange_info, %struct.fadump_mrange_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %73, %51
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* %10, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %8, align 8
  %92 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %5, align 8
  %93 = getelementptr inbounds %struct.fadump_mrange_info, %struct.fadump_mrange_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %91, i64 %96
  %98 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %97, i32 0, i32 1
  store i64 %90, i64* %98, align 8
  %99 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %5, align 8
  %100 = getelementptr inbounds %struct.fadump_mrange_info, %struct.fadump_mrange_info* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %5, align 8
  %103 = getelementptr inbounds %struct.fadump_mrange_info, %struct.fadump_mrange_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, 1
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* %7, align 8
  %108 = sub nsw i64 %107, 1
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %10, align 8
  %111 = sub nsw i64 %109, %110
  %112 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %105, i64 %106, i64 %108, i64 %111)
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %87, %67, %19
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @fadump_alloc_mem_ranges(%struct.fadump_mrange_info*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
