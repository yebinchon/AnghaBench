; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_git.c_gen_proto.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_git.c_gen_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.gen_proto.host = private unnamed_addr constant [6 x i8] c"host=\00", align 1
@GIT_ERROR_NET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malformed URL\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%04x%s %s%c%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @gen_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_proto(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [6 x i8], align 1
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = bitcast [6 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.gen_proto.host, i32 0, i32 0), i64 6, i1 false)
  %13 = load i8*, i8** %7, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 47)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @GIT_ERROR_NET, align 4
  %19 = call i32 @git_error_set(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %85

20:                                               ; preds = %3
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 126
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %9, align 8
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i8*, i8** %7, align 8
  %32 = call i8* @strchr(i8* %31, i8 signext 58)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 47)
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = add nsw i32 4, %40
  %42 = add nsw i32 %41, 1
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = add nsw i32 %42, %44
  %46 = add nsw i32 %45, 1
  %47 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %48 = call i32 @strlen(i8* %47)
  %49 = add nsw i32 %46, %48
  %50 = sext i32 %49 to i64
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = add nsw i64 %50, %55
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %11, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @git_buf_grow(i32* %58, i64 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = load i64, i64* %11, align 8
  %63 = and i64 %62, 65535
  %64 = trunc i64 %63 to i32
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %68 = call i32 @git_buf_printf(i32* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %64, i8* %65, i8* %66, i32 0, i8* %67)
  %69 = load i32*, i32** %5, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @git_buf_put(i32* %69, i8* %70, i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @git_buf_putc(i32* %78, i8 signext 0)
  %80 = load i32*, i32** %5, align 8
  %81 = call i64 @git_buf_oom(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %85

84:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %83, %17
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @git_buf_grow(i32*, i64) #2

declare dso_local i32 @git_buf_printf(i32*, i8*, i32, i8*, i8*, i32, i8*) #2

declare dso_local i32 @git_buf_put(i32*, i8*, i32) #2

declare dso_local i32 @git_buf_putc(i32*, i8 signext) #2

declare dso_local i64 @git_buf_oom(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
