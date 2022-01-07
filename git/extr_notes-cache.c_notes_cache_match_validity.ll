; ModuleID = '/home/carl/AnghaBench/git/extr_notes-cache.c_notes_cache_match_validity.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-cache.c_notes_cache_match_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { i32 }
%struct.pretty_print_context = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, i8*)* @notes_cache_match_validity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notes_cache_match_validity(%struct.repository* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id, align 4
  %9 = alloca %struct.commit*, align 8
  %10 = alloca %struct.pretty_print_context, align 4
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @read_ref(i8* %14, %struct.object_id* %8)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.repository*, %struct.repository** %5, align 8
  %20 = call %struct.commit* @lookup_commit_reference_gently(%struct.repository* %19, %struct.object_id* %8, i32 1)
  store %struct.commit* %20, %struct.commit** %9, align 8
  %21 = load %struct.commit*, %struct.commit** %9, align 8
  %22 = icmp ne %struct.commit* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %38

24:                                               ; preds = %18
  %25 = call i32 @memset(%struct.pretty_print_context* %10, i32 0, i32 4)
  %26 = load %struct.commit*, %struct.commit** %9, align 8
  %27 = call i32 @format_commit_message(%struct.commit* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.strbuf* %11, %struct.pretty_print_context* %10)
  %28 = call i32 @strbuf_trim(%struct.strbuf* %11)
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @strcmp(i32 %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %12, align 4
  %36 = call i32 @strbuf_release(%struct.strbuf* %11)
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %24, %23, %17
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @read_ref(i8*, %struct.object_id*) #2

declare dso_local %struct.commit* @lookup_commit_reference_gently(%struct.repository*, %struct.object_id*, i32) #2

declare dso_local i32 @memset(%struct.pretty_print_context*, i32, i32) #2

declare dso_local i32 @format_commit_message(%struct.commit*, i8*, %struct.strbuf*, %struct.pretty_print_context*) #2

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
