; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_echo-server.c_after_read.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_echo-server.c_after_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32, i32 }

@UV_EOF = common dso_local global i32 0, align 4
@after_shutdown = common dso_local global i32 0, align 4
@server_closed = common dso_local global i32 0, align 4
@on_close = common dso_local global i32 0, align 4
@server = common dso_local global i32* null, align 8
@on_server_close = common dso_local global i32 0, align 4
@after_write = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"uv_write failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_5__*)* @after_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @after_read(i32* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @UV_EOF, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @free(i8* %20)
  %22 = call i32* @malloc(i32 4)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @after_shutdown, align 4
  %26 = call i64 @uv_shutdown(i32* %23, i32* %24, i32 %25)
  %27 = icmp eq i64 0, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  br label %114

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @free(i8* %36)
  br label %114

38:                                               ; preds = %30
  %39 = load i32, i32* @server_closed, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %90, label %41

41:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %86, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %89

46:                                               ; preds = %42
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 81
  br i1 %55, label %56, label %85

56:                                               ; preds = %46
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %56
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 83
  br i1 %71, label %72, label %80

72:                                               ; preds = %61
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* @on_close, align 4
  %79 = call i32 @uv_close(i32* %77, i32 %78)
  br label %114

80:                                               ; preds = %61, %56
  %81 = load i32*, i32** @server, align 8
  %82 = load i32, i32* @on_server_close, align 4
  %83 = call i32 @uv_close(i32* %81, i32 %82)
  store i32 1, i32* @server_closed, align 4
  br label %84

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %46
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %42

89:                                               ; preds = %42
  br label %90

90:                                               ; preds = %89, %38
  %91 = call i32* @malloc(i32 8)
  %92 = bitcast i32* %91 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %92, %struct.TYPE_4__** %8, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %94 = icmp ne %struct.TYPE_4__* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @ASSERT(i32 %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @uv_buf_init(i8* %99, i32 %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32*, i32** %4, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* @after_write, align 4
  %110 = call i64 @uv_write(i32* %105, i32* %106, i32* %108, i32 1, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %90
  %113 = call i32 @FATAL(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %114

114:                                              ; preds = %12, %33, %72, %112, %90
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @uv_shutdown(i32*, i32*, i32) #1

declare dso_local i32 @uv_close(i32*, i32) #1

declare dso_local i32 @uv_buf_init(i8*, i32) #1

declare dso_local i64 @uv_write(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @FATAL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
