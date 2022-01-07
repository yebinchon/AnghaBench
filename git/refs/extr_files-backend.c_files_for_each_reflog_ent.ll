; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_for_each_reflog_ent.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_for_each_reflog_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_store = type { i32 }
%struct.files_ref_store = type { i32 }

@REF_STORE_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"for_each_reflog_ent\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, i8*, i32, i8*)* @files_for_each_reflog_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @files_for_each_reflog_ent(%struct.ref_store* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_store*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.files_ref_store*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca i32, align 4
  store %struct.ref_store* %0, %struct.ref_store** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.ref_store*, %struct.ref_store** %6, align 8
  %15 = load i32, i32* @REF_STORE_READ, align 4
  %16 = call %struct.files_ref_store* @files_downcast(%struct.ref_store* %14, i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.files_ref_store* %16, %struct.files_ref_store** %10, align 8
  %17 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %13, align 4
  %18 = load %struct.files_ref_store*, %struct.files_ref_store** %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @files_reflog_path(%struct.files_ref_store* %18, %struct.strbuf* %12, i8* %19)
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @fopen(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %23, i32** %11, align 8
  %24 = call i32 @strbuf_release(%struct.strbuf* %12)
  %25 = load i32*, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %48

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %39, %28
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @strbuf_getwholeline(%struct.strbuf* %12, i32* %33, i8 signext 10)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i1 [ false, %29 ], [ %36, %32 ]
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @show_one_reflog_ent(%struct.strbuf* %12, i32 %40, i8* %41)
  store i32 %42, i32* %13, align 4
  br label %29

43:                                               ; preds = %37
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @fclose(i32* %44)
  %46 = call i32 @strbuf_release(%struct.strbuf* %12)
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %27
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.files_ref_store* @files_downcast(%struct.ref_store*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @files_reflog_path(%struct.files_ref_store*, %struct.strbuf*, i8*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @strbuf_getwholeline(%struct.strbuf*, i32*, i8 signext) #1

declare dso_local i32 @show_one_reflog_ent(%struct.strbuf*, i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
