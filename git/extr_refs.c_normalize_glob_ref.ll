; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_normalize_glob_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_normalize_glob_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.string_list_item = type { i32*, i32* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"pattern must not start with '/'\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @normalize_glob_ref(%struct.string_list_item* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.string_list_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 4
  store %struct.string_list_item* %0, %struct.string_list_item** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %9 = load i8*, i8** %6, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 47
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 @BUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* %19)
  br label %28

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @starts_with(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* %29)
  %31 = call i32 @strbuf_strip_suffix(%struct.strbuf* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32* @strbuf_detach(%struct.strbuf* %7, i32* null)
  %33 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %34 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @has_glob_specials(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %43

39:                                               ; preds = %28
  %40 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %41 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  br label %43

43:                                               ; preds = %39, %38
  %44 = phi i32* [ null, %38 ], [ %42, %39 ]
  %45 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %46 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @starts_with(i8*, i8*) #2

declare dso_local i32 @strbuf_strip_suffix(%struct.strbuf*, i8*) #2

declare dso_local i32* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i64 @has_glob_specials(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
