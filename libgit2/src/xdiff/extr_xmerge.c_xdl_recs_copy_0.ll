; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xmerge.c_xdl_recs_copy_0.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xmerge.c_xdl_recs_copy_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, %struct.TYPE_9__*, i32, i32, i32, i32, i8*)* @xdl_recs_copy_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdl_recs_copy_0(i64* %0, i32 %1, %struct.TYPE_9__* %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_8__**, align 8
  %19 = alloca i64, align 8
  store i64* %0, i64** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i64 0, i64* %19, align 8
  %20 = load i64*, i64** %10, align 8
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %26, align 8
  br label %33

28:                                               ; preds = %8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %31, align 8
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi %struct.TYPE_8__** [ %27, %23 ], [ %32, %28 ]
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %34, i64 %36
  store %struct.TYPE_8__** %37, %struct.TYPE_8__*** %18, align 8
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %136

41:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %68, %41
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = load i8*, i8** %17, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load i8*, i8** %17, align 8
  %51 = load i64, i64* %19, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %18, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %53, i64 %55
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %18, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %60, i64 %62
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @memcpy(i8* %52, i8* %59, i32 %66)
  br label %68

68:                                               ; preds = %49, %46
  %69 = load i64, i64* %19, align 8
  %70 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %18, align 8
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %70, i64 %73
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %19, i64 %69, i32 %77)
  br label %42

79:                                               ; preds = %42
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %133

82:                                               ; preds = %79
  %83 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %18, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %83, i64 %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %82
  %94 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %18, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %94, i64 %97
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 10
  br i1 %108, label %109, label %132

109:                                              ; preds = %93, %82
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load i8*, i8** %17, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i8*, i8** %17, align 8
  %117 = load i64, i64* %19, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8 13, i8* %118, align 1
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i64, i64* %19, align 8
  %121 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %19, i64 %120, i32 1)
  br label %122

122:                                              ; preds = %119, %109
  %123 = load i8*, i8** %17, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i8*, i8** %17, align 8
  %127 = load i64, i64* %19, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8 10, i8* %128, align 1
  br label %129

129:                                              ; preds = %125, %122
  %130 = load i64, i64* %19, align 8
  %131 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %19, i64 %130, i32 1)
  br label %132

132:                                              ; preds = %129, %93
  br label %133

133:                                              ; preds = %132, %79
  %134 = load i64, i64* %19, align 8
  %135 = load i64*, i64** %10, align 8
  store i64 %134, i64* %135, align 8
  store i32 0, i32* %9, align 4
  br label %136

136:                                              ; preds = %133, %40
  %137 = load i32, i32* %9, align 4
  ret i32 %137
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
