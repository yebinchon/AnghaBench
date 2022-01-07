; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_cli.c_run_client.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_cli.c_run_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"socket(2) failed\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"connect(2) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, i32, i32*, i8*, i8*, %struct.TYPE_7__*, i32, i32)* @run_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_client(%struct.sockaddr* %0, i32 %1, i32* %2, i8* %3, i8* %4, %struct.TYPE_7__* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__, align 4
  %20 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8*, i8** %13, align 8
  %25 = call i32 @resolve_esni_keys(i8* %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = bitcast %struct.TYPE_8__* %23 to i8*
  %28 = bitcast %struct.TYPE_8__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SOCK_STREAM, align 4
  %33 = call i32 @socket(i32 %31, i32 %32, i32 0)
  store i32 %33, i32* %18, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %8
  %36 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %61

37:                                               ; preds = %8
  %38 = load i32, i32* %18, align 4
  %39 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @connect(i32 %38, %struct.sockaddr* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %61

45:                                               ; preds = %37
  %46 = load i32, i32* %18, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @handle_connection(i32 %46, i32* %47, i8* %48, i8* %49, %struct.TYPE_7__* %50, i32 %51, i32 %52)
  store i32 %53, i32* %20, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @free(i32 %58)
  %60 = load i32, i32* %20, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %45, %43, %35
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @resolve_esni_keys(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @handle_connection(i32, i32*, i8*, i8*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
