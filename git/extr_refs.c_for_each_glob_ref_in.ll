; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_for_each_glob_ref_in.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_for_each_glob_ref_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_filter = type { i8*, i8*, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@filter_refs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @for_each_glob_ref_in(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca %struct.ref_filter, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @starts_with(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = call i32 @strbuf_addstr(%struct.strbuf* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %28

21:                                               ; preds = %15, %4
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strbuf_addstr(%struct.strbuf* %9, i8* %25)
  br label %27

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strbuf_addstr(%struct.strbuf* %9, i8* %29)
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @has_glob_specials(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = call i32 @strbuf_complete(%struct.strbuf* %9, i8 signext 47)
  %36 = call i32 @strbuf_addch(%struct.strbuf* %9, i8 signext 42)
  br label %37

37:                                               ; preds = %34, %28
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %10, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %10, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %10, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %10, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* @filter_refs, align 4
  %48 = call i32 @for_each_ref(i32 %47, %struct.ref_filter* %10)
  store i32 %48, i32* %11, align 4
  %49 = call i32 @strbuf_release(%struct.strbuf* %9)
  %50 = load i32, i32* %11, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @starts_with(i8*, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @has_glob_specials(i8*) #2

declare dso_local i32 @strbuf_complete(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @for_each_ref(i32, %struct.ref_filter*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
