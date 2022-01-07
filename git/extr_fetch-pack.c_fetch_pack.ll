; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_fetch_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_fetch_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_array = type { i64 }
%struct.check_connected_options = type { i32, i32 }
%struct.fetch_pack_args = type { i32, i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ref = type { i32 }
%struct.shallow_info = type { i32 }

@OID_ARRAY_INIT = common dso_local global %struct.oid_array zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"blob:none\00", align 1
@protocol_v2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"no matching remote head\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Protocol V2 does not provide shallows at this point in the fetch\00", align 1
@the_repository = common dso_local global i32 0, align 4
@CHECK_CONNECTED_INIT = common dso_local global %struct.check_connected_options zeroinitializer, align 4
@alternate_shallow_file = common dso_local global i32 0, align 4
@iterate_ref_map = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"remote did not send all necessary objects\00", align 1
@shallow_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref* @fetch_pack(%struct.fetch_pack_args* %0, i32* %1, %struct.ref* %2, %struct.ref** %3, i32 %4, %struct.oid_array* %5, i8** %6, i32 %7) #0 {
  %9 = alloca %struct.fetch_pack_args*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ref*, align 8
  %12 = alloca %struct.ref**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.oid_array*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ref*, align 8
  %18 = alloca %struct.shallow_info, align 4
  %19 = alloca %struct.oid_array, align 8
  %20 = alloca %struct.check_connected_options, align 4
  %21 = alloca %struct.ref*, align 8
  store %struct.fetch_pack_args* %0, %struct.fetch_pack_args** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.ref* %2, %struct.ref** %11, align 8
  store %struct.ref** %3, %struct.ref*** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.oid_array* %5, %struct.oid_array** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32 %7, i32* %16, align 4
  %22 = bitcast %struct.oid_array* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 8, i1 false)
  %23 = call i32 (...) @fetch_pack_setup()
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %8
  %27 = load %struct.ref**, %struct.ref*** %12, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @remove_duplicates_in_refs(%struct.ref** %27, i32 %28)
  store i32 %29, i32* %13, align 4
  br label %30

30:                                               ; preds = %26, %8
  %31 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %32 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %37 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %43 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %42, i32 0, i32 3
  %44 = call i32 @parse_list_objects_filter(%struct.TYPE_2__* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %35, %30
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* @protocol_v2, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load %struct.ref*, %struct.ref** %11, align 8
  %51 = icmp ne %struct.ref* %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @packet_flush(i32 %55)
  %57 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32 @die(i32 %57)
  br label %59

59:                                               ; preds = %52, %49, %45
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @protocol_v2, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load %struct.oid_array*, %struct.oid_array** %14, align 8
  %65 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 @BUG(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %63
  %71 = call i32 @memset(%struct.shallow_info* %18, i32 0, i32 4)
  %72 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load %struct.ref*, %struct.ref** %11, align 8
  %75 = load %struct.ref**, %struct.ref*** %12, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i8**, i8*** %15, align 8
  %78 = call %struct.ref* @do_fetch_pack_v2(%struct.fetch_pack_args* %72, i32* %73, %struct.ref* %74, %struct.ref** %75, i32 %76, %struct.oid_array* %19, %struct.shallow_info* %18, i8** %77)
  store %struct.ref* %78, %struct.ref** %17, align 8
  br label %89

79:                                               ; preds = %59
  %80 = load %struct.oid_array*, %struct.oid_array** %14, align 8
  %81 = call i32 @prepare_shallow_info(%struct.shallow_info* %18, %struct.oid_array* %80)
  %82 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load %struct.ref*, %struct.ref** %11, align 8
  %85 = load %struct.ref**, %struct.ref*** %12, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i8**, i8*** %15, align 8
  %88 = call %struct.ref* @do_fetch_pack(%struct.fetch_pack_args* %82, i32* %83, %struct.ref* %84, %struct.ref** %85, i32 %86, %struct.shallow_info* %18, i8** %87)
  store %struct.ref* %88, %struct.ref** %17, align 8
  br label %89

89:                                               ; preds = %79, %70
  %90 = load i32, i32* @the_repository, align 4
  %91 = call i32 @reprepare_packed_git(i32 %90)
  %92 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %93 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %125, label %96

96:                                               ; preds = %89
  %97 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %98 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %125

101:                                              ; preds = %96
  %102 = bitcast %struct.check_connected_options* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 4 bitcast (%struct.check_connected_options* @CHECK_CONNECTED_INIT to i8*), i64 8, i1 false)
  %103 = load %struct.ref*, %struct.ref** %17, align 8
  store %struct.ref* %103, %struct.ref** %21, align 8
  %104 = load i32, i32* @alternate_shallow_file, align 4
  %105 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %20, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  %106 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %107 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %20, i32 0, i32 0
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %110, %101
  %113 = load i32, i32* @iterate_ref_map, align 4
  %114 = call i64 @check_connected(i32 %113, %struct.ref** %21, %struct.check_connected_options* %20)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %118 = call i32 @error(i32 %117)
  %119 = load %struct.ref*, %struct.ref** %17, align 8
  %120 = call i32 @free_refs(%struct.ref* %119)
  store %struct.ref* null, %struct.ref** %17, align 8
  %121 = call i32 @rollback_lock_file(i32* @shallow_lock)
  br label %130

122:                                              ; preds = %112
  %123 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %124 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %122, %96, %89
  %126 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %127 = load %struct.ref**, %struct.ref*** %12, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @update_shallow(%struct.fetch_pack_args* %126, %struct.ref** %127, i32 %128, %struct.shallow_info* %18)
  br label %130

130:                                              ; preds = %125, %116
  %131 = call i32 @clear_shallow_info(%struct.shallow_info* %18)
  %132 = call i32 @oid_array_clear(%struct.oid_array* %19)
  %133 = load %struct.ref*, %struct.ref** %17, align 8
  ret %struct.ref* %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fetch_pack_setup(...) #2

declare dso_local i32 @remove_duplicates_in_refs(%struct.ref**, i32) #2

declare dso_local i32 @parse_list_objects_filter(%struct.TYPE_2__*, i8*) #2

declare dso_local i32 @packet_flush(i32) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @memset(%struct.shallow_info*, i32, i32) #2

declare dso_local %struct.ref* @do_fetch_pack_v2(%struct.fetch_pack_args*, i32*, %struct.ref*, %struct.ref**, i32, %struct.oid_array*, %struct.shallow_info*, i8**) #2

declare dso_local i32 @prepare_shallow_info(%struct.shallow_info*, %struct.oid_array*) #2

declare dso_local %struct.ref* @do_fetch_pack(%struct.fetch_pack_args*, i32*, %struct.ref*, %struct.ref**, i32, %struct.shallow_info*, i8**) #2

declare dso_local i32 @reprepare_packed_git(i32) #2

declare dso_local i64 @check_connected(i32, %struct.ref**, %struct.check_connected_options*) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @free_refs(%struct.ref*) #2

declare dso_local i32 @rollback_lock_file(i32*) #2

declare dso_local i32 @update_shallow(%struct.fetch_pack_args*, %struct.ref**, i32, %struct.shallow_info*) #2

declare dso_local i32 @clear_shallow_info(%struct.shallow_info*) #2

declare dso_local i32 @oid_array_clear(%struct.oid_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
