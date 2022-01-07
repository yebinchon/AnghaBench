; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_index_iterator_next.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_index_iterator_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@iterator_metafile_number = common dso_local global i64 0, align 8
@metafile_number = common dso_local global i64 0, align 8
@iterator_metafile_position = common dso_local global i64 0, align 8
@metafiles = common dso_local global %struct.TYPE_4__* null, align 8
@index_iterator = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @index_iterator_next() #0 {
  br label %1

1:                                                ; preds = %17, %0
  %2 = load i64, i64* @iterator_metafile_number, align 8
  %3 = load i64, i64* @metafile_number, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load i64, i64* @iterator_metafile_position, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @metafiles, align 8
  %8 = load i64, i64* @iterator_metafile_number, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %6, %13
  br label %15

15:                                               ; preds = %5, %1
  %16 = phi i1 [ false, %1 ], [ %14, %5 ]
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = call i32 (...) @index_iterator_next_meta()
  br label %1

19:                                               ; preds = %15
  %20 = load i64, i64* @iterator_metafile_number, align 8
  %21 = load i64, i64* @metafile_number, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i64, i64* @iterator_metafile_position, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @metafiles, align 8
  %26 = load i64, i64* @iterator_metafile_number, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %24, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load i64, i64* @iterator_metafile_number, align 8
  %35 = load i64, i64* @iterator_metafile_position, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* @iterator_metafile_position, align 8
  %37 = trunc i64 %35 to i32
  %38 = call i64 @metafile_get_entry(i64 %34, i32 %37)
  store i64 %38, i64* @index_iterator, align 8
  br label %40

39:                                               ; preds = %23, %19
  store i64 0, i64* @index_iterator, align 8
  br label %40

40:                                               ; preds = %39, %33
  ret void
}

declare dso_local i32 @index_iterator_next_meta(...) #1

declare dso_local i64 @metafile_get_entry(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
