; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_process_gb_huge_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_process_gb_huge_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_vector = type { i64, i64 }

@max_gb_huge_pages = common dso_local global i64 0, align 8
@PUD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_vector*, i64)* @process_gb_huge_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_gb_huge_pages(%struct.mem_vector* %0, i64 %1) #0 {
  %3 = alloca %struct.mem_vector*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mem_vector, align 8
  %8 = alloca i32, align 4
  store %struct.mem_vector* %0, %struct.mem_vector** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* @max_gb_huge_pages, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @store_slot_info(%struct.mem_vector* %12, i64 %13)
  br label %116

15:                                               ; preds = %2
  %16 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %17 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PUD_SIZE, align 8
  %20 = call i64 @ALIGN(i64 %18, i64 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %23 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %26 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %24, %27
  %29 = icmp ult i64 %21, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %15
  %31 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %32 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %36 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %34, %37
  %39 = sub i64 %33, %38
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %30, %15
  br label %41

41:                                               ; preds = %50, %40
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @PUD_SIZE, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i64, i64* @max_gb_huge_pages, align 8
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi i1 [ false, %41 ], [ %47, %45 ]
  br i1 %49, label %50, label %58

50:                                               ; preds = %48
  %51 = load i64, i64* @PUD_SIZE, align 8
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* @max_gb_huge_pages, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* @max_gb_huge_pages, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %41

58:                                               ; preds = %48
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @store_slot_info(%struct.mem_vector* %62, i64 %63)
  br label %116

65:                                               ; preds = %58
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %68 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %4, align 8
  %71 = add i64 %69, %70
  %72 = icmp uge i64 %66, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %65
  %74 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %75 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  store i64 %76, i64* %77, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %80 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sub i64 %78, %81
  %83 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 1
  store i64 %82, i64* %83, align 8
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @store_slot_info(%struct.mem_vector* %7, i64 %84)
  br label %86

86:                                               ; preds = %73, %65
  %87 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %88 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %92 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %90, %93
  %95 = sub i64 %89, %94
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* @PUD_SIZE, align 8
  %99 = mul i64 %97, %98
  %100 = sub i64 %95, %99
  store i64 %100, i64* %6, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %4, align 8
  %103 = icmp uge i64 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %86
  %105 = load i64, i64* %5, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* @PUD_SIZE, align 8
  %109 = mul i64 %107, %108
  %110 = add i64 %105, %109
  %111 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 0
  store i64 %110, i64* %111, align 8
  %112 = load i64, i64* %6, align 8
  %113 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %7, i32 0, i32 1
  store i64 %112, i64* %113, align 8
  %114 = load i64, i64* %4, align 8
  %115 = call i32 @store_slot_info(%struct.mem_vector* %7, i64 %114)
  br label %116

116:                                              ; preds = %11, %61, %104, %86
  ret void
}

declare dso_local i32 @store_slot_info(%struct.mem_vector*, i64) #1

declare dso_local i64 @ALIGN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
