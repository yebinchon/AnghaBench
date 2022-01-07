; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_has_file_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_has_file_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.entry_internal** }
%struct.entry_internal = type { i64, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, i64, i32)* @has_file_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_file_name(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.entry_internal*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %10, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = call i32 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_9__* %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %12, align 8
  br label %23

23:                                               ; preds = %82, %70, %60, %4
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %30, label %83

30:                                               ; preds = %23
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.entry_internal**, %struct.entry_internal*** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %8, align 8
  %37 = getelementptr inbounds %struct.entry_internal*, %struct.entry_internal** %34, i64 %35
  %38 = load %struct.entry_internal*, %struct.entry_internal** %37, align 8
  store %struct.entry_internal* %38, %struct.entry_internal** %13, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.entry_internal*, %struct.entry_internal** %13, align 8
  %41 = getelementptr inbounds %struct.entry_internal, %struct.entry_internal* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp uge i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %83

45:                                               ; preds = %30
  %46 = load i8*, i8** %12, align 8
  %47 = load %struct.entry_internal*, %struct.entry_internal** %13, align 8
  %48 = getelementptr inbounds %struct.entry_internal, %struct.entry_internal* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @memcmp(i8* %46, i8* %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %83

54:                                               ; preds = %45
  %55 = load %struct.entry_internal*, %struct.entry_internal** %13, align 8
  %56 = getelementptr inbounds %struct.entry_internal, %struct.entry_internal* %55, i32 0, i32 2
  %57 = call i32 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_9__* %56)
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %23

61:                                               ; preds = %54
  %62 = load %struct.entry_internal*, %struct.entry_internal** %13, align 8
  %63 = getelementptr inbounds %struct.entry_internal, %struct.entry_internal* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 47
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %23

71:                                               ; preds = %61
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store i32 -1, i32* %5, align 4
  br label %84

75:                                               ; preds = %71
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %8, align 8
  %79 = call i64 @index_remove_entry(%struct.TYPE_10__* %76, i64 %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %83

82:                                               ; preds = %75
  br label %23

83:                                               ; preds = %81, %53, %44, %23
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %74
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_9__*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i64 @index_remove_entry(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
