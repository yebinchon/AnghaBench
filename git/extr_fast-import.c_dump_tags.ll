; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_dump_tags.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_dump_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.tag = type { i32, i32, %struct.tag* }
%struct.ref_transaction = type { i32 }

@dump_tags.msg = internal global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [12 x i8] c"fast-import\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@failure = common dso_local global i32 0, align 4
@first_tag = common dso_local global %struct.tag* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"refs/tags/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_tags() #0 {
  %1 = alloca %struct.tag*, align 8
  %2 = alloca %struct.strbuf, align 4
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca %struct.ref_transaction*, align 8
  %5 = bitcast %struct.strbuf* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %6 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %7 = call %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf* %3)
  store %struct.ref_transaction* %7, %struct.ref_transaction** %4, align 8
  %8 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %9 = icmp ne %struct.ref_transaction* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @failure, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* @failure, align 4
  br label %57

16:                                               ; preds = %0
  %17 = load %struct.tag*, %struct.tag** @first_tag, align 8
  store %struct.tag* %17, %struct.tag** %1, align 8
  br label %18

18:                                               ; preds = %42, %16
  %19 = load %struct.tag*, %struct.tag** %1, align 8
  %20 = icmp ne %struct.tag* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = call i32 @strbuf_reset(%struct.strbuf* %2)
  %23 = load %struct.tag*, %struct.tag** %1, align 8
  %24 = getelementptr inbounds %struct.tag, %struct.tag* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strbuf_addf(%struct.strbuf* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %2, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tag*, %struct.tag** %1, align 8
  %31 = getelementptr inbounds %struct.tag, %struct.tag* %30, i32 0, i32 0
  %32 = load i8*, i8** @dump_tags.msg, align 8
  %33 = call i64 @ref_transaction_update(%struct.ref_transaction* %27, i32 %29, i32* %31, i32* null, i32 0, i8* %32, %struct.strbuf* %3)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @failure, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* @failure, align 4
  br label %57

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.tag*, %struct.tag** %1, align 8
  %44 = getelementptr inbounds %struct.tag, %struct.tag* %43, i32 0, i32 2
  %45 = load %struct.tag*, %struct.tag** %44, align 8
  store %struct.tag* %45, %struct.tag** %1, align 8
  br label %18

46:                                               ; preds = %18
  %47 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %48 = call i64 @ref_transaction_commit(%struct.ref_transaction* %47, %struct.strbuf* %3)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @failure, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* @failure, align 4
  br label %56

56:                                               ; preds = %50, %46
  br label %57

57:                                               ; preds = %56, %35, %10
  %58 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %59 = call i32 @ref_transaction_free(%struct.ref_transaction* %58)
  %60 = call i32 @strbuf_release(%struct.strbuf* %2)
  %61 = call i32 @strbuf_release(%struct.strbuf* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf*) #2

declare dso_local i32 @error(i8*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i64 @ref_transaction_update(%struct.ref_transaction*, i32, i32*, i32*, i32, i8*, %struct.strbuf*) #2

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
