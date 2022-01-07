; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_bm_realloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_bm_realloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.drbd_bitmap = type { i64, %struct.page** }

@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page** (%struct.drbd_bitmap*, i64)* @bm_realloc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page** @bm_realloc_pages(%struct.drbd_bitmap* %0, i64 %1) #0 {
  %3 = alloca %struct.page**, align 8
  %4 = alloca %struct.drbd_bitmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.drbd_bitmap* %0, %struct.drbd_bitmap** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %4, align 8
  %13 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %12, i32 0, i32 1
  %14 = load %struct.page**, %struct.page*** %13, align 8
  store %struct.page** %14, %struct.page*** %6, align 8
  %15 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %4, align 8
  %16 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.page**, %struct.page*** %6, align 8
  %22 = icmp ne %struct.page** %21, null
  br label %23

23:                                               ; preds = %20, %2
  %24 = phi i1 [ false, %2 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.page**, %struct.page*** %6, align 8
  %31 = icmp eq %struct.page** %30, null
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i1 [ false, %23 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load %struct.page**, %struct.page*** %6, align 8
  store %struct.page** %40, %struct.page*** %3, align 8
  br label %146

41:                                               ; preds = %32
  %42 = load i64, i64* %5, align 8
  %43 = mul i64 8, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @GFP_NOIO, align 4
  %47 = load i32, i32* @__GFP_NOWARN, align 4
  %48 = or i32 %46, %47
  %49 = call %struct.page** @kzalloc(i32 %45, i32 %48)
  store %struct.page** %49, %struct.page*** %7, align 8
  %50 = load %struct.page**, %struct.page*** %7, align 8
  %51 = icmp ne %struct.page** %50, null
  br i1 %51, label %63, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @GFP_NOIO, align 4
  %55 = load i32, i32* @__GFP_ZERO, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @PAGE_KERNEL, align 4
  %58 = call %struct.page** @__vmalloc(i32 %53, i32 %56, i32 %57)
  store %struct.page** %58, %struct.page*** %7, align 8
  %59 = load %struct.page**, %struct.page*** %7, align 8
  %60 = icmp ne %struct.page** %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  store %struct.page** null, %struct.page*** %3, align 8
  br label %146

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %41
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp uge i64 %64, %65
  br i1 %66, label %67, label %124

67:                                               ; preds = %63
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %83, %67
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* %11, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load %struct.page**, %struct.page*** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.page*, %struct.page** %74, i64 %76
  %78 = load %struct.page*, %struct.page** %77, align 8
  %79 = load %struct.page**, %struct.page*** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.page*, %struct.page** %79, i64 %81
  store %struct.page* %78, %struct.page** %82, align 8
  br label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %9, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %68

86:                                               ; preds = %68
  br label %87

87:                                               ; preds = %120, %86
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = load i64, i64* %5, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %123

92:                                               ; preds = %87
  %93 = load i32, i32* @GFP_NOIO, align 4
  %94 = load i32, i32* @__GFP_HIGHMEM, align 4
  %95 = or i32 %93, %94
  %96 = call %struct.page* @alloc_page(i32 %95)
  store %struct.page* %96, %struct.page** %8, align 8
  %97 = load %struct.page*, %struct.page** %8, align 8
  %98 = icmp ne %struct.page* %97, null
  br i1 %98, label %111, label %99

99:                                               ; preds = %92
  %100 = load %struct.page**, %struct.page*** %7, align 8
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds %struct.page*, %struct.page** %100, i64 %101
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* %11, align 8
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  %108 = call i32 @bm_free_pages(%struct.page** %102, i32 %107)
  %109 = load %struct.page**, %struct.page*** %7, align 8
  %110 = call i32 @bm_vk_free(%struct.page** %109)
  store %struct.page** null, %struct.page*** %3, align 8
  br label %146

111:                                              ; preds = %92
  %112 = load %struct.page*, %struct.page** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @bm_store_page_idx(%struct.page* %112, i32 %113)
  %115 = load %struct.page*, %struct.page** %8, align 8
  %116 = load %struct.page**, %struct.page*** %7, align 8
  %117 = load i32, i32* %9, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.page*, %struct.page** %116, i64 %118
  store %struct.page* %115, %struct.page** %119, align 8
  br label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %9, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %87

123:                                              ; preds = %87
  br label %144

124:                                              ; preds = %63
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %140, %124
  %126 = load i32, i32* %9, align 4
  %127 = zext i32 %126 to i64
  %128 = load i64, i64* %5, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %125
  %131 = load %struct.page**, %struct.page*** %6, align 8
  %132 = load i32, i32* %9, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.page*, %struct.page** %131, i64 %133
  %135 = load %struct.page*, %struct.page** %134, align 8
  %136 = load %struct.page**, %struct.page*** %7, align 8
  %137 = load i32, i32* %9, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.page*, %struct.page** %136, i64 %138
  store %struct.page* %135, %struct.page** %139, align 8
  br label %140

140:                                              ; preds = %130
  %141 = load i32, i32* %9, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %125

143:                                              ; preds = %125
  br label %144

144:                                              ; preds = %143, %123
  %145 = load %struct.page**, %struct.page*** %7, align 8
  store %struct.page** %145, %struct.page*** %3, align 8
  br label %146

146:                                              ; preds = %144, %99, %61, %39
  %147 = load %struct.page**, %struct.page*** %3, align 8
  ret %struct.page** %147
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page** @kzalloc(i32, i32) #1

declare dso_local %struct.page** @__vmalloc(i32, i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @bm_free_pages(%struct.page**, i32) #1

declare dso_local i32 @bm_vk_free(%struct.page**) #1

declare dso_local i32 @bm_store_page_idx(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
