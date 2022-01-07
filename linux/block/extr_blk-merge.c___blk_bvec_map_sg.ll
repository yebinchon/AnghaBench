; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c___blk_bvec_map_sg.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c___blk_bvec_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.bio_vec = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.scatterlist*, %struct.scatterlist**)* @__blk_bvec_map_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__blk_bvec_map_sg(i64 %0, i32 %1, %struct.scatterlist* %2, %struct.scatterlist** %3) #0 {
  %5 = alloca %struct.bio_vec, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist**, align 8
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %0, i64* %9, align 4
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %1, i32* %10, align 4
  %11 = bitcast %struct.bio_vec* %5 to i8*
  %12 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 12, i1 false)
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store %struct.scatterlist** %3, %struct.scatterlist*** %8, align 8
  %13 = load %struct.scatterlist**, %struct.scatterlist*** %8, align 8
  %14 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %15 = call %struct.scatterlist* @blk_next_sg(%struct.scatterlist** %13, %struct.scatterlist* %14)
  %16 = load %struct.scatterlist**, %struct.scatterlist*** %8, align 8
  store %struct.scatterlist* %15, %struct.scatterlist** %16, align 8
  %17 = load %struct.scatterlist**, %struct.scatterlist*** %8, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %19 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %5, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %5, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sg_set_page(%struct.scatterlist* %18, i32 %20, i32 %22, i32 %24)
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.scatterlist* @blk_next_sg(%struct.scatterlist**, %struct.scatterlist*) #2

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
