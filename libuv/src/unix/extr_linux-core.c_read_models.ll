; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_linux-core.c_read_models.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_linux-core.c_read_models.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@read_models.model_marker = internal constant [14 x i8] c"model name\09: \00", align 1
@read_models.speed_marker = internal constant [12 x i8] c"cpu MHz\09\09: \00", align 1
@.str = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@errno = common dso_local global i32 0, align 4
@UV_ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @read_models to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_models(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = call i32* @uv__open_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %11, align 8
  %13 = load i32*, i32** %11, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @UV__ERR(i32 %16)
  store i32 %17, i32* %3, align 4
  br label %113

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %76, %64, %47, %18
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %21 = load i32*, i32** %11, align 8
  %22 = call i64 @fgets(i8* %20, i32 1024, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %77

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %30 = call i64 @strncmp(i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @read_models.model_marker, i64 0, i64 0), i32 13)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %34 = getelementptr inbounds i8, i8* %33, i64 14
  %35 = getelementptr inbounds i8, i8* %34, i64 -1
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = sub nsw i64 %38, 1
  %40 = call i8* @uv__strndup(i8* %36, i64 %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @fclose(i32* %44)
  %46 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %46, i32* %3, align 4
  br label %113

47:                                               ; preds = %32
  %48 = load i8*, i8** %10, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %7, align 4
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i8* %48, i8** %54, align 8
  br label %19

55:                                               ; preds = %28
  br label %56

56:                                               ; preds = %55, %24
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %62 = call i64 @strncmp(i8* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @read_models.speed_marker, i64 0, i64 0), i32 11)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %66 = getelementptr inbounds i8, i8* %65, i64 12
  %67 = getelementptr inbounds i8, i8* %66, i64 -1
  %68 = call i32 @atoi(i8* %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 %68, i32* %74, align 8
  br label %19

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75, %56
  br label %19

77:                                               ; preds = %19
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @fclose(i32* %78)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = icmp ugt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sub i32 %84, 1
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %6, align 8
  br label %90

90:                                               ; preds = %82, %77
  br label %91

91:                                               ; preds = %104, %90
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %91
  %96 = load i8*, i8** %6, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = call i64 @strlen(i8* %97)
  %99 = call i8* @uv__strndup(i8* %96, i64 %98)
  store i8* %99, i8** %10, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %103, i32* %3, align 4
  br label %113

104:                                              ; preds = %95
  %105 = load i8*, i8** %10, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = load i32, i32* %7, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %7, align 4
  %109 = zext i32 %107 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i8* %105, i8** %111, align 8
  br label %91

112:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %102, %43, %15
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32* @uv__open_file(i8*) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @uv__strndup(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
