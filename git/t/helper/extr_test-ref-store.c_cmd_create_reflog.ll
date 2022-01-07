; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-ref-store.c_cmd_create_reflog.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-ref-store.c_cmd_create_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i64 }
%struct.ref_store = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"refname\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"force-create\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, i8**)* @cmd_create_reflog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_create_reflog(%struct.ref_store* %0, i8** %1) #0 {
  %3 = alloca %struct.ref_store*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i32, align 4
  store %struct.ref_store* %0, %struct.ref_store** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i32 1
  store i8** %10, i8*** %4, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = ptrtoint i8* %11 to i32
  %13 = call i8* @notnull(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %5, align 8
  %14 = load i8**, i8*** %4, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %15, i8*** %4, align 8
  %16 = load i8*, i8** %14, align 8
  %17 = ptrtoint i8* %16 to i32
  %18 = call i32 @arg_flags(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %20 = load %struct.ref_store*, %struct.ref_store** %3, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @refs_create_reflog(%struct.ref_store* %20, i8* %21, i32 %22, %struct.strbuf* %7)
  store i32 %23, i32* %8, align 4
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @puts(i32 %29)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local i8* @notnull(i32, i8*) #1

declare dso_local i32 @arg_flags(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @refs_create_reflog(%struct.ref_store*, i8*, i32, %struct.strbuf*) #1

declare dso_local i32 @puts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
