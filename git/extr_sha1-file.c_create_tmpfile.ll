; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_create_tmpfile.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_create_tmpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"tmp_obj_XXXXXX\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"/tmp_obj_XXXXXX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i8*)* @create_tmpfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_tmpfile(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @directory_size(i8* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %11 = call i32 @strbuf_reset(%struct.strbuf* %10)
  %12 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @strbuf_add(%struct.strbuf* %12, i8* %13, i32 %14)
  %16 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %17 = call i32 @strbuf_addstr(%struct.strbuf* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @git_mkstemp_mode(i32 %20, i32 292)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %24
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @ENOENT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %27
  %32 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %33 = call i32 @strbuf_reset(%struct.strbuf* %32)
  %34 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @strbuf_add(%struct.strbuf* %34, i8* %35, i32 %37)
  %39 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @mkdir(i32 %41, i32 511)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @EEXIST, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %65

49:                                               ; preds = %44, %31
  %50 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %51 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @adjust_shared_perm(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %65

56:                                               ; preds = %49
  %57 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %58 = call i32 @strbuf_addstr(%struct.strbuf* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @git_mkstemp_mode(i32 %61, i32 292)
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %56, %27, %24, %2
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %55, %48
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @directory_size(i8*) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @git_mkstemp_mode(i32, i32) #1

declare dso_local i64 @mkdir(i32, i32) #1

declare dso_local i64 @adjust_shared_perm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
