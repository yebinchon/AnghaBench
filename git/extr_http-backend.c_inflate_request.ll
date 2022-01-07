; ModuleID = '/home/carl/AnghaBench/git/extr_http-backend.c_inflate_request.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-backend.c_inflate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i8*, i32, i64 }

@.str = private unnamed_addr constant [47 x i8] c"request ended in the middle of the gzip stream\00", align 1
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"zlib error inflating request, result %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i64)* @inflate_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inflate_request(i8* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [8192 x i8], align 16
  %12 = alloca [8192 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %13, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp uge i64 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %14, align 4
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %15, align 8
  %23 = call i32 @memset(%struct.TYPE_6__* %9, i32 0, i32 40)
  %24 = call i32 @git_inflate_init_gzip_only(%struct.TYPE_6__* %9)
  br label %25

25:                                               ; preds = %4, %111
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i64 0, i64* %16, align 8
  br label %35

32:                                               ; preds = %28
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @read_request(i32 0, i8** %10, i64 %33)
  store i64 %34, i64* %16, align 8
  br label %35

35:                                               ; preds = %32, %31
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  br label %63

38:                                               ; preds = %25
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i64, i64* %15, align 8
  %43 = icmp ule i64 %42, 8192
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i64, i64* %15, align 8
  store i64 %45, i64* %17, align 8
  br label %47

46:                                               ; preds = %41, %38
  store i64 8192, i64* %17, align 8
  br label %47

47:                                               ; preds = %46, %44
  %48 = getelementptr inbounds [8192 x i8], [8192 x i8]* %11, i64 0, i64 0
  %49 = load i64, i64* %17, align 8
  %50 = call i64 @xread(i32 0, i8* %48, i64 %49)
  store i64 %50, i64* %16, align 8
  %51 = getelementptr inbounds [8192 x i8], [8192 x i8]* %11, i64 0, i64 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load i64, i64* %16, align 8
  %57 = icmp ugt i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* %15, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %15, align 8
  br label %62

62:                                               ; preds = %58, %55, %47
  br label %63

63:                                               ; preds = %62, %35
  %64 = load i64, i64* %16, align 8
  %65 = icmp ule i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i64, i64* %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %110, %68
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 0, %73
  br i1 %74, label %75, label %111

75:                                               ; preds = %71
  %76 = getelementptr inbounds [8192 x i8], [8192 x i8]* %12, i64 0, i64 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i8* %76, i8** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  store i32 8192, i32* %78, align 8
  %79 = load i32, i32* @Z_NO_FLUSH, align 4
  %80 = call i32 @git_inflate(%struct.TYPE_6__* %9, i32 %79)
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* @Z_OK, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %75
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @Z_STREAM_END, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* %18, align 4
  %90 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %84, %75
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %13, align 8
  %95 = sub i64 %93, %94
  store i64 %95, i64* %16, align 8
  %96 = load i32, i32* %6, align 4
  %97 = getelementptr inbounds [8192 x i8], [8192 x i8]* %12, i64 0, i64 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %13, align 8
  %101 = sub i64 %99, %100
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 @write_to_child(i32 %96, i8* %97, i64 %101, i8* %102)
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %13, align 8
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* @Z_STREAM_END, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %91
  br label %112

110:                                              ; preds = %91
  br label %71

111:                                              ; preds = %71
  br label %25

112:                                              ; preds = %109
  %113 = call i32 @git_inflate_end(%struct.TYPE_6__* %9)
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @close(i32 %114)
  %116 = load i8*, i8** %10, align 8
  %117 = call i32 @free(i8* %116)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @git_inflate_init_gzip_only(%struct.TYPE_6__*) #1

declare dso_local i64 @read_request(i32, i8**, i64) #1

declare dso_local i64 @xread(i32, i8*, i64) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @git_inflate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @write_to_child(i32, i8*, i64, i8*) #1

declare dso_local i32 @git_inflate_end(%struct.TYPE_6__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
