; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_get_short_oid.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_get_short_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_array = type { i32 }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.disambiguate_state = type { i32, i32*, i32 }

@GET_OID_QUIETLY = common dso_local global i32 0, align 4
@GET_OID_DISAMBIGUATORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"multiple get_short_oid disambiguator flags\00", align 1
@GET_OID_COMMIT = common dso_local global i32 0, align 4
@disambiguate_commit_only = common dso_local global i32* null, align 8
@GET_OID_COMMITTISH = common dso_local global i32 0, align 4
@disambiguate_committish_only = common dso_local global i32* null, align 8
@GET_OID_TREE = common dso_local global i32 0, align 4
@disambiguate_tree_only = common dso_local global i32* null, align 8
@GET_OID_TREEISH = common dso_local global i32 0, align 4
@disambiguate_treeish_only = common dso_local global i32* null, align 8
@GET_OID_BLOB = common dso_local global i32 0, align 4
@disambiguate_blob_only = common dso_local global i32* null, align 8
@default_disambiguate_hint = common dso_local global i32* null, align 8
@MISSING_OBJECT = common dso_local global i32 0, align 4
@SHORT_NAME_AMBIGUOUS = common dso_local global i32 0, align 4
@OID_ARRAY_INIT = common dso_local global %struct.oid_array zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"short SHA1 %s is ambiguous\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"The candidates are:\00", align 1
@collect_ambiguous = common dso_local global i32 0, align 4
@show_ambiguous_object = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"show_ambiguous_object shouldn't return non-zero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, i32, %struct.object_id*, i32)* @get_short_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_short_oid(%struct.repository* %0, i8* %1, i32 %2, %struct.object_id* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.disambiguate_state, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.oid_array, align 4
  store %struct.repository* %0, %struct.repository** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.object_id* %3, %struct.object_id** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @GET_OID_QUIETLY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %14, align 4
  %23 = load %struct.repository*, %struct.repository** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @init_object_disambiguation(%struct.repository* %23, i8* %24, i32 %25, %struct.disambiguate_state* %13)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %136

29:                                               ; preds = %5
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @GET_OID_DISAMBIGUATORS, align 4
  %32 = and i32 %30, %31
  %33 = call i64 @HAS_MULTI_BITS(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @BUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %29
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @GET_OID_COMMIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32*, i32** @disambiguate_commit_only, align 8
  %44 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %13, i32 0, i32 1
  store i32* %43, i32** %44, align 8
  br label %84

45:                                               ; preds = %37
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @GET_OID_COMMITTISH, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32*, i32** @disambiguate_committish_only, align 8
  %52 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %13, i32 0, i32 1
  store i32* %51, i32** %52, align 8
  br label %83

53:                                               ; preds = %45
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @GET_OID_TREE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32*, i32** @disambiguate_tree_only, align 8
  %60 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %13, i32 0, i32 1
  store i32* %59, i32** %60, align 8
  br label %82

61:                                               ; preds = %53
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @GET_OID_TREEISH, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32*, i32** @disambiguate_treeish_only, align 8
  %68 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %13, i32 0, i32 1
  store i32* %67, i32** %68, align 8
  br label %81

69:                                               ; preds = %61
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @GET_OID_BLOB, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32*, i32** @disambiguate_blob_only, align 8
  %76 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %13, i32 0, i32 1
  store i32* %75, i32** %76, align 8
  br label %80

77:                                               ; preds = %69
  %78 = load i32*, i32** @default_disambiguate_hint, align 8
  %79 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %13, i32 0, i32 1
  store i32* %78, i32** %79, align 8
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80, %66
  br label %82

82:                                               ; preds = %81, %58
  br label %83

83:                                               ; preds = %82, %50
  br label %84

84:                                               ; preds = %83, %42
  %85 = call i32 @find_short_object_filename(%struct.disambiguate_state* %13)
  %86 = call i32 @find_short_packed_object(%struct.disambiguate_state* %13)
  %87 = load %struct.object_id*, %struct.object_id** %10, align 8
  %88 = call i32 @finish_object_disambiguation(%struct.disambiguate_state* %13, %struct.object_id* %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @MISSING_OBJECT, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load %struct.repository*, %struct.repository** %7, align 8
  %94 = call i32 @reprepare_packed_git(%struct.repository* %93)
  %95 = call i32 @find_short_object_filename(%struct.disambiguate_state* %13)
  %96 = call i32 @find_short_packed_object(%struct.disambiguate_state* %13)
  %97 = load %struct.object_id*, %struct.object_id** %10, align 8
  %98 = call i32 @finish_object_disambiguation(%struct.disambiguate_state* %13, %struct.object_id* %97)
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %92, %84
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %134, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @SHORT_NAME_AMBIGUOUS, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %134

106:                                              ; preds = %102
  %107 = bitcast %struct.oid_array* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 4, i1 false)
  %108 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %109 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %13, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @error(i32 %108, i32 %110)
  %112 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %13, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %106
  %116 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %13, i32 0, i32 1
  store i32* null, i32** %116, align 8
  br label %117

117:                                              ; preds = %115, %106
  %118 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %119 = call i32 @advise(i32 %118)
  %120 = load %struct.repository*, %struct.repository** %7, align 8
  %121 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %13, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @collect_ambiguous, align 4
  %124 = call i32 @repo_for_each_abbrev(%struct.repository* %120, i32 %122, i32 %123, %struct.oid_array* %15)
  %125 = load %struct.repository*, %struct.repository** %7, align 8
  %126 = call i32 @sort_ambiguous_oid_array(%struct.repository* %125, %struct.oid_array* %15)
  %127 = load i32, i32* @show_ambiguous_object, align 4
  %128 = call i64 @oid_array_for_each(%struct.oid_array* %15, i32 %127, %struct.disambiguate_state* %13)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %117
  %131 = call i32 @BUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %117
  %133 = call i32 @oid_array_clear(%struct.oid_array* %15)
  br label %134

134:                                              ; preds = %132, %102, %99
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %134, %28
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local i64 @init_object_disambiguation(%struct.repository*, i8*, i32, %struct.disambiguate_state*) #1

declare dso_local i64 @HAS_MULTI_BITS(i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @find_short_object_filename(%struct.disambiguate_state*) #1

declare dso_local i32 @find_short_packed_object(%struct.disambiguate_state*) #1

declare dso_local i32 @finish_object_disambiguation(%struct.disambiguate_state*, %struct.object_id*) #1

declare dso_local i32 @reprepare_packed_git(%struct.repository*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @advise(i32) #1

declare dso_local i32 @repo_for_each_abbrev(%struct.repository*, i32, i32, %struct.oid_array*) #1

declare dso_local i32 @sort_ambiguous_oid_array(%struct.repository*, %struct.oid_array*) #1

declare dso_local i64 @oid_array_for_each(%struct.oid_array*, i32, %struct.disambiguate_state*) #1

declare dso_local i32 @oid_array_clear(%struct.oid_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
