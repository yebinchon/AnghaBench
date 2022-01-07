; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_submodule_touches_in_range.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_submodule_touches_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.argv_array = type { i32 }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"--not\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @submodule_touches_in_range(%struct.repository* %0, %struct.object_id* %1, %struct.object_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.string_list, align 4
  %9 = alloca %struct.argv_array, align 4
  %10 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  %11 = bitcast %struct.string_list* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  %12 = bitcast %struct.argv_array* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %13 = load %struct.repository*, %struct.repository** %5, align 8
  %14 = call i32 @submodule_from_path(%struct.repository* %13, i32* null, i32* null)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

17:                                               ; preds = %3
  %18 = call i32 @argv_array_push(%struct.argv_array* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.object_id*, %struct.object_id** %7, align 8
  %20 = call i8* @oid_to_hex(%struct.object_id* %19)
  %21 = call i32 @argv_array_push(%struct.argv_array* %9, i8* %20)
  %22 = load %struct.object_id*, %struct.object_id** %6, align 8
  %23 = call i32 @is_null_oid(%struct.object_id* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = call i32 @argv_array_push(%struct.argv_array* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.object_id*, %struct.object_id** %6, align 8
  %28 = call i8* @oid_to_hex(%struct.object_id* %27)
  %29 = call i32 @argv_array_push(%struct.argv_array* %9, i8* %28)
  br label %30

30:                                               ; preds = %25, %17
  %31 = load %struct.repository*, %struct.repository** %5, align 8
  %32 = call i32 @collect_changed_submodules(%struct.repository* %31, %struct.string_list* %8, %struct.argv_array* %9)
  %33 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = call i32 @argv_array_clear(%struct.argv_array* %9)
  %36 = call i32 @free_submodules_oids(%struct.string_list* %8)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %30, %16
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @submodule_from_path(%struct.repository*, i32*, i32*) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @is_null_oid(%struct.object_id*) #2

declare dso_local i32 @collect_changed_submodules(%struct.repository*, %struct.string_list*, %struct.argv_array*) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

declare dso_local i32 @free_submodules_oids(%struct.string_list*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
