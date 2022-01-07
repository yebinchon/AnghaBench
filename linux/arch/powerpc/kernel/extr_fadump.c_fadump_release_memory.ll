; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_release_memory.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_release_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

@fw_dump = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@reserved_mrange_info = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @fadump_release_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fadump_release_memory(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = call i32 (...) @fadump_scan_reserved_mem_ranges()
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fw_dump, i32 0, i32 0), align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fw_dump, i32 0, i32 1), align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @fadump_add_mem_range(%struct.TYPE_7__* @reserved_mrange_info, i64 %15, i64 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %2
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @fadump_release_reserved_area(i64 %33, i64 %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @fadump_release_reserved_area(i64 %41, i64 %42)
  br label %44

44:                                               ; preds = %40, %36
  br label %49

45:                                               ; preds = %24, %20
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @fadump_release_reserved_area(i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %45, %44
  br label %97

50:                                               ; preds = %2
  %51 = call i32 @sort_and_merge_mem_ranges(%struct.TYPE_7__* @reserved_mrange_info)
  %52 = load i64, i64* %3, align 8
  store i64 %52, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %86, %50
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @reserved_mrange_info, i32 0, i32 0), align 8
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %53
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @reserved_mrange_info, i32 0, i32 1), align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @reserved_mrange_info, i32 0, i32 1), align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %64, %70
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %57
  br label %86

76:                                               ; preds = %57
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @fadump_release_reserved_area(i64 %81, i64 %82)
  br label %84

84:                                               ; preds = %80, %76
  %85 = load i64, i64* %6, align 8
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %84, %75
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %53

89:                                               ; preds = %53
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %4, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @fadump_release_reserved_area(i64 %94, i64 %95)
  br label %97

97:                                               ; preds = %49, %93, %89
  ret void
}

declare dso_local i32 @fadump_scan_reserved_mem_ranges(...) #1

declare dso_local i32 @fadump_add_mem_range(%struct.TYPE_7__*, i64, i64) #1

declare dso_local i32 @fadump_release_reserved_area(i64, i64) #1

declare dso_local i32 @sort_and_merge_mem_ranges(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
