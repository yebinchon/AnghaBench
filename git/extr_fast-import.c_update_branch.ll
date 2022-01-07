; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_update_branch.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_update_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.branch = type { %struct.object_id, i32, i64 }
%struct.object_id = type { i32 }
%struct.ref_transaction = type { i32 }
%struct.commit = type { i32 }

@update_branch.msg = internal global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [12 x i8] c"fast-import\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@force_update = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Branch %s is missing commits.\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Not updating %s (new tip %s does not contain %s)\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.branch*)* @update_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_branch(%struct.branch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.branch*, align 8
  %4 = alloca %struct.ref_transaction*, align 8
  %5 = alloca %struct.object_id, align 4
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.commit*, align 8
  store %struct.branch* %0, %struct.branch** %3, align 8
  %9 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %10 = load %struct.branch*, %struct.branch** %3, align 8
  %11 = getelementptr inbounds %struct.branch, %struct.branch* %10, i32 0, i32 0
  %12 = call i64 @is_null_oid(%struct.object_id* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.branch*, %struct.branch** %3, align 8
  %16 = getelementptr inbounds %struct.branch, %struct.branch* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.branch*, %struct.branch** %3, align 8
  %21 = getelementptr inbounds %struct.branch, %struct.branch* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @delete_ref(i32* null, i32 %22, i32* null, i32 0)
  br label %24

24:                                               ; preds = %19, %14
  store i32 0, i32* %2, align 4
  br label %100

25:                                               ; preds = %1
  %26 = load %struct.branch*, %struct.branch** %3, align 8
  %27 = getelementptr inbounds %struct.branch, %struct.branch* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @read_ref(i32 %28, %struct.object_id* %5)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @oidclr(%struct.object_id* %5)
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i32, i32* @force_update, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %71, label %36

36:                                               ; preds = %33
  %37 = call i64 @is_null_oid(%struct.object_id* %5)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %71, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @the_repository, align 4
  %41 = call %struct.commit* @lookup_commit_reference_gently(i32 %40, %struct.object_id* %5, i32 0)
  store %struct.commit* %41, %struct.commit** %7, align 8
  %42 = load i32, i32* @the_repository, align 4
  %43 = load %struct.branch*, %struct.branch** %3, align 8
  %44 = getelementptr inbounds %struct.branch, %struct.branch* %43, i32 0, i32 0
  %45 = call %struct.commit* @lookup_commit_reference_gently(i32 %42, %struct.object_id* %44, i32 0)
  store %struct.commit* %45, %struct.commit** %8, align 8
  %46 = load %struct.commit*, %struct.commit** %7, align 8
  %47 = icmp ne %struct.commit* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.commit*, %struct.commit** %8, align 8
  %50 = icmp ne %struct.commit* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48, %39
  %52 = load %struct.branch*, %struct.branch** %3, align 8
  %53 = getelementptr inbounds %struct.branch, %struct.branch* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %2, align 4
  br label %100

56:                                               ; preds = %48
  %57 = load %struct.commit*, %struct.commit** %7, align 8
  %58 = load %struct.commit*, %struct.commit** %8, align 8
  %59 = call i32 @in_merge_bases(%struct.commit* %57, %struct.commit* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %56
  %62 = load %struct.branch*, %struct.branch** %3, align 8
  %63 = getelementptr inbounds %struct.branch, %struct.branch* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.branch*, %struct.branch** %3, align 8
  %66 = getelementptr inbounds %struct.branch, %struct.branch* %65, i32 0, i32 0
  %67 = call i32 @oid_to_hex(%struct.object_id* %66)
  %68 = call i32 @oid_to_hex(%struct.object_id* %5)
  %69 = call i32 @warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %67, i32 %68)
  store i32 -1, i32* %2, align 4
  br label %100

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %36, %33
  %72 = call %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf* %6)
  store %struct.ref_transaction* %72, %struct.ref_transaction** %4, align 8
  %73 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %74 = icmp ne %struct.ref_transaction* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %77 = load %struct.branch*, %struct.branch** %3, align 8
  %78 = getelementptr inbounds %struct.branch, %struct.branch* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.branch*, %struct.branch** %3, align 8
  %81 = getelementptr inbounds %struct.branch, %struct.branch* %80, i32 0, i32 0
  %82 = load i8*, i8** @update_branch.msg, align 8
  %83 = call i64 @ref_transaction_update(%struct.ref_transaction* %76, i32 %79, %struct.object_id* %81, %struct.object_id* %5, i32 0, i8* %82, %struct.strbuf* %6)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %75
  %86 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %87 = call i64 @ref_transaction_commit(%struct.ref_transaction* %86, %struct.strbuf* %6)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85, %75, %71
  %90 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %91 = call i32 @ref_transaction_free(%struct.ref_transaction* %90)
  %92 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = call i32 @strbuf_release(%struct.strbuf* %6)
  store i32 -1, i32* %2, align 4
  br label %100

96:                                               ; preds = %85
  %97 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %98 = call i32 @ref_transaction_free(%struct.ref_transaction* %97)
  %99 = call i32 @strbuf_release(%struct.strbuf* %6)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %96, %89, %61, %51, %24
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @is_null_oid(%struct.object_id*) #2

declare dso_local i32 @delete_ref(i32*, i32, i32*, i32) #2

declare dso_local i64 @read_ref(i32, %struct.object_id*) #2

declare dso_local i32 @oidclr(%struct.object_id*) #2

declare dso_local %struct.commit* @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #2

declare dso_local i32 @error(i8*, i32) #2

declare dso_local i32 @in_merge_bases(%struct.commit*, %struct.commit*) #2

declare dso_local i32 @warning(i8*, i32, i32, i32) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf*) #2

declare dso_local i64 @ref_transaction_update(%struct.ref_transaction*, i32, %struct.object_id*, %struct.object_id*, i32, i8*, %struct.strbuf*) #2

declare dso_local i64 @ref_transaction_commit(%struct.ref_transaction*, %struct.strbuf*) #2

declare dso_local i32 @ref_transaction_free(%struct.ref_transaction*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
