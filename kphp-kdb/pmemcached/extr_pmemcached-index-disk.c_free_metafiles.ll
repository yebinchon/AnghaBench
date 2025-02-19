; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_free_metafiles.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_free_metafiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@allocated_metafile_bytes = common dso_local global double 0.000000e+00, align 8
@memory_for_metafiles = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_metafiles() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %2 = load double, double* @allocated_metafile_bytes, align 8
  %3 = load double, double* @memory_for_metafiles, align 8
  %4 = fmul double 9.000000e-01, %3
  %5 = fcmp ogt double %2, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = call i32 (...) @metafile_unload_LRU()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  br label %11

10:                                               ; preds = %6
  br label %1

11:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @metafile_unload_LRU(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
