; ModuleID = '/home/carl/AnghaBench/git/refs/extr_ref-cache.c_cache_ref_iterator_advance.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_ref-cache.c_cache_ref_iterator_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32 }
%struct.cache_ref_iterator = type { i32, %struct.TYPE_6__, %struct.cache_ref_iterator_level*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.cache_ref_iterator_level = type { i32, i64, %struct.ref_dir* }
%struct.ref_dir = type { i32, %struct.ref_entry** }
%struct.ref_entry = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PREFIX_WITHIN_DIR = common dso_local global i64 0, align 8
@PREFIX_EXCLUDES_DIR = common dso_local global i32 0, align 4
@REF_DIR = common dso_local global i32 0, align 4
@ITER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_iterator*)* @cache_ref_iterator_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_ref_iterator_advance(%struct.ref_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_iterator*, align 8
  %4 = alloca %struct.cache_ref_iterator*, align 8
  %5 = alloca %struct.cache_ref_iterator_level*, align 8
  %6 = alloca %struct.ref_dir*, align 8
  %7 = alloca %struct.ref_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.ref_iterator* %0, %struct.ref_iterator** %3, align 8
  %9 = load %struct.ref_iterator*, %struct.ref_iterator** %3, align 8
  %10 = bitcast %struct.ref_iterator* %9 to %struct.cache_ref_iterator*
  store %struct.cache_ref_iterator* %10, %struct.cache_ref_iterator** %4, align 8
  br label %11

11:                                               ; preds = %1, %51, %78, %144
  %12 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %4, align 8
  %13 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %12, i32 0, i32 2
  %14 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %13, align 8
  %15 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %4, align 8
  %16 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cache_ref_iterator_level, %struct.cache_ref_iterator_level* %14, i64 %19
  store %struct.cache_ref_iterator_level* %20, %struct.cache_ref_iterator_level** %5, align 8
  %21 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %5, align 8
  %22 = getelementptr inbounds %struct.cache_ref_iterator_level, %struct.cache_ref_iterator_level* %21, i32 0, i32 2
  %23 = load %struct.ref_dir*, %struct.ref_dir** %22, align 8
  store %struct.ref_dir* %23, %struct.ref_dir** %6, align 8
  %24 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %5, align 8
  %25 = getelementptr inbounds %struct.cache_ref_iterator_level, %struct.cache_ref_iterator_level* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %11
  %29 = load %struct.ref_dir*, %struct.ref_dir** %6, align 8
  %30 = call i32 @sort_ref_dir(%struct.ref_dir* %29)
  br label %31

31:                                               ; preds = %28, %11
  %32 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %5, align 8
  %33 = getelementptr inbounds %struct.cache_ref_iterator_level, %struct.cache_ref_iterator_level* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %5, align 8
  %37 = getelementptr inbounds %struct.cache_ref_iterator_level, %struct.cache_ref_iterator_level* %36, i32 0, i32 2
  %38 = load %struct.ref_dir*, %struct.ref_dir** %37, align 8
  %39 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %35, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %31
  %43 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %4, align 8
  %44 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.ref_iterator*, %struct.ref_iterator** %3, align 8
  %50 = call i32 @ref_iterator_abort(%struct.ref_iterator* %49)
  store i32 %50, i32* %2, align 4
  br label %145

51:                                               ; preds = %42
  br label %11

52:                                               ; preds = %31
  %53 = load %struct.ref_dir*, %struct.ref_dir** %6, align 8
  %54 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %53, i32 0, i32 1
  %55 = load %struct.ref_entry**, %struct.ref_entry*** %54, align 8
  %56 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %5, align 8
  %57 = getelementptr inbounds %struct.cache_ref_iterator_level, %struct.cache_ref_iterator_level* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ref_entry*, %struct.ref_entry** %55, i64 %59
  %61 = load %struct.ref_entry*, %struct.ref_entry** %60, align 8
  store %struct.ref_entry* %61, %struct.ref_entry** %7, align 8
  %62 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %5, align 8
  %63 = getelementptr inbounds %struct.cache_ref_iterator_level, %struct.cache_ref_iterator_level* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PREFIX_WITHIN_DIR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %52
  %68 = load %struct.ref_entry*, %struct.ref_entry** %7, align 8
  %69 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %4, align 8
  %72 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @overlaps_prefix(i32 %70, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @PREFIX_EXCLUDES_DIR, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %11

79:                                               ; preds = %67
  br label %85

80:                                               ; preds = %52
  %81 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %5, align 8
  %82 = getelementptr inbounds %struct.cache_ref_iterator_level, %struct.cache_ref_iterator_level* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %80, %79
  %86 = load %struct.ref_entry*, %struct.ref_entry** %7, align 8
  %87 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @REF_DIR, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %123

92:                                               ; preds = %85
  %93 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %4, align 8
  %94 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %93, i32 0, i32 2
  %95 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %94, align 8
  %96 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %4, align 8
  %97 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  %100 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %4, align 8
  %101 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ALLOC_GROW(%struct.cache_ref_iterator_level* %95, i32 %99, i32 %102)
  %104 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %4, align 8
  %105 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %104, i32 0, i32 2
  %106 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %105, align 8
  %107 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %4, align 8
  %108 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds %struct.cache_ref_iterator_level, %struct.cache_ref_iterator_level* %106, i64 %111
  store %struct.cache_ref_iterator_level* %112, %struct.cache_ref_iterator_level** %5, align 8
  %113 = load %struct.ref_entry*, %struct.ref_entry** %7, align 8
  %114 = call %struct.ref_dir* @get_ref_dir(%struct.ref_entry* %113)
  %115 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %5, align 8
  %116 = getelementptr inbounds %struct.cache_ref_iterator_level, %struct.cache_ref_iterator_level* %115, i32 0, i32 2
  store %struct.ref_dir* %114, %struct.ref_dir** %116, align 8
  %117 = load i32, i32* %8, align 4
  %118 = zext i32 %117 to i64
  %119 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %5, align 8
  %120 = getelementptr inbounds %struct.cache_ref_iterator_level, %struct.cache_ref_iterator_level* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  %121 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %5, align 8
  %122 = getelementptr inbounds %struct.cache_ref_iterator_level, %struct.cache_ref_iterator_level* %121, i32 0, i32 0
  store i32 -1, i32* %122, align 8
  br label %144

123:                                              ; preds = %85
  %124 = load %struct.ref_entry*, %struct.ref_entry** %7, align 8
  %125 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %4, align 8
  %128 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  store i32 %126, i32* %129, align 8
  %130 = load %struct.ref_entry*, %struct.ref_entry** %7, align 8
  %131 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %4, align 8
  %135 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  store i32* %133, i32** %136, align 8
  %137 = load %struct.ref_entry*, %struct.ref_entry** %7, align 8
  %138 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %4, align 8
  %141 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load i32, i32* @ITER_OK, align 4
  store i32 %143, i32* %2, align 4
  br label %145

144:                                              ; preds = %92
  br label %11

145:                                              ; preds = %123, %48
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @sort_ref_dir(%struct.ref_dir*) #1

declare dso_local i32 @ref_iterator_abort(%struct.ref_iterator*) #1

declare dso_local i32 @overlaps_prefix(i32, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.cache_ref_iterator_level*, i32, i32) #1

declare dso_local %struct.ref_dir* @get_ref_dir(%struct.ref_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
