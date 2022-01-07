; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bio_copy_kern.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bio_copy_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i8* }
%struct.request_queue = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bio_copy_kern_endio_read = common dso_local global i32 0, align 4
@bio_copy_kern_endio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @bio_copy_kern(%struct.request_queue* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.bio*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = ptrtoint i8* %20 to i64
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = add i64 %22, %24
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = add i64 %25, %26
  %28 = sub i64 %27, 1
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = lshr i64 %28, %29
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @PAGE_SHIFT, align 8
  %33 = lshr i64 %31, %32
  store i64 %33, i64* %14, align 8
  %34 = load i8*, i8** %8, align 8
  store i8* %34, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %14, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %5
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.bio* @ERR_PTR(i32 %40)
  store %struct.bio* %41, %struct.bio** %6, align 8
  br label %128

42:                                               ; preds = %5
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %14, align 8
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %17, align 4
  %49 = call %struct.bio* @bio_kmalloc(i32 %47, i32 %48)
  store %struct.bio* %49, %struct.bio** %15, align 8
  %50 = load %struct.bio*, %struct.bio** %15, align 8
  %51 = icmp ne %struct.bio* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.bio* @ERR_PTR(i32 %54)
  store %struct.bio* %55, %struct.bio** %6, align 8
  br label %128

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %96, %56
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %57
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %19, align 4
  br label %68

68:                                               ; preds = %66, %60
  %69 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %70 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %71, %72
  %74 = call %struct.page* @alloc_page(i32 %73)
  store %struct.page* %74, %struct.page** %18, align 8
  %75 = load %struct.page*, %struct.page** %18, align 8
  %76 = icmp ne %struct.page* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  br label %120

78:                                               ; preds = %68
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load %struct.page*, %struct.page** %18, align 8
  %83 = call i32 @page_address(%struct.page* %82)
  %84 = load i8*, i8** %16, align 8
  %85 = load i32, i32* %19, align 4
  %86 = call i32 @memcpy(i32 %83, i8* %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %78
  %88 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %89 = load %struct.bio*, %struct.bio** %15, align 8
  %90 = load %struct.page*, %struct.page** %18, align 8
  %91 = load i32, i32* %19, align 4
  %92 = call i32 @bio_add_pc_page(%struct.request_queue* %88, %struct.bio* %89, %struct.page* %90, i32 %91, i32 0)
  %93 = load i32, i32* %19, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %104

96:                                               ; preds = %87
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %9, align 4
  %99 = sub i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %19, align 4
  %101 = load i8*, i8** %16, align 8
  %102 = zext i32 %100 to i64
  %103 = getelementptr i8, i8* %101, i64 %102
  store i8* %103, i8** %16, align 8
  br label %57

104:                                              ; preds = %95, %57
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i32, i32* @bio_copy_kern_endio_read, align 4
  %109 = load %struct.bio*, %struct.bio** %15, align 8
  %110 = getelementptr inbounds %struct.bio, %struct.bio* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load %struct.bio*, %struct.bio** %15, align 8
  %113 = getelementptr inbounds %struct.bio, %struct.bio* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  br label %118

114:                                              ; preds = %104
  %115 = load i32, i32* @bio_copy_kern_endio, align 4
  %116 = load %struct.bio*, %struct.bio** %15, align 8
  %117 = getelementptr inbounds %struct.bio, %struct.bio* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %114, %107
  %119 = load %struct.bio*, %struct.bio** %15, align 8
  store %struct.bio* %119, %struct.bio** %6, align 8
  br label %128

120:                                              ; preds = %77
  %121 = load %struct.bio*, %struct.bio** %15, align 8
  %122 = call i32 @bio_free_pages(%struct.bio* %121)
  %123 = load %struct.bio*, %struct.bio** %15, align 8
  %124 = call i32 @bio_put(%struct.bio* %123)
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  %127 = call %struct.bio* @ERR_PTR(i32 %126)
  store %struct.bio* %127, %struct.bio** %6, align 8
  br label %128

128:                                              ; preds = %120, %118, %52, %38
  %129 = load %struct.bio*, %struct.bio** %6, align 8
  ret %struct.bio* %129
}

declare dso_local %struct.bio* @ERR_PTR(i32) #1

declare dso_local %struct.bio* @bio_kmalloc(i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @bio_add_pc_page(%struct.request_queue*, %struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @bio_free_pages(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
