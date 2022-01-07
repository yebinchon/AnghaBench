; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_bsearch_midx.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_bsearch_midx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }
%struct.multi_pack_index = type { i32, i32 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bsearch_midx(%struct.object_id* %0, %struct.multi_pack_index* %1, i32* %2) #0 {
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.multi_pack_index*, align 8
  %6 = alloca i32*, align 8
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store %struct.multi_pack_index* %1, %struct.multi_pack_index** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.object_id*, %struct.object_id** %4, align 8
  %8 = getelementptr inbounds %struct.object_id, %struct.object_id* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.multi_pack_index*, %struct.multi_pack_index** %5, align 8
  %11 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.multi_pack_index*, %struct.multi_pack_index** %5, align 8
  %14 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @bsearch_hash(i32 %9, i32 %12, i32 %15, i32 %18, i32* %19)
  ret i32 %20
}

declare dso_local i32 @bsearch_hash(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
