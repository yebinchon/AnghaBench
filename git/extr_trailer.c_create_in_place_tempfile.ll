; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_create_in_place_tempfile.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_create_in_place_tempfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.stat = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [18 x i8] c"could not stat %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"file %s is not a regular file\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"file %s is not writable by user\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"git-interpret-trailers-XXXXXX\00", align 1
@trailers_tempfile = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"could not open temporary file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @create_in_place_tempfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_in_place_tempfile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %7 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @stat(i8* %8, %struct.stat* %3)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 (i32, ...) @die_errno(i32 %12, i8* %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @S_ISREG(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @die(i32 %21, i8* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @S_IWUSR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @die(i32 %31, i8* %32)
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i8*, i8** %2, align 8
  %36 = call i8* @strrchr(i8* %35, i8 signext 47)
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i8*, i8** %2, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %2, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = add nsw i64 %45, 1
  %47 = trunc i64 %46 to i32
  %48 = call i32 @strbuf_add(%struct.strbuf* %4, i8* %40, i32 %47)
  br label %49

49:                                               ; preds = %39, %34
  %50 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %51 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @xmks_tempfile_m(i32 %52, i32 %54)
  store i32 %55, i32* @trailers_tempfile, align 4
  %56 = call i32 @strbuf_release(%struct.strbuf* %4)
  %57 = load i32, i32* @trailers_tempfile, align 4
  %58 = call i32* @fdopen_tempfile(i32 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %58, i32** %6, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %49
  %62 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %63 = call i32 (i32, ...) @die_errno(i32 %62)
  br label %64

64:                                               ; preds = %61, %49
  %65 = load i32*, i32** %6, align 8
  ret i32* %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @die_errno(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @xmks_tempfile_m(i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32* @fdopen_tempfile(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
