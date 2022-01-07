; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_has_dir_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_has_dir_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.entry_internal** }
%struct.entry_internal = type { i64, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)* @has_dir_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_dir_name(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.entry_internal*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = call i32 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_10__* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8* %23, i8** %10, align 8
  br label %24

24:                                               ; preds = %113, %62, %3
  br label %25

25:                                               ; preds = %39, %24
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 -1
  store i8* %27, i8** %10, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 47
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %40

32:                                               ; preds = %25
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ule i8* %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %115

39:                                               ; preds = %32
  br label %25

40:                                               ; preds = %31
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  store i64 %45, i64* %11, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @index_find(i64* %12, %struct.TYPE_11__* %46, i8* %47, i64 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 -1, i32* %4, align 4
  br label %115

56:                                               ; preds = %52
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i64 @index_remove_entry(%struct.TYPE_11__* %57, i64 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %114

62:                                               ; preds = %56
  br label %24

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %110, %63
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %65, %69
  br i1 %70, label %71, label %113

71:                                               ; preds = %64
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load %struct.entry_internal**, %struct.entry_internal*** %74, align 8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr inbounds %struct.entry_internal*, %struct.entry_internal** %75, i64 %76
  %78 = load %struct.entry_internal*, %struct.entry_internal** %77, align 8
  store %struct.entry_internal* %78, %struct.entry_internal** %13, align 8
  %79 = load %struct.entry_internal*, %struct.entry_internal** %13, align 8
  %80 = getelementptr inbounds %struct.entry_internal, %struct.entry_internal* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp ule i64 %81, %82
  br i1 %83, label %101, label %84

84:                                               ; preds = %71
  %85 = load %struct.entry_internal*, %struct.entry_internal** %13, align 8
  %86 = getelementptr inbounds %struct.entry_internal, %struct.entry_internal* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* %11, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 47
  br i1 %92, label %101, label %93

93:                                               ; preds = %84
  %94 = load %struct.entry_internal*, %struct.entry_internal** %13, align 8
  %95 = getelementptr inbounds %struct.entry_internal, %struct.entry_internal* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i64, i64* %11, align 8
  %99 = call i64 @memcmp(i8* %96, i8* %97, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93, %84, %71
  br label %113

102:                                              ; preds = %93
  %103 = load %struct.entry_internal*, %struct.entry_internal** %13, align 8
  %104 = getelementptr inbounds %struct.entry_internal, %struct.entry_internal* %103, i32 0, i32 2
  %105 = call i32 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_10__* %104)
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %115

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %12, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %12, align 8
  br label %64

113:                                              ; preds = %101, %64
  br label %24

114:                                              ; preds = %61
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %108, %55, %38
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_10__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @index_find(i64*, %struct.TYPE_11__*, i8*, i64, i32) #1

declare dso_local i64 @index_remove_entry(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
