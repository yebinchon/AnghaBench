; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_collect_changed_cb.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_collect_changed_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.diff_options = type { i32 }
%struct.wt_status = type { i32, i64, i32 }
%struct.string_list_item = type { %struct.wt_status_change_data* }
%struct.wt_status_change_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@STATUS_FORMAT_SHORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"multiple renames on the same target? how?\00", align 1
@MAX_SCORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unhandled diff-files status '%c'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_queue_struct*, %struct.diff_options*, i8*)* @wt_status_collect_changed_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_status_collect_changed_cb(%struct.diff_queue_struct* %0, %struct.diff_options* %1, i8* %2) #0 {
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
  %14 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %15 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %193

19:                                               ; preds = %3
  %20 = load %struct.wt_status*, %struct.wt_status** %7, align 8
  %21 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %190, %19
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %25 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %193

28:                                               ; preds = %22
  %29 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %30 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %29, i32 0, i32 1
  %31 = load %struct.diff_filepair**, %struct.diff_filepair*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %31, i64 %33
  %35 = load %struct.diff_filepair*, %struct.diff_filepair** %34, align 8
  store %struct.diff_filepair* %35, %struct.diff_filepair** %9, align 8
  %36 = load %struct.wt_status*, %struct.wt_status** %7, align 8
  %37 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %36, i32 0, i32 2
  %38 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %39 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.string_list_item* @string_list_insert(i32* %37, i32 %42)
  store %struct.string_list_item* %43, %struct.string_list_item** %10, align 8
  %44 = load %struct.string_list_item*, %struct.string_list_item** %10, align 8
  %45 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %44, i32 0, i32 0
  %46 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %45, align 8
  store %struct.wt_status_change_data* %46, %struct.wt_status_change_data** %11, align 8
  %47 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %48 = icmp ne %struct.wt_status_change_data* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %28
  %50 = call %struct.wt_status_change_data* @xcalloc(i32 1, i32 36)
  store %struct.wt_status_change_data* %50, %struct.wt_status_change_data** %11, align 8
  %51 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %52 = load %struct.string_list_item*, %struct.string_list_item** %10, align 8
  %53 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %52, i32 0, i32 0
  store %struct.wt_status_change_data* %51, %struct.wt_status_change_data** %53, align 8
  br label %54

54:                                               ; preds = %49, %28
  %55 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %56 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %61 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %64 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %67 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %66, i32 0, i32 3
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @S_ISGITLINK(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %106

73:                                               ; preds = %65
  %74 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %75 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %74, i32 0, i32 3
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %80 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %79, i32 0, i32 8
  store i32 %78, i32* %80, align 4
  %81 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %82 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %86 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %85, i32 0, i32 3
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = call i32 @oideq(i32* %84, i32* %88)
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %94 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.wt_status*, %struct.wt_status** %7, align 8
  %96 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @STATUS_FORMAT_SHORT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %73
  %101 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %102 = call i32 @short_submodule_status(%struct.wt_status_change_data* %101)
  %103 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %104 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %73
  br label %106

106:                                              ; preds = %105, %65
  %107 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %108 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  switch i32 %109, label %184 [
    i32 134, label %110
    i32 132, label %118
    i32 133, label %133
    i32 130, label %133
    i32 131, label %162
    i32 129, label %162
    i32 128, label %162
  ]

110:                                              ; preds = %106
  %111 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %112 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %111, i32 0, i32 3
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %117 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  br label %189

118:                                              ; preds = %106
  %119 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %120 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %125 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 4
  %126 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %127 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %126, i32 0, i32 4
  %128 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %129 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %128, i32 0, i32 2
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = call i32 @oidcpy(i32* %127, i32* %131)
  br label %189

133:                                              ; preds = %106, %106
  %134 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %135 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = call i32 (i8*, ...) @BUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %133
  %141 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %142 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %141, i32 0, i32 2
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @xstrdup(i32 %145)
  %147 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %148 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %147, i32 0, i32 7
  store i32 %146, i32* %148, align 4
  %149 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %150 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %151, 100
  %153 = load i32, i32* @MAX_SCORE, align 4
  %154 = sdiv i32 %152, %153
  %155 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %156 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %158 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %161 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %106, %106, %106, %140
  %163 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %164 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %163, i32 0, i32 2
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %169 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %168, i32 0, i32 6
  store i32 %167, i32* %169, align 4
  %170 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %171 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %170, i32 0, i32 3
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %176 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 4
  %177 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %11, align 8
  %178 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %177, i32 0, i32 4
  %179 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %180 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %179, i32 0, i32 2
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = call i32 @oidcpy(i32* %178, i32* %182)
  br label %189

184:                                              ; preds = %106
  %185 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %186 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (i8*, ...) @BUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %184, %162, %118, %110
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %22

193:                                              ; preds = %18, %22
  ret void
}

declare dso_local %struct.string_list_item* @string_list_insert(i32*, i32) #1

declare dso_local %struct.wt_status_change_data* @xcalloc(i32, i32) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i32 @oideq(i32*, i32*) #1

declare dso_local i32 @short_submodule_status(%struct.wt_status_change_data*) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i32 @BUG(i8*, ...) #1

declare dso_local i32 @xstrdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
