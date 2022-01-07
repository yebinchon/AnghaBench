; ModuleID = '/home/carl/AnghaBench/git/extr_notes-utils.c_commit_notes.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-utils.c_commit_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.notes_tree = type { i32*, i32, i32 }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@default_notes_tree = common dso_local global %struct.notes_tree zeroinitializer, align 8
@.str = private unnamed_addr constant [52 x i8] c"Cannot commit uninitialized/unreferenced notes tree\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"notes: \00", align 1
@UPDATE_REFS_DIE_ON_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @commit_notes(%struct.repository* %0, %struct.notes_tree* %1, i8* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.notes_tree*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca %struct.object_id, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.notes_tree* %1, %struct.notes_tree** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %10 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %11 = icmp ne %struct.notes_tree* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store %struct.notes_tree* @default_notes_tree, %struct.notes_tree** %5, align 8
  br label %13

13:                                               ; preds = %12, %3
  %14 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %15 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %20 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %25 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23, %18, %13
  %30 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @die(i32 %30)
  br label %32

32:                                               ; preds = %29, %23
  %33 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %34 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %58

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* %39)
  %41 = call i32 @strbuf_complete_line(%struct.strbuf* %7)
  %42 = load %struct.repository*, %struct.repository** %4, align 8
  %43 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @create_notes_commit(%struct.repository* %42, %struct.notes_tree* %43, i32* null, i32 %45, i32 %47, %struct.object_id* %8)
  %49 = call i32 @strbuf_insert(%struct.strbuf* %7, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %53 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @UPDATE_REFS_DIE_ON_ERR, align 4
  %56 = call i32 @update_ref(i32 %51, i32* %54, %struct.object_id* %8, i32* null, i32 0, i32 %55)
  %57 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %58

58:                                               ; preds = %38, %37
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_complete_line(%struct.strbuf*) #2

declare dso_local i32 @create_notes_commit(%struct.repository*, %struct.notes_tree*, i32*, i32, i32, %struct.object_id*) #2

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i32, i8*, i32) #2

declare dso_local i32 @update_ref(i32, i32*, %struct.object_id*, i32*, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
