; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_hash_target.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_hash_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_13__*, i32, i32, i32, i32, i32*, i8*, i32)* }
%struct.TYPE_12__ = type { i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@HCBUFSIZ_LARGE = common dso_local global i32 0, align 4
@OPTS_TYPE_BINARY_HASHFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @status_get_hash_target(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %4, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %5, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %6, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %113

31:                                               ; preds = %26, %1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_13__*, i32, i32, i32, i32, i32*, i8*, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32, i32, i32*, i8*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.TYPE_13__*, i32, i32, i32, i32, i32*, i8*, i32)* %34, @MODULE_DEFAULT
  br i1 %35, label %36, label %74

36:                                               ; preds = %31
  %37 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %38 = call i64 @hcmalloc(i32 %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %7, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_13__*, i32, i32, i32, i32, i32*, i8*, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32, i32, i32*, i8*, i32)** %41, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %58 = call i32 %42(%struct.TYPE_13__* %43, i32 %46, i32 %49, i32 %52, i32 %55, i32* null, i8* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i64 @hcmalloc(i32 %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @memcpy(i8* %63, i8* %64, i32 %65)
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i8*, i8** %9, align 8
  store i8* %73, i8** %2, align 8
  br label %118

74:                                               ; preds = %31
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @OPTS_TYPE_BINARY_HASHFILE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i8* @hcstrdup(i32* %84)
  store i8* %85, i8** %2, align 8
  br label %118

86:                                               ; preds = %74
  %87 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %88 = call i64 @hcmalloc(i32 %87)
  %89 = inttoptr i64 %88 to i8*
  store i8* %89, i8** %10, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %101 = call i32 @hash_encode(%struct.TYPE_13__* %92, %struct.TYPE_12__* %95, %struct.TYPE_11__* %98, i8* %99, i32 %100, i32 0, i32 0)
  store i32 %101, i32* %11, align 4
  %102 = load i8*, i8** %10, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8 0, i8* %105, align 1
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 @compress_terminal_line_length(i8* %106, i32 19, i32 6)
  %108 = load i8*, i8** %10, align 8
  %109 = call i8* @strdup(i8* %108)
  store i8* %109, i8** %12, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i8*, i8** %12, align 8
  store i8* %112, i8** %2, align 8
  br label %118

113:                                              ; preds = %26
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = call i8* @hcstrdup(i32* %116)
  store i8* %117, i8** %2, align 8
  br label %118

118:                                              ; preds = %113, %86, %81, %36
  %119 = load i8*, i8** %2, align 8
  ret i8* %119
}

declare dso_local i32 @MODULE_DEFAULT(%struct.TYPE_13__*, i32, i32, i32, i32, i32*, i8*, i32) #1

declare dso_local i64 @hcmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @hcstrdup(i32*) #1

declare dso_local i32 @hash_encode(%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, i8*, i32, i32, i32) #1

declare dso_local i32 @compress_terminal_line_length(i8*, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
