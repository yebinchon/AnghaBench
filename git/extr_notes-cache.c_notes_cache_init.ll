; ModuleID = '/home/carl/AnghaBench/git/extr_notes-cache.c_notes_cache_init.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-cache.c_notes_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.notes_cache = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@NOTES_INIT_WRITABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"refs/notes/%s\00", align 1
@NOTES_INIT_EMPTY = common dso_local global i32 0, align 4
@combine_notes_overwrite = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @notes_cache_init(%struct.repository* %0, %struct.notes_cache* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.notes_cache*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.notes_cache* %1, %struct.notes_cache** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %12 = load i32, i32* @NOTES_INIT_WRITABLE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.notes_cache*, %struct.notes_cache** %6, align 8
  %14 = call i32 @memset(%struct.notes_cache* %13, i32 0, i32 8)
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @xstrdup(i8* %15)
  %17 = load %struct.notes_cache*, %struct.notes_cache** %6, align 8
  %18 = getelementptr inbounds %struct.notes_cache, %struct.notes_cache* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.repository*, %struct.repository** %5, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @notes_cache_match_validity(%struct.repository* %21, i32 %23, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @NOTES_INIT_EMPTY, align 4
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %27, %4
  %32 = load %struct.notes_cache*, %struct.notes_cache** %6, align 8
  %33 = getelementptr inbounds %struct.notes_cache, %struct.notes_cache* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @combine_notes_overwrite, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @init_notes(i32* %33, i32 %35, i32 %36, i32 %37)
  %39 = call i32 @strbuf_release(%struct.strbuf* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.notes_cache*, i32, i32) #2

declare dso_local i32 @xstrdup(i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @notes_cache_match_validity(%struct.repository*, i32, i8*) #2

declare dso_local i32 @init_notes(i32*, i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
