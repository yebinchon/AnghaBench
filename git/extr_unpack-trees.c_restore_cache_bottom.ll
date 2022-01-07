; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_restore_cache_bottom.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_restore_cache_bottom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.traverse_info = type { %struct.unpack_trees_options* }
%struct.unpack_trees_options = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.traverse_info*, i32)* @restore_cache_bottom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_cache_bottom(%struct.traverse_info* %0, i32 %1) #0 {
  %3 = alloca %struct.traverse_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.unpack_trees_options*, align 8
  store %struct.traverse_info* %0, %struct.traverse_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.traverse_info*, %struct.traverse_info** %3, align 8
  %7 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %6, i32 0, i32 0
  %8 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  store %struct.unpack_trees_options* %8, %struct.unpack_trees_options** %5, align 8
  %9 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %10 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %17 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %14, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
