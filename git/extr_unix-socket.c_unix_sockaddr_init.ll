; ModuleID = '/home/carl/AnghaBench/git/extr_unix-socket.c_unix_sockaddr_init.c'
source_filename = "/home/carl/AnghaBench/git/extr_unix-socket.c_unix_sockaddr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.sockaddr_un = type { i32, i32 }
%struct.unix_sockaddr_context = type { i32* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_un*, i8*, %struct.unix_sockaddr_context*)* @unix_sockaddr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_sockaddr_init(%struct.sockaddr_un* %0, i8* %1, %struct.unix_sockaddr_context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_un*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.unix_sockaddr_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.strbuf, align 4
  store %struct.sockaddr_un* %0, %struct.sockaddr_un** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.unix_sockaddr_context* %2, %struct.unix_sockaddr_context** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  %15 = load %struct.unix_sockaddr_context*, %struct.unix_sockaddr_context** %7, align 8
  %16 = getelementptr inbounds %struct.unix_sockaddr_context, %struct.unix_sockaddr_context* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ugt i64 %18, 4
  br i1 %19, label %20, label %59

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @find_last_dir_sep(i8* %21)
  store i8* %22, i8** %9, align 8
  %23 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %27, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %71

28:                                               ; preds = %20
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ugt i64 %36, 4
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %39, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %71

40:                                               ; preds = %28
  %41 = call i64 @strbuf_getcwd(%struct.strbuf* %11)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %71

44:                                               ; preds = %40
  %45 = call i32* @strbuf_detach(%struct.strbuf* %11, i32* null)
  %46 = load %struct.unix_sockaddr_context*, %struct.unix_sockaddr_context** %7, align 8
  %47 = getelementptr inbounds %struct.unix_sockaddr_context, %struct.unix_sockaddr_context* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = call i64 @chdir_len(i8* %48, i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %71

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %3
  %60 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %61 = call i32 @memset(%struct.sockaddr_un* %60, i32 0, i32 8)
  %62 = load i32, i32* @AF_UNIX, align 4
  %63 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %64 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %66 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @memcpy(i32 %67, i8* %68, i32 %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %59, %57, %43, %38, %26
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @find_last_dir_sep(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strbuf_getcwd(%struct.strbuf*) #1

declare dso_local i32* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i64 @chdir_len(i8*, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
