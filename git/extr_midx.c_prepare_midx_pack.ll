; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_prepare_midx_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_prepare_midx_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.multi_pack_index = type { i64, %struct.packed_git**, i32, i32*, i32 }
%struct.packed_git = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [37 x i8] c"bad pack-int-id: %u (%u total packs)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s/pack/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_midx_pack(%struct.repository* %0, %struct.multi_pack_index* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.multi_pack_index*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca %struct.packed_git*, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.multi_pack_index* %1, %struct.multi_pack_index** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.multi_pack_index*, %struct.multi_pack_index** %6, align 8
  %13 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %11, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.multi_pack_index*, %struct.multi_pack_index** %6, align 8
  %20 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @die(i32 %17, i64 %18, i64 %21)
  br label %23

23:                                               ; preds = %16, %3
  %24 = load %struct.multi_pack_index*, %struct.multi_pack_index** %6, align 8
  %25 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %24, i32 0, i32 1
  %26 = load %struct.packed_git**, %struct.packed_git*** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.packed_git*, %struct.packed_git** %26, i64 %27
  %29 = load %struct.packed_git*, %struct.packed_git** %28, align 8
  %30 = icmp ne %struct.packed_git* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %74

32:                                               ; preds = %23
  %33 = load %struct.multi_pack_index*, %struct.multi_pack_index** %6, align 8
  %34 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.multi_pack_index*, %struct.multi_pack_index** %6, align 8
  %37 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %41)
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.multi_pack_index*, %struct.multi_pack_index** %6, align 8
  %48 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.packed_git* @add_packed_git(i32 %44, i32 %46, i32 %49)
  store %struct.packed_git* %50, %struct.packed_git** %9, align 8
  %51 = call i32 @strbuf_release(%struct.strbuf* %8)
  %52 = load %struct.packed_git*, %struct.packed_git** %9, align 8
  %53 = icmp ne %struct.packed_git* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %74

55:                                               ; preds = %32
  %56 = load %struct.packed_git*, %struct.packed_git** %9, align 8
  %57 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.packed_git*, %struct.packed_git** %9, align 8
  %59 = load %struct.multi_pack_index*, %struct.multi_pack_index** %6, align 8
  %60 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %59, i32 0, i32 1
  %61 = load %struct.packed_git**, %struct.packed_git*** %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds %struct.packed_git*, %struct.packed_git** %61, i64 %62
  store %struct.packed_git* %58, %struct.packed_git** %63, align 8
  %64 = load %struct.repository*, %struct.repository** %5, align 8
  %65 = load %struct.packed_git*, %struct.packed_git** %9, align 8
  %66 = call i32 @install_packed_git(%struct.repository* %64, %struct.packed_git* %65)
  %67 = load %struct.packed_git*, %struct.packed_git** %9, align 8
  %68 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %67, i32 0, i32 1
  %69 = load %struct.repository*, %struct.repository** %5, align 8
  %70 = getelementptr inbounds %struct.repository, %struct.repository* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @list_add_tail(i32* %68, i32* %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %55, %54, %31
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @die(i32, i64, i64) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i32) #2

declare dso_local %struct.packed_git* @add_packed_git(i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @install_packed_git(%struct.repository*, %struct.packed_git*) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
