; ModuleID = '/home/carl/AnghaBench/git/extr_reflog-walk.c_read_complete_reflog.c'
source_filename = "/home/carl/AnghaBench/git/extr_reflog-walk.c_read_complete_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complete_reflogs = type { i64, i32 }

@read_one_reflog = common dso_local global i32 0, align 4
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"refs/%s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"refs/heads/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.complete_reflogs* (i8*)* @read_complete_reflog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.complete_reflogs* @read_complete_reflog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.complete_reflogs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = call %struct.complete_reflogs* @xcalloc(i32 1, i32 16)
  store %struct.complete_reflogs* %7, %struct.complete_reflogs** %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @xstrdup(i8* %8)
  %10 = load %struct.complete_reflogs*, %struct.complete_reflogs** %3, align 8
  %11 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = load i32, i32* @read_one_reflog, align 4
  %14 = load %struct.complete_reflogs*, %struct.complete_reflogs** %3, align 8
  %15 = call i32 @for_each_reflog_ent(i8* %12, i32 %13, %struct.complete_reflogs* %14)
  %16 = load %struct.complete_reflogs*, %struct.complete_reflogs** %3, align 8
  %17 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* @RESOLVE_REF_READING, align 4
  %23 = call i8* @resolve_refdup(i8* %21, i32 %22, i32* null, i32* null)
  store i8* %23, i8** %5, align 8
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @read_one_reflog, align 4
  %29 = load %struct.complete_reflogs*, %struct.complete_reflogs** %3, align 8
  %30 = call i32 @for_each_reflog_ent(i8* %27, i32 %28, %struct.complete_reflogs* %29)
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @free(i8* %31)
  br label %33

33:                                               ; preds = %26, %20
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.complete_reflogs*, %struct.complete_reflogs** %3, align 8
  %36 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load i8*, i8** %2, align 8
  %41 = call i8* @xstrfmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %40)
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @read_one_reflog, align 4
  %44 = load %struct.complete_reflogs*, %struct.complete_reflogs** %3, align 8
  %45 = call i32 @for_each_reflog_ent(i8* %42, i32 %43, %struct.complete_reflogs* %44)
  %46 = load %struct.complete_reflogs*, %struct.complete_reflogs** %3, align 8
  %47 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %39
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i8*, i8** %2, align 8
  %54 = call i8* @xstrfmt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  store i8* %54, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* @read_one_reflog, align 4
  %57 = load %struct.complete_reflogs*, %struct.complete_reflogs** %3, align 8
  %58 = call i32 @for_each_reflog_ent(i8* %55, i32 %56, %struct.complete_reflogs* %57)
  br label %59

59:                                               ; preds = %50, %39
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @free(i8* %60)
  br label %62

62:                                               ; preds = %59, %34
  %63 = load %struct.complete_reflogs*, %struct.complete_reflogs** %3, align 8
  ret %struct.complete_reflogs* %63
}

declare dso_local %struct.complete_reflogs* @xcalloc(i32, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @for_each_reflog_ent(i8*, i32, %struct.complete_reflogs*) #1

declare dso_local i8* @resolve_refdup(i8*, i32, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xstrfmt(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
