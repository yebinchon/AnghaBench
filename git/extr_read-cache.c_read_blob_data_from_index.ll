; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_read_blob_data_from_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_read_blob_data_from_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }

@OBJ_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_blob_data_from_index(%struct.index_state* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.index_state*, %struct.index_state** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @index_name_pos(%struct.index_state* %16, i8* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %68

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 0, %23
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %64, %22
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.index_state*, %struct.index_state** %5, align 8
  %32 = getelementptr inbounds %struct.index_state, %struct.index_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.index_state*, %struct.index_state** %5, align 8
  %37 = getelementptr inbounds %struct.index_state, %struct.index_state* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strcmp(i32 %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %35, %29, %26
  %50 = phi i1 [ false, %29 ], [ false, %26 ], [ %48, %35 ]
  br i1 %50, label %51, label %67

51:                                               ; preds = %49
  %52 = load %struct.index_state*, %struct.index_state** %5, align 8
  %53 = getelementptr inbounds %struct.index_state, %struct.index_state* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = call i32 @ce_stage(%struct.TYPE_2__* %58)
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %61, %51
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %26

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %67, %3
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i8* null, i8** %4, align 8
  br label %99

72:                                               ; preds = %68
  %73 = load %struct.index_state*, %struct.index_state** %5, align 8
  %74 = getelementptr inbounds %struct.index_state, %struct.index_state* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %75, i64 %77
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = call i8* @read_object_file(i32* %80, i32* %11, i64* %10)
  store i8* %81, i8** %12, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @OBJ_BLOB, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84, %72
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @free(i8* %89)
  store i8* null, i8** %4, align 8
  br label %99

91:                                               ; preds = %84
  %92 = load i64*, i64** %7, align 8
  %93 = icmp ne i64* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i64, i64* %10, align 8
  %96 = load i64*, i64** %7, align 8
  store i64 %95, i64* %96, align 8
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i8*, i8** %12, align 8
  store i8* %98, i8** %4, align 8
  br label %99

99:                                               ; preds = %97, %88, %71
  %100 = load i8*, i8** %4, align 8
  ret i8* %100
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @ce_stage(%struct.TYPE_2__*) #1

declare dso_local i8* @read_object_file(i32*, i32*, i64*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
