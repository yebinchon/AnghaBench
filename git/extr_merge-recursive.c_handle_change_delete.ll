; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_change_delete.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_change_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i8*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.diff_filespec = type { i32 }

@.str = private unnamed_addr constant [84 x i8] c"CONFLICT (%s/delete): %s deleted in %s and %s in %s. Version %s of %s left in tree.\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"CONFLICT (%s/delete): %s deleted in %s and %s to %s in %s. Version %s of %s left in tree.\00", align 1
@.str.2 = private unnamed_addr constant [90 x i8] c"CONFLICT (%s/delete): %s deleted in %s and %s in %s. Version %s of %s left in tree at %s.\00", align 1
@.str.3 = private unnamed_addr constant [96 x i8] c"CONFLICT (%s/delete): %s deleted in %s and %s to %s in %s. Version %s of %s left in tree at %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, i8*, i8*, %struct.diff_filespec*, %struct.diff_filespec*, i8*, i8*, i8*, i8*)* @handle_change_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_change_delete(%struct.merge_options* %0, i8* %1, i8* %2, %struct.diff_filespec* %3, %struct.diff_filespec* %4, i8* %5, i8* %6, i8* %7, i8* %8) #0 {
  %10 = alloca %struct.merge_options*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.diff_filespec*, align 8
  %14 = alloca %struct.diff_filespec*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.merge_options* %0, %struct.merge_options** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store %struct.diff_filespec* %3, %struct.diff_filespec** %13, align 8
  store %struct.diff_filespec* %4, %struct.diff_filespec** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i8* %8, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %22 = load i8*, i8** %11, align 8
  store i8* %22, i8** %20, align 8
  store i32 0, i32* %21, align 4
  %23 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %24 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %30 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @dir_in_way(i32 %27, i8* %28, i32 %36, i32 0)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %9
  %40 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %41 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %39
  %47 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i64 @would_lose_untracked(%struct.merge_options* %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46, %9
  %52 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = call i8* @unique_path(%struct.merge_options* %52, i8* %53, i8* %54)
  store i8* %55, i8** %19, align 8
  store i8* %55, i8** %20, align 8
  br label %56

56:                                               ; preds = %51, %46, %39
  %57 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %58 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %56
  %64 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %65 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @remove_file_from_index(i32 %68, i8* %69)
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %21, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %63
  %74 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %75 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %76 = load i8*, i8** %20, align 8
  %77 = call i32 @update_file(%struct.merge_options* %74, i32 0, %struct.diff_filespec* %75, i8* %76)
  store i32 %77, i32* %21, align 4
  br label %78

78:                                               ; preds = %73, %63
  br label %153

79:                                               ; preds = %56
  %80 = load i8*, i8** %19, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %109, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %12, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %82
  %86 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %87 = call i32 @_(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  %88 = load i8*, i8** %17, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = load i8*, i8** %16, align 8
  %91 = load i8*, i8** %18, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 (%struct.merge_options*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, ...) @output(%struct.merge_options* %86, i32 1, i32 %87, i8* %88, i8* %89, i8* %90, i8* %91, i8* %92, i8* %93, i8* %94)
  br label %108

96:                                               ; preds = %82
  %97 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %98 = call i32 @_(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i8*, i8** %17, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = load i8*, i8** %18, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = load i8*, i8** %15, align 8
  %105 = load i8*, i8** %15, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 (%struct.merge_options*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, ...) @output(%struct.merge_options* %97, i32 1, i32 %98, i8* %99, i8* %100, i8* %101, i8* %102, i8* %103, i8* %104, i8* %105, i8* %106)
  br label %108

108:                                              ; preds = %96, %85
  br label %138

109:                                              ; preds = %79
  %110 = load i8*, i8** %12, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %124, label %112

112:                                              ; preds = %109
  %113 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %114 = call i32 @_(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i8*, i8** %17, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = load i8*, i8** %18, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = load i8*, i8** %15, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = load i8*, i8** %19, align 8
  %123 = call i32 (%struct.merge_options*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, ...) @output(%struct.merge_options* %113, i32 1, i32 %114, i8* %115, i8* %116, i8* %117, i8* %118, i8* %119, i8* %120, i8* %121, i8* %122)
  br label %137

124:                                              ; preds = %109
  %125 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %126 = call i32 @_(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i8*, i8** %17, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = load i8*, i8** %16, align 8
  %130 = load i8*, i8** %18, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = load i8*, i8** %15, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = load i8*, i8** %19, align 8
  %136 = call i32 (%struct.merge_options*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, ...) @output(%struct.merge_options* %125, i32 1, i32 %126, i8* %127, i8* %128, i8* %129, i8* %130, i8* %131, i8* %132, i8* %133, i8* %134, i8* %135)
  br label %137

137:                                              ; preds = %124, %112
  br label %138

138:                                              ; preds = %137, %108
  %139 = load i8*, i8** %15, align 8
  %140 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %141 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %139, %142
  br i1 %143, label %147, label %144

144:                                              ; preds = %138
  %145 = load i8*, i8** %19, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %144, %138
  %148 = load %struct.merge_options*, %struct.merge_options** %10, align 8
  %149 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %150 = load i8*, i8** %20, align 8
  %151 = call i32 @update_file(%struct.merge_options* %148, i32 0, %struct.diff_filespec* %149, i8* %150)
  store i32 %151, i32* %21, align 4
  br label %152

152:                                              ; preds = %147, %144
  br label %153

153:                                              ; preds = %152, %78
  %154 = load i8*, i8** %19, align 8
  %155 = call i32 @free(i8* %154)
  %156 = load i32, i32* %21, align 4
  ret i32 %156
}

declare dso_local i64 @dir_in_way(i32, i8*, i32, i32) #1

declare dso_local i64 @would_lose_untracked(%struct.merge_options*, i8*) #1

declare dso_local i8* @unique_path(%struct.merge_options*, i8*, i8*) #1

declare dso_local i32 @remove_file_from_index(i32, i8*) #1

declare dso_local i32 @update_file(%struct.merge_options*, i32, %struct.diff_filespec*, i8*) #1

declare dso_local i32 @output(%struct.merge_options*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
