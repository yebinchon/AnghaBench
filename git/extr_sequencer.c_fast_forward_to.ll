; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_fast_forward_to.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_fast_forward_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }
%struct.repository = type { i32 }
%struct.replay_opts = type { i32 }
%struct.ref_transaction = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: fast-forward\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@null_oid = common dso_local global %struct.object_id zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.object_id*, %struct.object_id*, i32, %struct.replay_opts*)* @fast_forward_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_forward_to(%struct.repository* %0, %struct.object_id* %1, %struct.object_id* %2, i32 %3, %struct.replay_opts* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.replay_opts*, align 8
  %12 = alloca %struct.ref_transaction*, align 8
  %13 = alloca %struct.strbuf, align 4
  %14 = alloca %struct.strbuf, align 4
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.object_id* %1, %struct.object_id** %8, align 8
  store %struct.object_id* %2, %struct.object_id** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.replay_opts* %4, %struct.replay_opts** %11, align 8
  %15 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %16 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %17 = load %struct.repository*, %struct.repository** %7, align 8
  %18 = call i32 @repo_read_index(%struct.repository* %17)
  %19 = load %struct.repository*, %struct.repository** %7, align 8
  %20 = load %struct.object_id*, %struct.object_id** %9, align 8
  %21 = load %struct.object_id*, %struct.object_id** %8, align 8
  %22 = call i64 @checkout_fast_forward(%struct.repository* %19, %struct.object_id* %20, %struct.object_id* %21, i32 1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %70

25:                                               ; preds = %5
  %26 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.replay_opts*, %struct.replay_opts** %11, align 8
  %28 = call i8* @action_name(%struct.replay_opts* %27)
  %29 = call i32 @_(i8* %28)
  %30 = call i32 @strbuf_addf(%struct.strbuf* %13, i32 %26, i32 %29)
  %31 = call %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf* %14)
  store %struct.ref_transaction* %31, %struct.ref_transaction** %12, align 8
  %32 = load %struct.ref_transaction*, %struct.ref_transaction** %12, align 8
  %33 = icmp ne %struct.ref_transaction* %32, null
  br i1 %33, label %34, label %56

34:                                               ; preds = %25
  %35 = load %struct.ref_transaction*, %struct.ref_transaction** %12, align 8
  %36 = load %struct.object_id*, %struct.object_id** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.replay_opts*, %struct.replay_opts** %11, align 8
  %41 = call i32 @is_rebase_i(%struct.replay_opts* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %46

44:                                               ; preds = %39, %34
  %45 = load %struct.object_id*, %struct.object_id** %9, align 8
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi %struct.object_id* [ @null_oid, %43 ], [ %45, %44 ]
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ref_transaction_update(%struct.ref_transaction* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.object_id* %36, %struct.object_id* %47, i32 0, i32 %49, %struct.strbuf* %14)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load %struct.ref_transaction*, %struct.ref_transaction** %12, align 8
  %54 = call i64 @ref_transaction_commit(%struct.ref_transaction* %53, %struct.strbuf* %14)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52, %46, %25
  %57 = load %struct.ref_transaction*, %struct.ref_transaction** %12, align 8
  %58 = call i32 @ref_transaction_free(%struct.ref_transaction* %57)
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = call i32 @strbuf_release(%struct.strbuf* %13)
  %63 = call i32 @strbuf_release(%struct.strbuf* %14)
  store i32 -1, i32* %6, align 4
  br label %70

64:                                               ; preds = %52
  %65 = call i32 @strbuf_release(%struct.strbuf* %13)
  %66 = call i32 @strbuf_release(%struct.strbuf* %14)
  %67 = load %struct.ref_transaction*, %struct.ref_transaction** %12, align 8
  %68 = call i32 @ref_transaction_free(%struct.ref_transaction* %67)
  %69 = call i32 (...) @update_abort_safety_file()
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %64, %56, %24
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @repo_read_index(%struct.repository*) #2

declare dso_local i64 @checkout_fast_forward(%struct.repository*, %struct.object_id*, %struct.object_id*, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @action_name(%struct.replay_opts*) #2

declare dso_local %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf*) #2

declare dso_local i64 @ref_transaction_update(%struct.ref_transaction*, i8*, %struct.object_id*, %struct.object_id*, i32, i32, %struct.strbuf*) #2

declare dso_local i32 @is_rebase_i(%struct.replay_opts*) #2

declare dso_local i64 @ref_transaction_commit(%struct.ref_transaction*, %struct.strbuf*) #2

declare dso_local i32 @ref_transaction_free(%struct.ref_transaction*) #2

declare dso_local i32 @error(i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @update_abort_safety_file(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
