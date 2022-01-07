; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_read_reuc.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_read_reuc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32*, i64* }

@reuc_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"reading reuc entries\00", align 1
@UINT32_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"reading reuc entry stage\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"reading reuc entry oid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i64)* @read_reuc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_reuc(%struct.TYPE_12__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* @reuc_cmp, align 4
  %22 = call i64 @git_vector_init(%struct.TYPE_13__* %20, i32 16, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %162

25:                                               ; preds = %18, %3
  br label %26

26:                                               ; preds = %157, %25
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %158

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @p_strnlen(i8* %30, i64 %31)
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 @index_error_invalid(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %4, align 4
  br label %162

40:                                               ; preds = %29
  %41 = load i8*, i8** %6, align 8
  %42 = call %struct.TYPE_11__* @reuc_entry_alloc(i8* %41)
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %11, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %44 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_11__* %43)
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 %48
  store i8* %50, i8** %6, align 8
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %110, %40
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %113

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @git__strntol64(i64* %12, i8* %55, i64 %56, i8** %8, i32 8)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = icmp eq i8* %63, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %8, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %66
  %72 = load i64, i64* %12, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* @UINT32_MAX, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74, %71, %66, %62, %59, %54
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %80 = call i32 @index_entry_reuc_free(%struct.TYPE_11__* %79)
  %81 = call i32 @index_error_invalid(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 %81, i32* %4, align 4
  br label %162

82:                                               ; preds = %74
  %83 = load i64, i64* %12, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  store i64 %83, i64* %89, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8*, i8** %6, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp ule i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %82
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %101 = call i32 @index_entry_reuc_free(%struct.TYPE_11__* %100)
  %102 = call i32 @index_error_invalid(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 %102, i32* %4, align 4
  br label %162

103:                                              ; preds = %82
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %7, align 8
  %106 = sub i64 %105, %104
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 %107
  store i8* %109, i8** %6, align 8
  br label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %51

113:                                              ; preds = %51
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %147, %113
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 3
  br i1 %116, label %117, label %150

117:                                              ; preds = %114
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %117
  br label %147

127:                                              ; preds = %117
  %128 = load i64, i64* %7, align 8
  %129 = icmp ult i64 %128, 20
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %132 = call i32 @index_entry_reuc_free(%struct.TYPE_11__* %131)
  %133 = call i32 @index_error_invalid(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %133, i32* %4, align 4
  br label %162

134:                                              ; preds = %127
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 @git_oid_fromraw(i32* %140, i8* %141)
  %143 = load i64, i64* %7, align 8
  %144 = sub i64 %143, 20
  store i64 %144, i64* %7, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 20
  store i8* %146, i8** %6, align 8
  br label %147

147:                                              ; preds = %134, %126
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %114

150:                                              ; preds = %114
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %154 = call i64 @git_vector_insert(%struct.TYPE_13__* %152, %struct.TYPE_11__* %153)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  store i32 -1, i32* %4, align 4
  br label %162

157:                                              ; preds = %150
  br label %26

158:                                              ; preds = %26
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = call i32 @git_vector_set_sorted(%struct.TYPE_13__* %160, i32 1)
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %158, %156, %130, %99, %78, %38, %24
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i64 @git_vector_init(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @p_strnlen(i8*, i64) #1

declare dso_local i32 @index_error_invalid(i8*) #1

declare dso_local %struct.TYPE_11__* @reuc_entry_alloc(i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_11__*) #1

declare dso_local i64 @git__strntol64(i64*, i8*, i64, i8**, i32) #1

declare dso_local i32 @index_entry_reuc_free(%struct.TYPE_11__*) #1

declare dso_local i32 @git_oid_fromraw(i32*, i8*) #1

declare dso_local i64 @git_vector_insert(%struct.TYPE_13__*, %struct.TYPE_11__*) #1

declare dso_local i32 @git_vector_set_sorted(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
