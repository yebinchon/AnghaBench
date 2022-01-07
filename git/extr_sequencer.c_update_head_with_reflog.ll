; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_update_head_with_reflog.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_update_head_with_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }
%struct.ref_transaction = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@null_oid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_head_with_reflog(%struct.commit* %0, %struct.object_id* %1, i8* %2, %struct.strbuf* %3, %struct.strbuf* %4) #0 {
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca %struct.ref_transaction*, align 8
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.commit* %0, %struct.commit** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  store %struct.strbuf* %4, %struct.strbuf** %10, align 8
  %15 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %14, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* %19)
  %21 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %5
  %23 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @strchr(i32 %25, i8 signext 10)
  store i8* %26, i8** %13, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %13, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds i8, i8* %34, i64 %39
  %41 = call i32 @strbuf_add(%struct.strbuf* %12, i32 %32, i8* %40)
  br label %46

42:                                               ; preds = %22
  %43 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %44 = call i32 @strbuf_addbuf(%struct.strbuf* %12, %struct.strbuf* %43)
  %45 = call i32 @strbuf_addch(%struct.strbuf* %12, i8 signext 10)
  br label %46

46:                                               ; preds = %42, %29
  %47 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %48 = call %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf* %47)
  store %struct.ref_transaction* %48, %struct.ref_transaction** %11, align 8
  %49 = load %struct.ref_transaction*, %struct.ref_transaction** %11, align 8
  %50 = icmp ne %struct.ref_transaction* %49, null
  br i1 %50, label %51, label %73

51:                                               ; preds = %46
  %52 = load %struct.ref_transaction*, %struct.ref_transaction** %11, align 8
  %53 = load %struct.object_id*, %struct.object_id** %7, align 8
  %54 = load %struct.commit*, %struct.commit** %6, align 8
  %55 = icmp ne %struct.commit* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.commit*, %struct.commit** %6, align 8
  %58 = getelementptr inbounds %struct.commit, %struct.commit* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  br label %61

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i32* [ %59, %56 ], [ @null_oid, %60 ]
  %63 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %66 = call i64 @ref_transaction_update(%struct.ref_transaction* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.object_id* %53, i32* %62, i32 0, i32 %64, %struct.strbuf* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load %struct.ref_transaction*, %struct.ref_transaction** %11, align 8
  %70 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %71 = call i64 @ref_transaction_commit(%struct.ref_transaction* %69, %struct.strbuf* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %61, %46
  store i32 -1, i32* %14, align 4
  br label %74

74:                                               ; preds = %73, %68
  %75 = load %struct.ref_transaction*, %struct.ref_transaction** %11, align 8
  %76 = call i32 @ref_transaction_free(%struct.ref_transaction* %75)
  %77 = call i32 @strbuf_release(%struct.strbuf* %12)
  %78 = load i32, i32* %14, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i8* @strchr(i32, i8 signext) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i32, i8*) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf*) #2

declare dso_local i64 @ref_transaction_update(%struct.ref_transaction*, i8*, %struct.object_id*, i32*, i32, i32, %struct.strbuf*) #2

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
