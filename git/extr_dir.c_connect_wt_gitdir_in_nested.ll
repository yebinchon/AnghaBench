; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_connect_wt_gitdir_in_nested.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_connect_wt_gitdir_in_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32 }
%struct.submodule = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c"index file corrupt in repo %s\00", align 1
@null_oid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s/modules/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @connect_wt_gitdir_in_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect_wt_gitdir_in_nested(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca %struct.submodule*, align 8
  %10 = alloca %struct.cache_entry*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %12 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @repo_init(%struct.repository* %6, i8* %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %120

18:                                               ; preds = %2
  %19 = call i64 @repo_read_index(%struct.repository* %6)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.repository, %struct.repository* %6, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @die(i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %21, %18
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %113, %26
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds %struct.repository, %struct.repository* %6, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %116

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.repository, %struct.repository* %6, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.cache_entry**, %struct.cache_entry*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %38, i64 %40
  %42 = load %struct.cache_entry*, %struct.cache_entry** %41, align 8
  store %struct.cache_entry* %42, %struct.cache_entry** %10, align 8
  %43 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %44 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @S_ISGITLINK(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %34
  br label %113

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %78, %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  %53 = getelementptr inbounds %struct.repository, %struct.repository* %6, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %50
  %59 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %60 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.repository, %struct.repository* %6, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load %struct.cache_entry**, %struct.cache_entry*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %65, i64 %68
  %70 = load %struct.cache_entry*, %struct.cache_entry** %69, align 8
  %71 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @strcmp(i32 %61, i32 %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %58, %50
  %77 = phi i1 [ false, %50 ], [ %75, %58 ]
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %50

81:                                               ; preds = %76
  %82 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %83 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.submodule* @submodule_from_path(%struct.repository* %6, i32* @null_oid, i32 %84)
  store %struct.submodule* %85, %struct.submodule** %9, align 8
  %86 = load %struct.submodule*, %struct.submodule** %9, align 8
  %87 = icmp ne %struct.submodule* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %90 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @is_submodule_active(%struct.repository* %6, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88, %81
  br label %113

95:                                               ; preds = %88
  %96 = call i32 @strbuf_reset(%struct.strbuf* %7)
  %97 = call i32 @strbuf_reset(%struct.strbuf* %8)
  %98 = load i8*, i8** %3, align 8
  %99 = load %struct.submodule*, %struct.submodule** %9, align 8
  %100 = getelementptr inbounds %struct.submodule, %struct.submodule* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %98, i32 %101)
  %103 = load i8*, i8** %4, align 8
  %104 = load %struct.submodule*, %struct.submodule** %9, align 8
  %105 = getelementptr inbounds %struct.submodule, %struct.submodule* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %103, i32 %106)
  %108 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @connect_work_tree_and_git_dir(i32 %109, i32 %111, i32 1)
  br label %113

113:                                              ; preds = %95, %94, %48
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %27

116:                                              ; preds = %27
  %117 = call i32 @strbuf_release(%struct.strbuf* %7)
  %118 = call i32 @strbuf_release(%struct.strbuf* %8)
  %119 = call i32 @repo_clear(%struct.repository* %6)
  br label %120

120:                                              ; preds = %116, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @repo_init(%struct.repository*, i8*, i8*) #2

declare dso_local i64 @repo_read_index(%struct.repository*) #2

declare dso_local i32 @die(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @S_ISGITLINK(i32) #2

declare dso_local i32 @strcmp(i32, i32) #2

declare dso_local %struct.submodule* @submodule_from_path(%struct.repository*, i32*, i32) #2

declare dso_local i32 @is_submodule_active(%struct.repository*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i32) #2

declare dso_local i32 @connect_work_tree_and_git_dir(i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @repo_clear(%struct.repository*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
