; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects.c_do_traverse.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects.c_do_traverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.traversal_context = type { %struct.TYPE_7__*, i32, i32 (%struct.commit*, i32)* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.commit = type opaque
%struct.commit.0 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.strbuf = type { i32 }
%struct.tree = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@NOT_USER_GIVEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unable to load root tree for commit %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.traversal_context*)* @do_traverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_traverse(%struct.traversal_context* %0) #0 {
  %2 = alloca %struct.traversal_context*, align 8
  %3 = alloca %struct.commit.0*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca %struct.tree*, align 8
  store %struct.traversal_context* %0, %struct.traversal_context** %2, align 8
  %6 = load i32, i32* @PATH_MAX, align 4
  %7 = call i32 @strbuf_init(%struct.strbuf* %4, i32 %6)
  br label %8

8:                                                ; preds = %74, %1
  %9 = load %struct.traversal_context*, %struct.traversal_context** %2, align 8
  %10 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = call %struct.commit.0* @get_revision(%struct.TYPE_7__* %11)
  store %struct.commit.0* %12, %struct.commit.0** %3, align 8
  %13 = icmp ne %struct.commit.0* %12, null
  br i1 %13, label %14, label %75

14:                                               ; preds = %8
  %15 = load %struct.traversal_context*, %struct.traversal_context** %2, align 8
  %16 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %55

22:                                               ; preds = %14
  %23 = load %struct.commit.0*, %struct.commit.0** %3, align 8
  %24 = call %struct.tree* @get_commit_tree(%struct.commit.0* %23)
  %25 = icmp ne %struct.tree* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load %struct.commit.0*, %struct.commit.0** %3, align 8
  %28 = call %struct.tree* @get_commit_tree(%struct.commit.0* %27)
  store %struct.tree* %28, %struct.tree** %5, align 8
  %29 = load i32, i32* @NOT_USER_GIVEN, align 4
  %30 = load %struct.tree*, %struct.tree** %5, align 8
  %31 = getelementptr inbounds %struct.tree, %struct.tree* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 4
  %35 = load %struct.traversal_context*, %struct.traversal_context** %2, align 8
  %36 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load %struct.tree*, %struct.tree** %5, align 8
  %39 = call i32 @add_pending_tree(%struct.TYPE_7__* %37, %struct.tree* %38)
  br label %54

40:                                               ; preds = %22
  %41 = load %struct.commit.0*, %struct.commit.0** %3, align 8
  %42 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.commit.0*, %struct.commit.0** %3, align 8
  %49 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = call i32 @oid_to_hex(i32* %50)
  %52 = call i32 @die(i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %46, %40
  br label %54

54:                                               ; preds = %53, %26
  br label %55

55:                                               ; preds = %54, %21
  %56 = load %struct.traversal_context*, %struct.traversal_context** %2, align 8
  %57 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %56, i32 0, i32 2
  %58 = load i32 (%struct.commit*, i32)*, i32 (%struct.commit*, i32)** %57, align 8
  %59 = load %struct.commit.0*, %struct.commit.0** %3, align 8
  %60 = bitcast %struct.commit.0* %59 to %struct.commit*
  %61 = load %struct.traversal_context*, %struct.traversal_context** %2, align 8
  %62 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 %58(%struct.commit* %60, i32 %63)
  %65 = load %struct.traversal_context*, %struct.traversal_context** %2, align 8
  %66 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %55
  %72 = load %struct.traversal_context*, %struct.traversal_context** %2, align 8
  %73 = call i32 @traverse_trees_and_blobs(%struct.traversal_context* %72, %struct.strbuf* %4)
  br label %74

74:                                               ; preds = %71, %55
  br label %8

75:                                               ; preds = %8
  %76 = load %struct.traversal_context*, %struct.traversal_context** %2, align 8
  %77 = call i32 @traverse_trees_and_blobs(%struct.traversal_context* %76, %struct.strbuf* %4)
  %78 = call i32 @strbuf_release(%struct.strbuf* %4)
  ret void
}

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local %struct.commit.0* @get_revision(%struct.TYPE_7__*) #1

declare dso_local %struct.tree* @get_commit_tree(%struct.commit.0*) #1

declare dso_local i32 @add_pending_tree(%struct.TYPE_7__*, %struct.tree*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @traverse_trees_and_blobs(%struct.traversal_context*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
