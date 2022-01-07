; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_resolve_rename_copy.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_resolve_rename_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { i8*, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i64 }

@diff_queued_diff = common dso_local global %struct.diff_queue_struct zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"resolve-rename-copy\00", align 1
@DIFF_STATUS_UNMERGED = common dso_local global i8* null, align 8
@DIFF_STATUS_ADDED = common dso_local global i8* null, align 8
@DIFF_STATUS_DELETED = common dso_local global i8* null, align 8
@DIFF_STATUS_TYPE_CHANGED = common dso_local global i8* null, align 8
@DIFF_STATUS_MODIFIED = common dso_local global i8* null, align 8
@DIFF_STATUS_COPIED = common dso_local global i8* null, align 8
@DIFF_STATUS_RENAMED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"feeding unmodified %s to diffcore\00", align 1
@DIFF_STATUS_UNKNOWN = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"resolve-rename-copy done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @diff_resolve_rename_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diff_resolve_rename_copy() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.diff_filepair*, align 8
  %3 = alloca %struct.diff_queue_struct*, align 8
  store %struct.diff_queue_struct* @diff_queued_diff, %struct.diff_queue_struct** %3, align 8
  %4 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %5 = call i32 @diff_debug_queue(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.diff_queue_struct* %4)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %160, %0
  %7 = load i32, i32* %1, align 4
  %8 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %9 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %163

12:                                               ; preds = %6
  %13 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %14 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %13, i32 0, i32 1
  %15 = load %struct.diff_filepair**, %struct.diff_filepair*** %14, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %15, i64 %17
  %19 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  store %struct.diff_filepair* %19, %struct.diff_filepair** %2, align 8
  %20 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %21 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %20, i32 0, i32 0
  store i8* null, i8** %21, align 8
  %22 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %23 = call i64 @DIFF_PAIR_UNMERGED(%struct.diff_filepair* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %12
  %26 = load i8*, i8** @DIFF_STATUS_UNMERGED, align 8
  %27 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %28 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %159

29:                                               ; preds = %12
  %30 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %31 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @DIFF_FILE_VALID(%struct.TYPE_2__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** @DIFF_STATUS_ADDED, align 8
  %37 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %38 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %158

39:                                               ; preds = %29
  %40 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %41 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = call i32 @DIFF_FILE_VALID(%struct.TYPE_2__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** @DIFF_STATUS_DELETED, align 8
  %47 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %48 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %157

49:                                               ; preds = %39
  %50 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %51 = call i64 @DIFF_PAIR_TYPE_CHANGED(%struct.diff_filepair* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i8*, i8** @DIFF_STATUS_TYPE_CHANGED, align 8
  %55 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %56 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %156

57:                                               ; preds = %49
  %58 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %59 = call i64 @DIFF_PAIR_RENAME(%struct.diff_filepair* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %96

61:                                               ; preds = %57
  %62 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %63 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %68 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @strcmp(i32 %66, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %61
  %75 = load i8*, i8** @DIFF_STATUS_MODIFIED, align 8
  %76 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %77 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %95

78:                                               ; preds = %61
  %79 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %80 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, -1
  store i64 %84, i64* %82, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i8*, i8** @DIFF_STATUS_COPIED, align 8
  %88 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %89 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  br label %94

90:                                               ; preds = %78
  %91 = load i8*, i8** @DIFF_STATUS_RENAMED, align 8
  %92 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %93 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %90, %86
  br label %95

95:                                               ; preds = %94, %74
  br label %155

96:                                               ; preds = %57
  %97 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %98 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %102 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = call i32 @oideq(i32* %100, i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %140

107:                                              ; preds = %96
  %108 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %109 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %114 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %112, %117
  br i1 %118, label %140, label %119

119:                                              ; preds = %107
  %120 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %121 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %140, label %126

126:                                              ; preds = %119
  %127 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %128 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %126
  %134 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %135 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 3
  %138 = call i64 @is_null_oid(i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %133, %126, %119, %107, %96
  %141 = load i8*, i8** @DIFF_STATUS_MODIFIED, align 8
  %142 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %143 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  br label %154

144:                                              ; preds = %133
  %145 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %146 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %145, i32 0, i32 1
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  %151 = load i8*, i8** @DIFF_STATUS_UNKNOWN, align 8
  %152 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %153 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  br label %154

154:                                              ; preds = %144, %140
  br label %155

155:                                              ; preds = %154, %95
  br label %156

156:                                              ; preds = %155, %53
  br label %157

157:                                              ; preds = %156, %45
  br label %158

158:                                              ; preds = %157, %35
  br label %159

159:                                              ; preds = %158, %25
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %1, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %1, align 4
  br label %6

163:                                              ; preds = %6
  %164 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %165 = call i32 @diff_debug_queue(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), %struct.diff_queue_struct* %164)
  ret void
}

declare dso_local i32 @diff_debug_queue(i8*, %struct.diff_queue_struct*) #1

declare dso_local i64 @DIFF_PAIR_UNMERGED(%struct.diff_filepair*) #1

declare dso_local i32 @DIFF_FILE_VALID(%struct.TYPE_2__*) #1

declare dso_local i64 @DIFF_PAIR_TYPE_CHANGED(%struct.diff_filepair*) #1

declare dso_local i64 @DIFF_PAIR_RENAME(%struct.diff_filepair*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @oideq(i32*, i32*) #1

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
