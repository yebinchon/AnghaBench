; ModuleID = '/home/carl/AnghaBench/git/extr_ll-merge.c_ll_union_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_ll-merge.c_ll_union_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_merge_driver = type { i32 }
%struct.ll_merge_options = type { i32 }

@XDL_MERGE_FAVOR_UNION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ll_merge_driver*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, %struct.ll_merge_options*, i32)* @ll_union_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_union_merge(%struct.ll_merge_driver* %0, i32* %1, i8* %2, i32* %3, i8* %4, i32* %5, i8* %6, i32* %7, i8* %8, %struct.ll_merge_options* %9, i32 %10) #0 {
  %12 = alloca %struct.ll_merge_driver*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.ll_merge_options*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.ll_merge_options, align 4
  store %struct.ll_merge_driver* %0, %struct.ll_merge_driver** %12, align 8
  store i32* %1, i32** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32* %3, i32** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32* %5, i32** %17, align 8
  store i8* %6, i8** %18, align 8
  store i32* %7, i32** %19, align 8
  store i8* %8, i8** %20, align 8
  store %struct.ll_merge_options* %9, %struct.ll_merge_options** %21, align 8
  store i32 %10, i32* %22, align 4
  %24 = load %struct.ll_merge_options*, %struct.ll_merge_options** %21, align 8
  %25 = call i32 @assert(%struct.ll_merge_options* %24)
  %26 = load %struct.ll_merge_options*, %struct.ll_merge_options** %21, align 8
  %27 = bitcast %struct.ll_merge_options* %23 to i8*
  %28 = bitcast %struct.ll_merge_options* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load i32, i32* @XDL_MERGE_FAVOR_UNION, align 4
  %30 = getelementptr inbounds %struct.ll_merge_options, %struct.ll_merge_options* %23, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %12, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load i32*, i32** %17, align 8
  %36 = load i32*, i32** %19, align 8
  %37 = load i32, i32* %22, align 4
  %38 = call i32 @ll_xdl_merge(%struct.ll_merge_driver* %31, i32* %32, i8* %33, i32* %34, i32* null, i32* %35, i32* null, i32* %36, i32* null, %struct.ll_merge_options* %23, i32 %37)
  ret i32 %38
}

declare dso_local i32 @assert(%struct.ll_merge_options*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ll_xdl_merge(%struct.ll_merge_driver*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.ll_merge_options*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
