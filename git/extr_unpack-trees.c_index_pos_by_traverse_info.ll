; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_index_pos_by_traverse_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_index_pos_by_traverse_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.name_entry = type { i32, i32 }
%struct.traverse_info = type { %struct.unpack_trees_options* }
%struct.unpack_trees_options = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [50 x i8] c"This is a directory and should not exist in index\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"pos must point at the first entry in this directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.name_entry*, %struct.traverse_info*)* @index_pos_by_traverse_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_pos_by_traverse_info(%struct.name_entry* %0, %struct.traverse_info* %1) #0 {
  %3 = alloca %struct.name_entry*, align 8
  %4 = alloca %struct.traverse_info*, align 8
  %5 = alloca %struct.unpack_trees_options*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i32, align 4
  store %struct.name_entry* %0, %struct.name_entry** %3, align 8
  store %struct.traverse_info* %1, %struct.traverse_info** %4, align 8
  %8 = load %struct.traverse_info*, %struct.traverse_info** %4, align 8
  %9 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %8, i32 0, i32 0
  %10 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %9, align 8
  store %struct.unpack_trees_options* %10, %struct.unpack_trees_options** %5, align 8
  %11 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = load %struct.traverse_info*, %struct.traverse_info** %4, align 8
  %13 = load %struct.name_entry*, %struct.name_entry** %3, align 8
  %14 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.name_entry*, %struct.name_entry** %3, align 8
  %17 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strbuf_make_traverse_path(%struct.strbuf* %6, %struct.traverse_info* %12, i32 %15, i32 %18)
  %20 = call i32 @strbuf_addch(%struct.strbuf* %6, i8 signext 47)
  %21 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %22 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @index_name_pos(%struct.TYPE_4__* %23, i32 %25, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = call i32 @BUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %2
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 0, %34
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %38 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %41, i64 %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @starts_with(i32 %47, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %33
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %57 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %60, i64 %63
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @starts_with(i32 %67, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %55, %33
  %73 = call i32 @BUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %55, %52
  %75 = call i32 @strbuf_release(%struct.strbuf* %6)
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_make_traverse_path(%struct.strbuf*, %struct.traverse_info*, i32, i32) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @index_name_pos(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i64 @starts_with(i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
