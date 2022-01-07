; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_get_submodule_ref_store.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_get_submodule_ref_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_store = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@submodule_ref_stores = common dso_local global i32 0, align 4
@REF_STORE_READ = common dso_local global i32 0, align 4
@REF_STORE_ODB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"submodule\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref_store* @get_submodule_ref_store(i8* %0) #0 {
  %2 = alloca %struct.ref_store*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca %struct.ref_store*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i8* null, i8** %6, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.ref_store* null, %struct.ref_store** %2, align 8
  br label %77

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %7, align 8
  br label %15

15:                                               ; preds = %28, %12
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i8*, i8** %3, align 8
  %20 = load i64, i64* %7, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @is_dir_sep(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %18, %15
  %27 = phi i1 [ false, %15 ], [ %25, %18 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %7, align 8
  br label %15

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store %struct.ref_store* null, %struct.ref_store** %2, align 8
  br label %77

35:                                               ; preds = %31
  %36 = load i8*, i8** %3, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i8*, i8** %3, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i8* @xmemdupz(i8* %42, i64 %43)
  store i8* %44, i8** %6, align 8
  store i8* %44, i8** %3, align 8
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i8*, i8** %3, align 8
  %47 = call %struct.ref_store* @lookup_ref_store_map(i32* @submodule_ref_stores, i8* %46)
  store %struct.ref_store* %47, %struct.ref_store** %5, align 8
  %48 = load %struct.ref_store*, %struct.ref_store** %5, align 8
  %49 = icmp ne %struct.ref_store* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %72

51:                                               ; preds = %45
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* %52)
  %54 = call i32 @is_nonbare_repository_dir(%struct.strbuf* %4)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %72

57:                                               ; preds = %51
  %58 = load i8*, i8** %3, align 8
  %59 = call i64 @submodule_to_gitdir(%struct.strbuf* %4, i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %72

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @REF_STORE_READ, align 4
  %66 = load i32, i32* @REF_STORE_ODB, align 4
  %67 = or i32 %65, %66
  %68 = call %struct.ref_store* @ref_store_init(i32 %64, i32 %67)
  store %struct.ref_store* %68, %struct.ref_store** %5, align 8
  %69 = load %struct.ref_store*, %struct.ref_store** %5, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @register_ref_store_map(i32* @submodule_ref_stores, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.ref_store* %69, i8* %70)
  br label %72

72:                                               ; preds = %62, %61, %56, %50
  %73 = call i32 @strbuf_release(%struct.strbuf* %4)
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load %struct.ref_store*, %struct.ref_store** %5, align 8
  store %struct.ref_store* %76, %struct.ref_store** %2, align 8
  br label %77

77:                                               ; preds = %72, %34, %11
  %78 = load %struct.ref_store*, %struct.ref_store** %2, align 8
  ret %struct.ref_store* %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @is_dir_sep(i8 signext) #2

declare dso_local i8* @xmemdupz(i8*, i64) #2

declare dso_local %struct.ref_store* @lookup_ref_store_map(i32*, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @is_nonbare_repository_dir(%struct.strbuf*) #2

declare dso_local i64 @submodule_to_gitdir(%struct.strbuf*, i8*) #2

declare dso_local %struct.ref_store* @ref_store_init(i32, i32) #2

declare dso_local i32 @register_ref_store_map(i32*, i8*, %struct.ref_store*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
