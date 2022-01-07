; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-rbtree.c_regcache_rbtree_insert_to_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-rbtree.c_regcache_rbtree_insert_to_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, i32 }
%struct.regcache_rbtree_node = type { i32, i64*, i32, i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, %struct.regcache_rbtree_node*, i32, i32, i32, i32)* @regcache_rbtree_insert_to_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regcache_rbtree_insert_to_block(%struct.regmap* %0, %struct.regcache_rbtree_node* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca %struct.regcache_rbtree_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  store %struct.regmap* %0, %struct.regmap** %8, align 8
  store %struct.regcache_rbtree_node* %1, %struct.regcache_rbtree_node** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = sub i32 %19, %20
  %22 = load %struct.regmap*, %struct.regmap** %8, align 8
  %23 = getelementptr inbounds %struct.regmap, %struct.regmap* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = udiv i32 %21, %24
  %26 = add i32 %25, 1
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sub i32 %27, %28
  %30 = load %struct.regmap*, %struct.regmap** %8, align 8
  %31 = getelementptr inbounds %struct.regmap, %struct.regmap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = udiv i32 %29, %32
  store i32 %33, i32* %15, align 4
  %34 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %9, align 8
  %35 = getelementptr inbounds %struct.regcache_rbtree_node, %struct.regcache_rbtree_node* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sub i32 %36, %37
  %39 = load %struct.regmap*, %struct.regmap** %8, align 8
  %40 = getelementptr inbounds %struct.regmap, %struct.regmap* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = udiv i32 %38, %41
  store i32 %42, i32* %16, align 4
  %43 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %9, align 8
  %44 = getelementptr inbounds %struct.regcache_rbtree_node, %struct.regcache_rbtree_node* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.regmap*, %struct.regmap** %8, align 8
  %48 = getelementptr inbounds %struct.regmap, %struct.regmap* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul i32 %46, %49
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @krealloc(i64* %45, i32 %50, i32 %51)
  %53 = bitcast i8* %52 to i64*
  store i64* %53, i64** %18, align 8
  %54 = load i64*, i64** %18, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %6
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %153

59:                                               ; preds = %6
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @BITS_TO_LONGS(i32 %60)
  %62 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %9, align 8
  %63 = getelementptr inbounds %struct.regcache_rbtree_node, %struct.regcache_rbtree_node* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @BITS_TO_LONGS(i32 %64)
  %66 = icmp sgt i32 %61, %65
  br i1 %66, label %67, label %105

67:                                               ; preds = %59
  %68 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %9, align 8
  %69 = getelementptr inbounds %struct.regcache_rbtree_node, %struct.regcache_rbtree_node* %68, i32 0, i32 3
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @BITS_TO_LONGS(i32 %71)
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 8
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i8* @krealloc(i64* %70, i32 %75, i32 %76)
  %78 = bitcast i8* %77 to i64*
  store i64* %78, i64** %17, align 8
  %79 = load i64*, i64** %17, align 8
  %80 = icmp ne i64* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %67
  %82 = load i64*, i64** %18, align 8
  %83 = call i32 @kfree(i64* %82)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %153

86:                                               ; preds = %67
  %87 = load i64*, i64** %17, align 8
  %88 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %9, align 8
  %89 = getelementptr inbounds %struct.regcache_rbtree_node, %struct.regcache_rbtree_node* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @BITS_TO_LONGS(i32 %90)
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %87, i64 %92
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @BITS_TO_LONGS(i32 %94)
  %96 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %9, align 8
  %97 = getelementptr inbounds %struct.regcache_rbtree_node, %struct.regcache_rbtree_node* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @BITS_TO_LONGS(i32 %98)
  %100 = sub nsw i32 %95, %99
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @memset(i64* %93, i32 0, i32 %103)
  br label %109

105:                                              ; preds = %59
  %106 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %9, align 8
  %107 = getelementptr inbounds %struct.regcache_rbtree_node, %struct.regcache_rbtree_node* %106, i32 0, i32 3
  %108 = load i64*, i64** %107, align 8
  store i64* %108, i64** %17, align 8
  br label %109

109:                                              ; preds = %105, %86
  %110 = load i32, i32* %15, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %109
  %113 = load i64*, i64** %18, align 8
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.regmap*, %struct.regmap** %8, align 8
  %116 = getelementptr inbounds %struct.regmap, %struct.regmap* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = mul i32 %114, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %113, i64 %119
  %121 = load i64*, i64** %18, align 8
  %122 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %9, align 8
  %123 = getelementptr inbounds %struct.regcache_rbtree_node, %struct.regcache_rbtree_node* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.regmap*, %struct.regmap** %8, align 8
  %126 = getelementptr inbounds %struct.regmap, %struct.regmap* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = mul i32 %124, %127
  %129 = call i32 @memmove(i64* %120, i64* %121, i32 %128)
  %130 = load i64*, i64** %17, align 8
  %131 = load i64*, i64** %17, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @bitmap_shift_left(i64* %130, i64* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %112, %109
  %136 = load i64*, i64** %18, align 8
  %137 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %9, align 8
  %138 = getelementptr inbounds %struct.regcache_rbtree_node, %struct.regcache_rbtree_node* %137, i32 0, i32 1
  store i64* %136, i64** %138, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %9, align 8
  %141 = getelementptr inbounds %struct.regcache_rbtree_node, %struct.regcache_rbtree_node* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %9, align 8
  %144 = getelementptr inbounds %struct.regcache_rbtree_node, %struct.regcache_rbtree_node* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load i64*, i64** %17, align 8
  %146 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %9, align 8
  %147 = getelementptr inbounds %struct.regcache_rbtree_node, %struct.regcache_rbtree_node* %146, i32 0, i32 3
  store i64* %145, i64** %147, align 8
  %148 = load %struct.regmap*, %struct.regmap** %8, align 8
  %149 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %9, align 8
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @regcache_rbtree_set_register(%struct.regmap* %148, %struct.regcache_rbtree_node* %149, i32 %150, i32 %151)
  store i32 0, i32* %7, align 4
  br label %153

153:                                              ; preds = %135, %81, %56
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local i8* @krealloc(i64*, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @bitmap_shift_left(i64*, i64*, i32, i32) #1

declare dso_local i32 @regcache_rbtree_set_register(%struct.regmap*, %struct.regcache_rbtree_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
