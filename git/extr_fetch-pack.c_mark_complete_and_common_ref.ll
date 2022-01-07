; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_mark_complete_and_common_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_mark_complete_and_common_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_negotiator = type { i32 (%struct.fetch_negotiator*, %struct.commit*)* }
%struct.commit = type opaque
%struct.fetch_pack_args = type { i32 }
%struct.ref = type { i32, %struct.ref* }
%struct.object = type { i64, i32 }
%struct.commit.0 = type { i64 }

@save_commit_buffer = common dso_local global i32 0, align 4
@OBJECT_INFO_QUICK = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8
@mark_complete_oid = common dso_local global i32 0, align 4
@mark_alternate_complete = common dso_local global i32 0, align 4
@complete = common dso_local global i32 0, align 4
@COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fetch_negotiator*, %struct.fetch_pack_args*, %struct.ref**)* @mark_complete_and_common_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_complete_and_common_ref(%struct.fetch_negotiator* %0, %struct.fetch_pack_args* %1, %struct.ref** %2) #0 {
  %4 = alloca %struct.fetch_negotiator*, align 8
  %5 = alloca %struct.fetch_pack_args*, align 8
  %6 = alloca %struct.ref**, align 8
  %7 = alloca %struct.ref*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.object*, align 8
  %11 = alloca %struct.commit.0*, align 8
  %12 = alloca %struct.object*, align 8
  store %struct.fetch_negotiator* %0, %struct.fetch_negotiator** %4, align 8
  store %struct.fetch_pack_args* %1, %struct.fetch_pack_args** %5, align 8
  store %struct.ref** %2, %struct.ref*** %6, align 8
  %13 = load i32, i32* @save_commit_buffer, align 4
  store i32 %13, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* @save_commit_buffer, align 4
  %14 = load %struct.ref**, %struct.ref*** %6, align 8
  %15 = load %struct.ref*, %struct.ref** %14, align 8
  store %struct.ref* %15, %struct.ref** %7, align 8
  br label %16

16:                                               ; preds = %57, %3
  %17 = load %struct.ref*, %struct.ref** %7, align 8
  %18 = icmp ne %struct.ref* %17, null
  br i1 %18, label %19, label %61

