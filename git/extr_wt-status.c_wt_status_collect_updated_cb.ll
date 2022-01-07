; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_collect_updated_cb.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_collect_updated_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.diff_options = type { i32 }
%struct.wt_status = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.string_list_item = type { %struct.wt_status_change_data* }
%struct.wt_status_change_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"multiple renames on the same target? how?\00", align 1
@MAX_SCORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unhandled diff-index status '%c'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_queue_struct*, %struct.diff_options*, i8*)* @wt_status_collect_updated_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_status_collect_updated_cb(%struct.diff_queue_struct* %0, %struct.diff_options* %1, i8* %2) #0 {
  %4 = alloca %struct.diff_queue_struct*, align 8
  %5 = alloca %struct.diff_options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wt_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.diff_filepair*, align 8
  %10 = alloca %struct.string_list_item*, align 8
  %11 = alloca %struct.wt_status_change_data*, align 8
  store %struct.diff_queue_struct* %0, %struct.diff_queue_struct** %4, align 8
  store %struct.diff_options* %1, %struct.diff_options** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.wt_status*
  store %struct.wt_status* %13, %struct.wt_status** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %175, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %17 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %178

20:                                               ; preds = %14
  %21 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %22 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %21, i32 0, i32 1
  %23 = load %struct.diff_filepair**, %struct.diff_filepair*** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %23, i64 %25
  %27 = load %struct.diff_filepair*, %struct.diff_filepair** %26, align 8
  store %struct.diff_filepair* %27, %struct.diff_filepair** %9, align 8
  %28 = load %struct.wt_status*, %struct.wt_status** %7, align 8
  %29 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %28, i32 0, i32 2
  %30 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %31 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.string_list_item* @string_list_insert(i32* %29, i32 %34)
  store %struct.string_list_item* %35, %struct.string_list_item** %10, align 8
  %36 = load %struct.string_list_item*, %struct.string_list_item** %10, align 8
  %37 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %36, i32 0, i32 0
  %38 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %37, align 8
  store %struct.wt_status_change_data* %38, %struct.wt_status_change_data** %11, align 8
  %39 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %40 = icmp ne %struct.wt_status_change_data* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %20
  %42 = call %struct.wt_status_change_data* @xcalloc(i32 1, i32 36)
  store %struct.wt_status_change_data* %42, %struct.wt_status_change_data** %11, align 8
  %43 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %44 = load %struct.string_list_item*, %struct.string_list_item** %10, align 8
  %45 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %44, i32 0, i32 0
  store %struct.wt_status_change_data* %43, %struct.wt_status_change_data** %45, align 8
  br label %46

46:                                               ; preds = %41, %20
  %47 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %48 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %53 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %56 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %59 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %169 [
    i32 134, label %61
    i32 132, label %78
    i32 133, label %95
    i32 130, label %95
    i32 131, label %124
    i32 129, label %124
    i32 128, label %155
  ]

61:                                               ; preds = %57
  %62 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %63 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %68 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 4
  %69 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %70 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %69, i32 0, i32 4
  %71 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %72 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = call i32 @oidcpy(i32* %70, i32* %74)
  %76 = load %struct.wt_status*, %struct.wt_status** %7, align 8
  %77 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  br label %174

78:                                               ; preds = %57
  %79 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %80 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %79, i32 0, i32 3
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %85 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 4
  %86 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %87 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %86, i32 0, i32 5
  %88 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %89 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %88, i32 0, i32 3
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = call i32 @oidcpy(i32* %87, i32* %91)
  %93 = load %struct.wt_status*, %struct.wt_status** %7, align 8
  %94 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  br label %174

95:                                               ; preds = %57, %57
  %96 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %97 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = call i32 (i8*, ...) @BUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %95
  %103 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %104 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @xstrdup(i32 %107)
  %109 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %110 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 4
  %111 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %112 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %113, 100
  %115 = load i32, i32* @MAX_SCORE, align 4
  %116 = sdiv i32 %114, %115
  %117 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %118 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %120 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %123 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %57, %57, %102
  %125 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %126 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %125, i32 0, i32 3
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %131 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %130, i32 0, i32 7
  store i32 %129, i32* %131, align 4
  %132 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %133 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %132, i32 0, i32 2
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %138 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %137, i32 0, i32 6
  store i32 %136, i32* %138, align 4
  %139 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %140 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %139, i32 0, i32 5
  %141 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %142 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %141, i32 0, i32 3
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = call i32 @oidcpy(i32* %140, i32* %144)
  %146 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %147 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %146, i32 0, i32 4
  %148 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %149 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %148, i32 0, i32 2
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = call i32 @oidcpy(i32* %147, i32* %151)
  %153 = load %struct.wt_status*, %struct.wt_status** %7, align 8
  %154 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  br label %174

155:                                              ; preds = %57
  %156 = load %struct.wt_status*, %struct.wt_status** %7, align 8
  %157 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %156, i32 0, i32 1
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %162 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %161, i32 0, i32 2
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @unmerged_mask(i32 %160, i32 %165)
  %167 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %168 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  br label %174

169:                                              ; preds = %57
  %170 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %171 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i8*, ...) @BUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %169, %155, %124, %78, %61
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %14

178:                                              ; preds = %14
  ret void
}

declare dso_local %struct.string_list_item* @string_list_insert(i32*, i32) #1

declare dso_local %struct.wt_status_change_data* @xcalloc(i32, i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i32 @BUG(i8*, ...) #1

declare dso_local i32 @xstrdup(i32) #1

declare dso_local i32 @unmerged_mask(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
