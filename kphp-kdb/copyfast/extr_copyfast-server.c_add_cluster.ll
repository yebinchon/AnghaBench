; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_add_cluster.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_add_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"adding cluster with id = %lld\0A\00", align 1
@CLUSTER_MASK = common dso_local global i64 0, align 8
@clusters = common dso_local global i64* null, align 8
@clusters_num = common dso_local global i64 0, align 8
@cluster_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_cluster(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @CLUSTER_MASK, align 8
  %5 = and i64 %3, %4
  %6 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @CLUSTER_MASK, align 8
  %9 = and i64 %7, %8
  %10 = load i64*, i64** @clusters, align 8
  %11 = load i64, i64* @clusters_num, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* @clusters_num, align 8
  %13 = getelementptr inbounds i64, i64* %10, i64 %11
  store i64 %9, i64* %13, align 8
  %14 = load i32, i32* @cluster_tree, align 4
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @CLUSTER_MASK, align 8
  %17 = and i64 %15, %16
  %18 = call i32 (...) @lrand48()
  %19 = load i64, i64* @clusters_num, align 8
  %20 = sub nsw i64 %19, 1
  %21 = call i32 @tree_insert(i32 %14, i64 %17, i32 %18, i64 %20)
  store i32 %21, i32* @cluster_tree, align 4
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i64) #1

declare dso_local i32 @tree_insert(i32, i64, i32, i64) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
