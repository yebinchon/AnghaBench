; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_index_iterator_next_meta.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_index_iterator_next_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iterator_metafile_number = common dso_local global i64 0, align 8
@iterator_metafile_position = common dso_local global i64 0, align 8
@metafile_number = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @index_iterator_next_meta() #0 {
  %1 = load i64, i64* @iterator_metafile_number, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @iterator_metafile_number, align 8
  store i64 0, i64* @iterator_metafile_position, align 8
  %3 = load i64, i64* @iterator_metafile_number, align 8
  %4 = load i64, i64* @metafile_number, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i64, i64* @iterator_metafile_number, align 8
  %8 = call i32 @metafile_load(i64 %7)
  br label %9

9:                                                ; preds = %6, %0
  ret void
}

declare dso_local i32 @metafile_load(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
