; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_do_label.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_do_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.ref_store = type { i32 }
%struct.ref_transaction = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [27 x i8] c"illegal label name: '%.*s'\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"refs/rewritten/%.*s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"rebase -i (label) '%.*s'\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"could not read HEAD\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, i32)* @do_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_label(%struct.repository* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ref_store*, align 8
  %9 = alloca %struct.ref_transaction*, align 8
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.object_id, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.repository*, %struct.repository** %5, align 8
  %16 = call %struct.ref_store* @get_main_ref_store(%struct.repository* %15)
  store %struct.ref_store* %16, %struct.ref_store** %8, align 8
  %17 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %18 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %19 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 35
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = load i32, i32* %7, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 (i8*, ...) @error(i8* %30, i32 %31, i8* %32)
  store i32 %33, i32* %4, align 4
  br label %90

34:                                               ; preds = %22, %3
  %35 = load i32, i32* %7, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %35, i8* %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %38, i8* %39)
  %41 = load %struct.ref_store*, %struct.ref_store** %8, align 8
  %42 = call %struct.ref_transaction* @ref_store_transaction_begin(%struct.ref_store* %41, %struct.strbuf* %11)
  store %struct.ref_transaction* %42, %struct.ref_transaction** %9, align 8
  %43 = load %struct.ref_transaction*, %struct.ref_transaction** %9, align 8
  %44 = icmp ne %struct.ref_transaction* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  store i32 -1, i32* %13, align 4
  br label %75

49:                                               ; preds = %34
  %50 = call i64 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.object_id* %14)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 (i8*, ...) @error(i8* %55)
  store i32 -1, i32* %13, align 4
  br label %74

57:                                               ; preds = %49
  %58 = load %struct.ref_transaction*, %struct.ref_transaction** %9, align 8
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ref_transaction_update(%struct.ref_transaction* %58, i32 %60, %struct.object_id* %14, i32* null, i32 0, i32 %62, %struct.strbuf* %11)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %57
  %66 = load %struct.ref_transaction*, %struct.ref_transaction** %9, align 8
  %67 = call i64 @ref_transaction_commit(%struct.ref_transaction* %66, %struct.strbuf* %11)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65, %57
  %70 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  store i32 -1, i32* %13, align 4
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73, %52
  br label %75

75:                                               ; preds = %74, %45
  %76 = load %struct.ref_transaction*, %struct.ref_transaction** %9, align 8
  %77 = call i32 @ref_transaction_free(%struct.ref_transaction* %76)
  %78 = call i32 @strbuf_release(%struct.strbuf* %11)
  %79 = call i32 @strbuf_release(%struct.strbuf* %12)
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %75
  %83 = call i32 (...) @rebase_path_refs_to_delete()
  %84 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @safe_append(i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %85)
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %82, %75
  %88 = call i32 @strbuf_release(%struct.strbuf* %10)
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %27
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.ref_store* @get_main_ref_store(%struct.repository*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*) #1

declare dso_local %struct.ref_transaction* @ref_store_transaction_begin(%struct.ref_store*, %struct.strbuf*) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i64 @ref_transaction_update(%struct.ref_transaction*, i32, %struct.object_id*, i32*, i32, i32, %struct.strbuf*) #1

declare dso_local i64 @ref_transaction_commit(%struct.ref_transaction*, %struct.strbuf*) #1

declare dso_local i32 @ref_transaction_free(%struct.ref_transaction*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @safe_append(i32, i8*, i32) #1

declare dso_local i32 @rebase_path_refs_to_delete(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
