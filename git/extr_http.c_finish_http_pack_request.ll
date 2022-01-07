; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_finish_http_pack_request.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_finish_http_pack_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i32 }
%struct.http_pack_request = type { %struct.TYPE_2__, %struct.packed_git**, i32*, %struct.packed_git* }
%struct.TYPE_2__ = type { i8* }
%struct.packed_git = type { i32, %struct.packed_git* }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c".pack.temp\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"pack tmpfile does not end in .pack.temp?\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%.*s.idx.temp\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"index-pack\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@the_repository = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @finish_http_pack_request(%struct.http_pack_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.http_pack_request*, align 8
  %4 = alloca %struct.packed_git**, align 8
  %5 = alloca %struct.packed_git*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.child_process, align 4
  store %struct.http_pack_request* %0, %struct.http_pack_request** %3, align 8
  %9 = load %struct.http_pack_request*, %struct.http_pack_request** %3, align 8
  %10 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %9, i32 0, i32 3
  %11 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  store %struct.packed_git* %11, %struct.packed_git** %5, align 8
  %12 = bitcast %struct.child_process* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  %13 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %14 = call i32 @close_pack_index(%struct.packed_git* %13)
  %15 = load %struct.http_pack_request*, %struct.http_pack_request** %3, align 8
  %16 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @fclose(i32* %17)
  %19 = load %struct.http_pack_request*, %struct.http_pack_request** %3, align 8
  %20 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.http_pack_request*, %struct.http_pack_request** %3, align 8
  %22 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %21, i32 0, i32 1
  %23 = load %struct.packed_git**, %struct.packed_git*** %22, align 8
  store %struct.packed_git** %23, %struct.packed_git*** %4, align 8
  br label %24

24:                                               ; preds = %29, %1
  %25 = load %struct.packed_git**, %struct.packed_git*** %4, align 8
  %26 = load %struct.packed_git*, %struct.packed_git** %25, align 8
  %27 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %28 = icmp ne %struct.packed_git* %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.packed_git**, %struct.packed_git*** %4, align 8
  %31 = load %struct.packed_git*, %struct.packed_git** %30, align 8
  %32 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %31, i32 0, i32 1
  store %struct.packed_git** %32, %struct.packed_git*** %4, align 8
  br label %24

33:                                               ; preds = %24
  %34 = load %struct.packed_git**, %struct.packed_git*** %4, align 8
  %35 = load %struct.packed_git*, %struct.packed_git** %34, align 8
  %36 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %35, i32 0, i32 1
  %37 = load %struct.packed_git*, %struct.packed_git** %36, align 8
  %38 = load %struct.packed_git**, %struct.packed_git*** %4, align 8
  store %struct.packed_git* %37, %struct.packed_git** %38, align 8
  %39 = load %struct.http_pack_request*, %struct.http_pack_request** %3, align 8
  %40 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strip_suffix(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64* %7)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %33
  %46 = call i32 @BUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %33
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.http_pack_request*, %struct.http_pack_request** %3, align 8
  %51 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @xstrfmt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %49, i8* %53)
  store i8* %54, i8** %6, align 8
  %55 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 3
  %56 = call i32 @argv_array_push(i32* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %57 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 3
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @argv_array_pushl(i32* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %58, i32* null)
  %60 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 3
  %61 = load %struct.http_pack_request*, %struct.http_pack_request** %3, align 8
  %62 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @argv_array_push(i32* %60, i8* %64)
  %66 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 2
  store i32 1, i32* %68, align 4
  %69 = call i64 @run_command(%struct.child_process* %8)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %47
  %72 = load %struct.http_pack_request*, %struct.http_pack_request** %3, align 8
  %73 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @unlink(i8* %75)
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @unlink(i8* %77)
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @free(i8* %79)
  store i32 -1, i32* %2, align 4
  br label %114

81:                                               ; preds = %47
  %82 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %83 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @sha1_pack_index_name(i32 %84)
  %86 = call i32 @unlink(i8* %85)
  %87 = load %struct.http_pack_request*, %struct.http_pack_request** %3, align 8
  %88 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %92 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @sha1_pack_name(i32 %93)
  %95 = call i64 @finalize_object_file(i8* %90, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %81
  %98 = load i8*, i8** %6, align 8
  %99 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %100 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @sha1_pack_index_name(i32 %101)
  %103 = call i64 @finalize_object_file(i8* %98, i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97, %81
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @free(i8* %106)
  store i32 -1, i32* %2, align 4
  br label %114

108:                                              ; preds = %97
  %109 = load i32, i32* @the_repository, align 4
  %110 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %111 = call i32 @install_packed_git(i32 %109, %struct.packed_git* %110)
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @free(i8* %112)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %108, %105, %71
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @close_pack_index(%struct.packed_git*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @strip_suffix(i8*, i8*, i64*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i8* @xstrfmt(i8*, i32, i8*) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i32*) #2

declare dso_local i64 @run_command(%struct.child_process*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @sha1_pack_index_name(i32) #2

declare dso_local i64 @finalize_object_file(i8*, i8*) #2

declare dso_local i8* @sha1_pack_name(i32) #2

declare dso_local i32 @install_packed_git(i32, %struct.packed_git*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
