; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_push_update_refs_status.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_push_update_refs_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.helper_data = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ref = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@TRANSPORT_PUSH_DRY_RUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"update by helper\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.helper_data*, %struct.ref*, i32)* @push_update_refs_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_update_refs_status(%struct.helper_data* %0, %struct.ref* %1, i32 %2) #0 {
  %4 = alloca %struct.helper_data*, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca %struct.ref*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.helper_data* %0, %struct.helper_data** %4, align 8
  store %struct.ref* %1, %struct.ref** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %12 = load %struct.ref*, %struct.ref** %5, align 8
  store %struct.ref* %12, %struct.ref** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %55, %54, %44, %27, %3
  %14 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %15 = call i64 @recvline(%struct.helper_data* %14, %struct.strbuf* %7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, i32* %9, align 4
  br label %62

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %62

23:                                               ; preds = %18
  %24 = load %struct.ref*, %struct.ref** %5, align 8
  %25 = call i64 @push_update_ref_status(%struct.strbuf* %7, %struct.ref** %8, %struct.ref* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %13

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @TRANSPORT_PUSH_DRY_RUN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  %34 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %35 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %41 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %33, %28
  br label %13

45:                                               ; preds = %39
  %46 = load %struct.helper_data*, %struct.helper_data** %4, align 8
  %47 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %46, i32 0, i32 0
  %48 = load %struct.ref*, %struct.ref** %8, align 8
  %49 = getelementptr inbounds %struct.ref, %struct.ref* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @apply_refspecs(%struct.TYPE_2__* %47, i32 %50)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %13

55:                                               ; preds = %45
  %56 = load i8*, i8** %10, align 8
  %57 = load %struct.ref*, %struct.ref** %8, align 8
  %58 = getelementptr inbounds %struct.ref, %struct.ref* %57, i32 0, i32 0
  %59 = call i32 @update_ref(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %56, i32* %58, i32* null, i32 0, i32 0)
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @free(i8* %60)
  br label %13

62:                                               ; preds = %22, %17
  %63 = call i32 @strbuf_release(%struct.strbuf* %7)
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @recvline(%struct.helper_data*, %struct.strbuf*) #2

declare dso_local i64 @push_update_ref_status(%struct.strbuf*, %struct.ref**, %struct.ref*) #2

declare dso_local i8* @apply_refspecs(%struct.TYPE_2__*, i32) #2

declare dso_local i32 @update_ref(i8*, i8*, i32*, i32*, i32, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
