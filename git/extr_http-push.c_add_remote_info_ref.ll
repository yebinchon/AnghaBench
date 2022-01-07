; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_add_remote_info_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_add_remote_info_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.remote_ls_ctx = type { i8*, i64 }
%struct.strbuf = type { i32 }
%struct.object = type { i64, i32 }
%struct.ref = type { i32 }

@repo = common dso_local global %struct.TYPE_2__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to fetch ref %s from %s\0A\00", align 1
@aborted = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Unable to parse object %s for remote ref %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@OBJ_TAG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"%s\09%s^{}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.remote_ls_ctx*)* @add_remote_info_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_remote_info_ref(%struct.remote_ls_ctx* %0) #0 {
  %2 = alloca %struct.remote_ls_ctx*, align 8
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.object*, align 8
  %5 = alloca %struct.ref*, align 8
  store %struct.remote_ls_ctx* %0, %struct.remote_ls_ctx** %2, align 8
  %6 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.strbuf*
  store %struct.strbuf* %9, %struct.strbuf** %3, align 8
  %10 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call %struct.ref* @alloc_ref(i8* %12)
  store %struct.ref* %13, %struct.ref** %5, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.ref*, %struct.ref** %5, align 8
  %18 = call i64 @http_fetch_ref(i8* %16, %struct.ref* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load i32, i32* @stderr, align 4
  %22 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %27)
  store i32 1, i32* @aborted, align 4
  %29 = load %struct.ref*, %struct.ref** %5, align 8
  %30 = call i32 @free(%struct.ref* %29)
  br label %85

31:                                               ; preds = %1
  %32 = load i32, i32* @the_repository, align 4
  %33 = load %struct.ref*, %struct.ref** %5, align 8
  %34 = getelementptr inbounds %struct.ref, %struct.ref* %33, i32 0, i32 0
  %35 = call %struct.object* @parse_object(i32 %32, i32* %34)
  store %struct.object* %35, %struct.object** %4, align 8
  %36 = load %struct.object*, %struct.object** %4, align 8
  %37 = icmp ne %struct.object* %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @stderr, align 4
  %40 = load %struct.ref*, %struct.ref** %5, align 8
  %41 = getelementptr inbounds %struct.ref, %struct.ref* %40, i32 0, i32 0
  %42 = call i8* @oid_to_hex(i32* %41)
  %43 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %45)
  store i32 1, i32* @aborted, align 4
  %47 = load %struct.ref*, %struct.ref** %5, align 8
  %48 = call i32 @free(%struct.ref* %47)
  br label %85

49:                                               ; preds = %31
  %50 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %51 = load %struct.ref*, %struct.ref** %5, align 8
  %52 = getelementptr inbounds %struct.ref, %struct.ref* %51, i32 0, i32 0
  %53 = call i8* @oid_to_hex(i32* %52)
  %54 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %55 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strbuf_addf(%struct.strbuf* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %53, i8* %56)
  %58 = load %struct.object*, %struct.object** %4, align 8
  %59 = getelementptr inbounds %struct.object, %struct.object* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @OBJ_TAG, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %49
  %64 = load i32, i32* @the_repository, align 4
  %65 = load %struct.object*, %struct.object** %4, align 8
  %66 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %67 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call %struct.object* @deref_tag(i32 %64, %struct.object* %65, i8* %68, i32 0)
  store %struct.object* %69, %struct.object** %4, align 8
  %70 = load %struct.object*, %struct.object** %4, align 8
  %71 = icmp ne %struct.object* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %74 = load %struct.object*, %struct.object** %4, align 8
  %75 = getelementptr inbounds %struct.object, %struct.object* %74, i32 0, i32 1
  %76 = call i8* @oid_to_hex(i32* %75)
  %77 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %78 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strbuf_addf(%struct.strbuf* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %76, i8* %79)
  br label %81

81:                                               ; preds = %72, %63
  br label %82

82:                                               ; preds = %81, %49
  %83 = load %struct.ref*, %struct.ref** %5, align 8
  %84 = call i32 @free(%struct.ref* %83)
  br label %85

85:                                               ; preds = %82, %38, %20
  ret void
}

declare dso_local %struct.ref* @alloc_ref(i8*) #1

declare dso_local i64 @http_fetch_ref(i8*, %struct.ref*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @free(%struct.ref*) #1

declare dso_local %struct.object* @parse_object(i32, i32*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i8*) #1

declare dso_local %struct.object* @deref_tag(i32, %struct.object*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
