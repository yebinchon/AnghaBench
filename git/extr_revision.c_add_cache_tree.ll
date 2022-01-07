; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_add_cache_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_add_cache_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_tree = type { i64, i32, %struct.cache_tree_sub**, i32 }
%struct.cache_tree_sub = type { %struct.cache_tree*, i32 }
%struct.rev_info = type { i32 }
%struct.strbuf = type { i64, i32 }
%struct.tree = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_tree*, %struct.rev_info*, %struct.strbuf*, i32)* @add_cache_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_cache_tree(%struct.cache_tree* %0, %struct.rev_info* %1, %struct.strbuf* %2, i32 %3) #0 {
  %5 = alloca %struct.cache_tree*, align 8
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tree*, align 8
  %12 = alloca %struct.cache_tree_sub*, align 8
  store %struct.cache_tree* %0, %struct.cache_tree** %5, align 8
  store %struct.rev_info* %1, %struct.rev_info** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %17 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %4
  %21 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %22 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %25 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %24, i32 0, i32 3
  %26 = call %struct.tree* @lookup_tree(i32 %23, i32* %25)
  store %struct.tree* %26, %struct.tree** %11, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.tree*, %struct.tree** %11, align 8
  %29 = getelementptr inbounds %struct.tree, %struct.tree* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 4
  %33 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %34 = load %struct.tree*, %struct.tree** %11, align 8
  %35 = getelementptr inbounds %struct.tree, %struct.tree* %34, i32 0, i32 0
  %36 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @add_pending_object_with_path(%struct.rev_info* %33, %struct.TYPE_2__* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 16384, i32 %38)
  br label %40

40:                                               ; preds = %20, %4
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %73, %40
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %44 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %41
  %48 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %49 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %48, i32 0, i32 2
  %50 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.cache_tree_sub*, %struct.cache_tree_sub** %50, i64 %52
  %54 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %53, align 8
  store %struct.cache_tree_sub* %54, %struct.cache_tree_sub** %12, align 8
  %55 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %60 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %12, align 8
  %61 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @strbuf_addf(%struct.strbuf* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %59, i32 %62)
  %64 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %12, align 8
  %65 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %64, i32 0, i32 0
  %66 = load %struct.cache_tree*, %struct.cache_tree** %65, align 8
  %67 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %68 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %69 = load i32, i32* %8, align 4
  call void @add_cache_tree(%struct.cache_tree* %66, %struct.rev_info* %67, %struct.strbuf* %68, i32 %69)
  %70 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @strbuf_setlen(%struct.strbuf* %70, i64 %71)
  br label %73

73:                                               ; preds = %47
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %41

76:                                               ; preds = %41
  ret void
}

declare dso_local %struct.tree* @lookup_tree(i32, i32*) #1

declare dso_local i32 @add_pending_object_with_path(%struct.rev_info*, %struct.TYPE_2__*, i8*, i32, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i32) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