19:                                               ; preds = %16
  %20 = load %struct.ref*, %struct.ref** %7, align 8
  %21 = getelementptr inbounds %struct.ref, %struct.ref* %20, i32 0, i32 0
  %22 = load i32, i32* @OBJECT_INFO_QUICK, align 4
  %23 = call i32 @has_object_file_with_flags(i32* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %57

26:                                               ; preds = %19
  %27 = load i32, i32* @the_repository, align 4
  %28 = load %struct.ref*, %struct.ref** %7, align 8
  %29 = getelementptr inbounds %struct.ref, %struct.ref* %28, i32 0, i32 0
  %30 = call %struct.object* @parse_object(i32 %27, i32* %29)
  store %struct.object* %30, %struct.object** %10, align 8
  %31 = load %struct.object*, %struct.object** %10, align 8
  %32 = icmp ne %struct.object* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %57

34:                                               ; preds = %26
  %35 = load %struct.object*, %struct.object** %10, align 8
  %36 = getelementptr inbounds %struct.object, %struct.object* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @OBJ_COMMIT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load %struct.object*, %struct.object** %10, align 8
  %42 = bitcast %struct.object* %41 to %struct.commit.0*
  store %struct.commit.0* %42, %struct.commit.0** %11, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.commit.0*, %struct.commit.0** %11, align 8
  %48 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45, %40
  %52 = load %struct.commit.0*, %struct.commit.0** %11, align 8
  %53 = getelementptr inbounds %struct.commit.0, %struct.commit.0* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %51, %45
  br label %56

56:                                               ; preds = %55, %34
  br label %57

57:                                               ; preds = %56, %33, %25
  %58 = load %struct.ref*, %struct.ref** %7, align 8
  %59 = getelementptr inbounds %struct.ref, %struct.ref* %58, i32 0, i32 1
  %60 = load %struct.ref*, %struct.ref** %59, align 8
  store %struct.ref* %60, %struct.ref** %7, align 8
  br label %16

61:                                               ; preds = %16
  %62 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %5, align 8
  %63 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @mark_complete_oid, align 4
  %68 = call i32 @for_each_ref(i32 %67, i32* null)
  %69 = load i32, i32* @mark_alternate_complete, align 4
  %70 = call i32 @for_each_cached_alternate(i32* null, i32 %69)
  %71 = call i32 @commit_list_sort_by_date(i32* @complete)
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %5, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @mark_recent_complete_commits(%struct.fetch_pack_args* %75, i64 %76)
  br label %78

78:                                               ; preds = %74, %66
  br label %79

79:                                               ; preds = %78, %61
  %80 = load %struct.ref**, %struct.ref*** %6, align 8
  %81 = load %struct.ref*, %struct.ref** %80, align 8
  store %struct.ref* %81, %struct.ref** %7, align 8
  br label %82

82:                                               ; preds = %117, %79
  %83 = load %struct.ref*, %struct.ref** %7, align 8
  %84 = icmp ne %struct.ref* %83, null
  br i1 %84, label %85, label %121

85:                                               ; preds = %82
  %86 = load i32, i32* @the_repository, align 4
  %87 = load i32, i32* @the_repository, align 4
  %88 = load %struct.ref*, %struct.ref** %7, align 8
  %89 = getelementptr inbounds %struct.ref, %struct.ref* %88, i32 0, i32 0
  %90 = call i32 @lookup_object(i32 %87, i32* %89)
  %91 = call %struct.object* @deref_tag(i32 %86, i32 %90, i32* null, i32 0)
  store %struct.object* %91, %struct.object** %12, align 8
  %92 = load %struct.object*, %struct.object** %12, align 8
  %93 = icmp ne %struct.object* %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %85
  %95 = load %struct.object*, %struct.object** %12, align 8
  %96 = getelementptr inbounds %struct.object, %struct.object* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @OBJ_COMMIT, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %107, label %100

100:                                              ; preds = %94
  %101 = load %struct.object*, %struct.object** %12, align 8
  %102 = getelementptr inbounds %struct.object, %struct.object* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @COMPLETE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %100, %94, %85
  br label %117

108:                                              ; preds = %100
  %109 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %4, align 8
  %110 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %109, i32 0, i32 0
  %111 = load i32 (%struct.fetch_negotiator*, %struct.commit*)*, i32 (%struct.fetch_negotiator*, %struct.commit*)** %110, align 8
  %112 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %4, align 8
  %113 = load %struct.object*, %struct.object** %12, align 8
  %114 = bitcast %struct.object* %113 to %struct.commit.0*
  %115 = bitcast %struct.commit.0* %114 to %struct.commit*
  %116 = call i32 %111(%struct.fetch_negotiator* %112, %struct.commit* %115)
  br label %117

117:                                              ; preds = %108, %107
  %118 = load %struct.ref*, %struct.ref** %7, align 8
  %119 = getelementptr inbounds %struct.ref, %struct.ref* %118, i32 0, i32 1
  %120 = load %struct.ref*, %struct.ref** %119, align 8
  store %struct.ref* %120, %struct.ref** %7, align 8
  br label %82

121:                                              ; preds = %82
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* @save_commit_buffer, align 4
  ret void
}

declare dso_local i32 @has_object_file_with_flags(i32*, i32) #1

declare dso_local %struct.object* @parse_object(i32, i32*) #1

declare dso_local i32 @for_each_ref(i32, i32*) #1

declare dso_local i32 @for_each_cached_alternate(i32*, i32) #1

declare dso_local i32 @commit_list_sort_by_date(i32*) #1

declare dso_local i32 @mark_recent_complete_commits(%struct.fetch_pack_args*, i64) #1

declare dso_local %struct.object* @deref_tag(i32, i32, i32*, i32) #1

declare dso_local i32 @lookup_object(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
