; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_verify_uptodate_sparse.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_verify_uptodate_sparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.unpack_trees_options = type { i32 }

@ERROR_SPARSE_NOT_UPTODATE_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, %struct.unpack_trees_options*)* @verify_uptodate_sparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_uptodate_sparse(%struct.cache_entry* %0, %struct.unpack_trees_options* %1) #0 {
  %3 = alloca %struct.cache_entry*, align 8
  %4 = alloca %struct.unpack_trees_options*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %3, align 8
  store %struct.unpack_trees_options* %1, %struct.unpack_trees_options** %4, align 8
  %5 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %6 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %7 = load i32, i32* @ERROR_SPARSE_NOT_UPTODATE_FILE, align 4
  %8 = call i32 @verify_uptodate_1(%struct.cache_entry* %5, %struct.unpack_trees_options* %6, i32 %7)
  ret i32 %8
}

declare dso_local i32 @verify_uptodate_1(%struct.cache_entry*, %struct.unpack_trees_options*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
