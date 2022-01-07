; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bio_map_kern.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bio_map_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i8* }
%struct.request_queue = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@bio_map_kern_endio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @bio_map_kern(%struct.request_queue* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.bio*, align 8
  %19 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = ptrtoint i8* %20 to i64
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = add i64 %22, %24
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = add i64 %25, %26
  %28 = sub i64 %27, 1
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = lshr i64 %28, %29
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @PAGE_SHIFT, align 8
  %33 = lshr i64 %31, %32
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %13, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @is_vmalloc_addr(i8* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call %struct.bio* @bio_kmalloc(i32 %40, i32 %41)
  store %struct.bio* %42, %struct.bio** %18, align 8
  %43 = load %struct.bio*, %struct.bio** %18, align 8
  %44 = icmp ne %struct.bio* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %4
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.bio* @ERR_PTR(i32 %47)
  store %struct.bio* %48, %struct.bio** %5, align 8
  br label %121

49:                                               ; preds = %4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @flush_kernel_vmap_range(i8* %53, i32 %54)
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.bio*, %struct.bio** %18, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %52, %49
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @offset_in_page(i64 %60)
  store i32 %61, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %62

62:                                               ; preds = %113, %59
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %116

66:                                               ; preds = %62
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = sub i64 %67, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ule i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %116

75:                                               ; preds = %66
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ugt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %19, align 4
  br label %81

81:                                               ; preds = %79, %75
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i8*, i8** %7, align 8
  %86 = call %struct.page* @virt_to_page(i8* %85)
  store %struct.page* %86, %struct.page** %15, align 8
  br label %90

87:                                               ; preds = %81
  %88 = load i8*, i8** %7, align 8
  %89 = call %struct.page* @vmalloc_to_page(i8* %88)
  store %struct.page* %89, %struct.page** %15, align 8
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %92 = load %struct.bio*, %struct.bio** %18, align 8
  %93 = load %struct.page*, %struct.page** %15, align 8
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @bio_add_pc_page(%struct.request_queue* %91, %struct.bio* %92, %struct.page* %93, i32 %94, i32 %95)
  %97 = load i32, i32* %19, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = load %struct.bio*, %struct.bio** %18, align 8
  %101 = call i32 @bio_put(%struct.bio* %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  %104 = call %struct.bio* @ERR_PTR(i32 %103)
  store %struct.bio* %104, %struct.bio** %5, align 8
  br label %121

105:                                              ; preds = %90
  %106 = load i32, i32* %19, align 4
  %107 = load i8*, i8** %7, align 8
  %108 = zext i32 %106 to i64
  %109 = getelementptr i8, i8* %107, i64 %108
  store i8* %109, i8** %7, align 8
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %8, align 4
  %112 = sub i32 %111, %110
  store i32 %112, i32* %8, align 4
  store i32 0, i32* %16, align 4
  br label %113

113:                                              ; preds = %105
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %62

116:                                              ; preds = %74, %62
  %117 = load i32, i32* @bio_map_kern_endio, align 4
  %118 = load %struct.bio*, %struct.bio** %18, align 8
  %119 = getelementptr inbounds %struct.bio, %struct.bio* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.bio*, %struct.bio** %18, align 8
  store %struct.bio* %120, %struct.bio** %5, align 8
  br label %121

121:                                              ; preds = %116, %99, %45
  %122 = load %struct.bio*, %struct.bio** %5, align 8
  ret %struct.bio* %122
}

declare dso_local i32 @is_vmalloc_addr(i8*) #1

declare dso_local %struct.bio* @bio_kmalloc(i32, i32) #1

declare dso_local %struct.bio* @ERR_PTR(i32) #1

declare dso_local i32 @flush_kernel_vmap_range(i8*, i32) #1

declare dso_local i32 @offset_in_page(i64) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local i32 @bio_add_pc_page(%struct.request_queue*, %struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
