; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_try_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_try_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.rerere_id = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [9 x i8] c"preimage\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"postimage\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.rerere_id*, i8*, %struct.TYPE_7__*, i32*)* @try_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_merge(%struct.index_state* %0, %struct.rerere_id* %1, i8* %2, %struct.TYPE_7__* %3, i32* %4) #0 {
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca %struct.rerere_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  store %struct.index_state* %0, %struct.index_state** %6, align 8
  store %struct.rerere_id* %1, %struct.rerere_id** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = bitcast %struct.TYPE_7__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = load %struct.rerere_id*, %struct.rerere_id** %7, align 8
  %17 = call i32 @rerere_path(%struct.rerere_id* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = call i64 @read_mmfile(%struct.TYPE_7__* %12, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %5
  %21 = load %struct.rerere_id*, %struct.rerere_id** %7, align 8
  %22 = call i32 @rerere_path(%struct.rerere_id* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i64 @read_mmfile(%struct.TYPE_7__* %13, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %5
  store i32 1, i32* %11, align 4
  br label %32

26:                                               ; preds = %20
  %27 = load i32*, i32** %10, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = load %struct.index_state*, %struct.index_state** %6, align 8
  %31 = call i32 @ll_merge(i32* %27, i8* %28, %struct.TYPE_7__* %12, i32* null, %struct.TYPE_7__* %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_7__* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.index_state* %30, i32* null)
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %26, %25
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @free(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @free(i32 %37)
  %39 = load i32, i32* %11, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @read_mmfile(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @rerere_path(%struct.rerere_id*, i8*) #2

declare dso_local i32 @ll_merge(i32*, i8*, %struct.TYPE_7__*, i32*, %struct.TYPE_7__*, i8*, %struct.TYPE_7__*, i8*, %struct.index_state*, i32*) #2

declare dso_local i32 @free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
