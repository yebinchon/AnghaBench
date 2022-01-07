; ModuleID = '/home/carl/AnghaBench/git/extr_range-diff.c_find_exact_matches.c'
source_filename = "/home/carl/AnghaBench/git/extr_range-diff.c_find_exact_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.patch_util* }
%struct.patch_util = type { i32, i32, i64, i32, i64, i64 }
%struct.hashmap = type { i32 }

@patch_util_cmp = common dso_local global i64 0, align 8
@e = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"already assigned!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*, %struct.string_list*)* @find_exact_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_exact_matches(%struct.string_list* %0, %struct.string_list* %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca %struct.hashmap, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.patch_util*, align 8
  %8 = alloca %struct.patch_util*, align 8
  %9 = alloca %struct.patch_util*, align 8
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  store %struct.string_list* %1, %struct.string_list** %4, align 8
  %10 = load i64, i64* @patch_util_cmp, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @hashmap_init(%struct.hashmap* %5, i32 %11, i32* null, i32 0)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %60, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.string_list*, %struct.string_list** %3, align 8
  %16 = getelementptr inbounds %struct.string_list, %struct.string_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %63

19:                                               ; preds = %13
  %20 = load %struct.string_list*, %struct.string_list** %3, align 8
  %21 = getelementptr inbounds %struct.string_list, %struct.string_list* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.patch_util*, %struct.patch_util** %26, align 8
  store %struct.patch_util* %27, %struct.patch_util** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.patch_util*, %struct.patch_util** %7, align 8
  %30 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.string_list*, %struct.string_list** %3, align 8
  %32 = getelementptr inbounds %struct.string_list, %struct.string_list* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.patch_util*, %struct.patch_util** %7, align 8
  %40 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %39, i32 0, i32 5
  store i64 %38, i64* %40, align 8
  %41 = load %struct.patch_util*, %struct.patch_util** %7, align 8
  %42 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.patch_util*, %struct.patch_util** %7, align 8
  %45 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.patch_util*, %struct.patch_util** %7, align 8
  %49 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.patch_util*, %struct.patch_util** %7, align 8
  %51 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %50, i32 0, i32 3
  %52 = load %struct.patch_util*, %struct.patch_util** %7, align 8
  %53 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @strhash(i64 %54)
  %56 = call i32 @hashmap_entry_init(i32* %51, i32 %55)
  %57 = load %struct.patch_util*, %struct.patch_util** %7, align 8
  %58 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %57, i32 0, i32 3
  %59 = call i32 @hashmap_add(%struct.hashmap* %5, i32* %58)
  br label %60

60:                                               ; preds = %19
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %13

63:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %130, %63
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.string_list*, %struct.string_list** %4, align 8
  %67 = getelementptr inbounds %struct.string_list, %struct.string_list* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %133

70:                                               ; preds = %64
  %71 = load %struct.string_list*, %struct.string_list** %4, align 8
  %72 = getelementptr inbounds %struct.string_list, %struct.string_list* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load %struct.patch_util*, %struct.patch_util** %77, align 8
  store %struct.patch_util* %78, %struct.patch_util** %8, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.patch_util*, %struct.patch_util** %8, align 8
  %81 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.string_list*, %struct.string_list** %4, align 8
  %83 = getelementptr inbounds %struct.string_list, %struct.string_list* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.patch_util*, %struct.patch_util** %8, align 8
  %91 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %90, i32 0, i32 5
  store i64 %89, i64* %91, align 8
  %92 = load %struct.patch_util*, %struct.patch_util** %8, align 8
  %93 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.patch_util*, %struct.patch_util** %8, align 8
  %96 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = load %struct.patch_util*, %struct.patch_util** %8, align 8
  %100 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  %101 = load %struct.patch_util*, %struct.patch_util** %8, align 8
  %102 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %101, i32 0, i32 3
  %103 = load %struct.patch_util*, %struct.patch_util** %8, align 8
  %104 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @strhash(i64 %105)
  %107 = call i32 @hashmap_entry_init(i32* %102, i32 %106)
  %108 = load %struct.patch_util*, %struct.patch_util** %8, align 8
  %109 = load i32, i32* @e, align 4
  %110 = call %struct.patch_util* @hashmap_remove_entry(%struct.hashmap* %5, %struct.patch_util* %108, i32 %109, i32* null)
  store %struct.patch_util* %110, %struct.patch_util** %9, align 8
  %111 = load %struct.patch_util*, %struct.patch_util** %9, align 8
  %112 = icmp ne %struct.patch_util* %111, null
  br i1 %112, label %113, label %129

113:                                              ; preds = %70
  %114 = load %struct.patch_util*, %struct.patch_util** %9, align 8
  %115 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = call i32 @BUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %113
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.patch_util*, %struct.patch_util** %9, align 8
  %123 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.patch_util*, %struct.patch_util** %9, align 8
  %125 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.patch_util*, %struct.patch_util** %8, align 8
  %128 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %120, %70
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %64

133:                                              ; preds = %64
  %134 = call i32 @hashmap_free(%struct.hashmap* %5)
  ret void
}

declare dso_local i32 @hashmap_init(%struct.hashmap*, i32, i32*, i32) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @strhash(i64) #1

declare dso_local i32 @hashmap_add(%struct.hashmap*, i32*) #1

declare dso_local %struct.patch_util* @hashmap_remove_entry(%struct.hashmap*, %struct.patch_util*, i32, i32*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @hashmap_free(%struct.hashmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
