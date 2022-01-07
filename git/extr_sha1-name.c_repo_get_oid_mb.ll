; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_repo_get_oid_mb.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_repo_get_oid_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { i32 }
%struct.commit_list = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.strbuf = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @repo_get_oid_mb(%struct.repository* %0, i8* %1, %struct.object_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.commit*, align 8
  %10 = alloca %struct.commit_list*, align 8
  %11 = alloca %struct.object_id, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.strbuf, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @strstr(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.repository*, %struct.repository** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.object_id*, %struct.object_id** %7, align 8
  %23 = call i32 @repo_get_oid(%struct.repository* %20, i8* %21, %struct.object_id* %22)
  store i32 %23, i32* %4, align 4
  br label %110

24:                                               ; preds = %3
  %25 = load i8*, i8** %12, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.repository*, %struct.repository** %5, align 8
  %30 = call i32 @repo_get_oid(%struct.repository* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.object_id* %11)
  store i32 %30, i32* %13, align 4
  br label %52

31:                                               ; preds = %24
  %32 = load i8*, i8** %12, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @strbuf_init(%struct.strbuf* %14, i32 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @strbuf_add(%struct.strbuf* %14, i8* %39, i32 %45)
  %47 = load %struct.repository*, %struct.repository** %5, align 8
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @repo_get_oid_committish(%struct.repository* %47, i8* %49, %struct.object_id* %11)
  store i32 %50, i32* %13, align 4
  %51 = call i32 @strbuf_release(%struct.strbuf* %14)
  br label %52

52:                                               ; preds = %31, %28
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %4, align 4
  br label %110

57:                                               ; preds = %52
  %58 = load %struct.repository*, %struct.repository** %5, align 8
  %59 = call %struct.commit* @lookup_commit_reference_gently(%struct.repository* %58, %struct.object_id* %11, i32 0)
  store %struct.commit* %59, %struct.commit** %8, align 8
  %60 = load %struct.commit*, %struct.commit** %8, align 8
  %61 = icmp ne %struct.commit* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 -1, i32* %4, align 4
  br label %110

63:                                               ; preds = %57
  %64 = load %struct.repository*, %struct.repository** %5, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i8*, i8** %12, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 3
  br label %74

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %70
  %75 = phi i8* [ %72, %70 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %73 ]
  %76 = call i32 @repo_get_oid_committish(%struct.repository* %64, i8* %75, %struct.object_id* %11)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 -1, i32* %4, align 4
  br label %110

79:                                               ; preds = %74
  %80 = load %struct.repository*, %struct.repository** %5, align 8
  %81 = call %struct.commit* @lookup_commit_reference_gently(%struct.repository* %80, %struct.object_id* %11, i32 0)
  store %struct.commit* %81, %struct.commit** %9, align 8
  %82 = load %struct.commit*, %struct.commit** %9, align 8
  %83 = icmp ne %struct.commit* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  store i32 -1, i32* %4, align 4
  br label %110

85:                                               ; preds = %79
  %86 = load %struct.repository*, %struct.repository** %5, align 8
  %87 = load %struct.commit*, %struct.commit** %8, align 8
  %88 = load %struct.commit*, %struct.commit** %9, align 8
  %89 = call %struct.commit_list* @repo_get_merge_bases(%struct.repository* %86, %struct.commit* %87, %struct.commit* %88)
  store %struct.commit_list* %89, %struct.commit_list** %10, align 8
  %90 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %91 = icmp ne %struct.commit_list* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %94 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92, %85
  store i32 -1, i32* %13, align 4
  br label %106

98:                                               ; preds = %92
  store i32 0, i32* %13, align 4
  %99 = load %struct.object_id*, %struct.object_id** %7, align 8
  %100 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %101 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = call i32 @oidcpy(%struct.object_id* %99, i32* %104)
  br label %106

106:                                              ; preds = %98, %97
  %107 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %108 = call i32 @free_commit_list(%struct.commit_list* %107)
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %106, %84, %78, %62, %55, %19
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @repo_get_oid(%struct.repository*, i8*, %struct.object_id*) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @repo_get_oid_committish(%struct.repository*, i8*, %struct.object_id*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local %struct.commit* @lookup_commit_reference_gently(%struct.repository*, %struct.object_id*, i32) #1

declare dso_local %struct.commit_list* @repo_get_merge_bases(%struct.repository*, %struct.commit*, %struct.commit*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
