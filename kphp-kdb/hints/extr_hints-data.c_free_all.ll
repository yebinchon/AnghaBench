; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_free_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbosity = common dso_local global i64 0, align 8
@history_l = common dso_local global i64 0, align 8
@history_r = common dso_local global i64 0, align 8
@history_q = common dso_local global i64* null, align 8
@MAX_HISTORY = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Memory left : %ld\0A\00", align 1
@changes_memory = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [101 x i8] c"memory used = %ld, trp_memory = %ld, htbl_memory = %ld, changes_memory = %ld, mtf = %lld, vct = %ld\0A\00", align 1
@allocated_metafile_bytes = common dso_local global i32 0, align 4
@buff = common dso_local global i32 0, align 4
@MAX_CNT = common dso_local global i32 0, align 4
@index_mode = common dso_local global i64 0, align 8
@buffer = common dso_local global i32 0, align 4
@MAX_USR_SIZE = common dso_local global i32 0, align 4
@new_obj = common dso_local global i32 0, align 4
@type_ids = common dso_local global i32 0, align 4
@object_ratings = common dso_local global i32 0, align 4
@MAX_RATING_NUM = common dso_local global i32 0, align 4
@object_ratings_to_sort = common dso_local global i32 0, align 4
@h_buff = common dso_local global i32 0, align 4
@MAX_K = common dso_local global i32 0, align 4
@dp = common dso_local global i32* null, align 8
@d = common dso_local global i32 0, align 4
@weight = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4
@objects_typeids_to_sort = common dso_local global i32 0, align 4
@objects_to_sort = common dso_local global i32 0, align 4
@exc = common dso_local global i32 0, align 4
@user_table = common dso_local global i32 0, align 4
@header = common dso_local global i32 0, align 4
@i_buff = common dso_local global i32 0, align 4
@intersect_buff = common dso_local global i32 0, align 4
@new_h = common dso_local global i32 0, align 4
@object_buf = common dso_local global i32 0, align 4
@object_indexes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_all() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @verbosity, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %171

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %8, %4
  %6 = call i32 (...) @user_LRU_unload()
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %5

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %28, %9
  %11 = load i64, i64* @history_l, align 8
  %12 = load i64, i64* @history_r, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load i64*, i64** @history_q, align 8
  %16 = load i64, i64* @history_l, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @dl_strfree(i64 %18)
  %20 = load i64*, i64** @history_q, align 8
  %21 = load i64, i64* @history_l, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* @history_l, align 8
  %23 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64 0, i64* %23, align 8
  %24 = load i64, i64* @history_l, align 8
  %25 = load i64, i64* @MAX_HISTORY, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  store i64 0, i64* @history_l, align 8
  br label %28

28:                                               ; preds = %27, %14
  br label %10

29:                                               ; preds = %10
  %30 = load i32, i32* @stderr, align 4
  %31 = call i64 (...) @get_memory_used()
  %32 = call i64 (...) @trp_get_memory()
  %33 = sub nsw i64 %31, %32
  %34 = call i64 (...) @htbl_get_memory()
  %35 = sub nsw i64 %33, %34
  %36 = call i64 (...) @htbl_vct_get_memory()
  %37 = sub nsw i64 %35, %36
  %38 = load i64, i64* @changes_memory, align 8
  %39 = sub nsw i64 %37, %38
  %40 = call i64 (...) @chg_list_get_memory()
  %41 = sub nsw i64 %39, %40
  %42 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @stderr, align 4
  %44 = call i64 (...) @get_memory_used()
  %45 = call i64 (...) @trp_get_memory()
  %46 = call i64 (...) @htbl_get_memory()
  %47 = call i64 (...) @get_changes_memory()
  %48 = load i32, i32* @allocated_metafile_bytes, align 4
  %49 = call i64 (...) @htbl_vct_get_memory()
  %50 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %45, i64 %46, i64 %47, i32 %48, i64 %49)
  %51 = call i64 (...) @get_memory_used()
  %52 = call i64 (...) @trp_get_memory()
  %53 = sub nsw i64 %51, %52
  %54 = call i64 (...) @htbl_get_memory()
  %55 = sub nsw i64 %53, %54
  %56 = call i64 (...) @htbl_vct_get_memory()
  %57 = sub nsw i64 %55, %56
  %58 = load i64, i64* @changes_memory, align 8
  %59 = sub nsw i64 %57, %58
  %60 = call i64 (...) @chg_list_get_memory()
  %61 = sub nsw i64 %59, %60
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* @buff, align 4
  %66 = load i32, i32* @MAX_CNT, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = call i32 @dl_free(i32 %65, i32 %70)
  %72 = load i64, i64* @index_mode, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %108

74:                                               ; preds = %29
  %75 = load i32, i32* @buffer, align 4
  %76 = load i32, i32* @MAX_USR_SIZE, align 4
  %77 = call i32 @dl_free(i32 %75, i32 %76)
  %78 = load i32, i32* @new_obj, align 4
  %79 = load i32, i32* @MAX_USR_SIZE, align 4
  %80 = call i32 @dl_free(i32 %78, i32 %79)
  %81 = load i32, i32* @type_ids, align 4
  %82 = load i32, i32* @MAX_CNT, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @dl_free(i32 %81, i32 %86)
  %88 = load i32, i32* @object_ratings, align 4
  %89 = load i32, i32* @MAX_CNT, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = load i32, i32* @MAX_RATING_NUM, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %92, %94
  %96 = trunc i64 %95 to i32
  %97 = call i32 @dl_free(i32 %88, i32 %96)
  %98 = load i32, i32* @object_ratings_to_sort, align 4
  %99 = load i32, i32* @MAX_CNT, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i32 @dl_free(i32 %98, i32 %103)
  %105 = load i32, i32* @h_buff, align 4
  %106 = load i32, i32* @MAX_USR_SIZE, align 4
  %107 = call i32 @dl_free(i32 %105, i32 %106)
  br label %168

108:                                              ; preds = %29
  store i32 0, i32* %1, align 4
  br label %109

109:                                              ; preds = %125, %108
  %110 = load i32, i32* %1, align 4
  %111 = load i32, i32* @MAX_K, align 4
  %112 = icmp sle i32 %110, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %109
  %114 = load i32*, i32** @dp, align 8
  %115 = load i32, i32* %1, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @MAX_CNT, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = call i32 @dl_free(i32 %118, i32 %123)
  br label %125

125:                                              ; preds = %113
  %126 = load i32, i32* %1, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %1, align 4
  br label %109

128:                                              ; preds = %109
  %129 = load i32, i32* @d, align 4
  %130 = load i32, i32* @MAX_CNT, align 4
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 4
  %134 = trunc i64 %133 to i32
  %135 = call i32 @dl_free(i32 %129, i32 %134)
  %136 = load i32, i32* @weight, align 4
  %137 = load i32, i32* @MAX_CNT, align 4
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 4
  %140 = trunc i64 %139 to i32
  %141 = call i32 @dl_free(i32 %136, i32 %140)
  %142 = load i32, i32* @heap, align 4
  %143 = load i32, i32* @MAX_CNT, align 4
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 4
  %147 = trunc i64 %146 to i32
  %148 = call i32 @dl_free(i32 %142, i32 %147)
  %149 = load i32, i32* @objects_typeids_to_sort, align 4
  %150 = load i32, i32* @MAX_CNT, align 4
  %151 = sext i32 %150 to i64
  %152 = mul i64 %151, 8
  %153 = trunc i64 %152 to i32
  %154 = call i32 @dl_free(i32 %149, i32 %153)
  %155 = load i32, i32* @objects_to_sort, align 4
  %156 = load i32, i32* @MAX_CNT, align 4
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 4
  %159 = trunc i64 %158 to i32
  %160 = call i32 @dl_free(i32 %155, i32 %159)
  %161 = load i32, i32* @exc, align 4
  %162 = load i32, i32* @MAX_CNT, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = mul i64 %164, 4
  %166 = trunc i64 %165 to i32
  %167 = call i32 @dl_free(i32 %161, i32 %166)
  br label %168

168:                                              ; preds = %128, %74
  %169 = call i32 @ltbl_free(i32* @user_table)
  %170 = call i32 @free_header(i32* @header)
  br label %171

171:                                              ; preds = %168, %0
  ret void
}

declare dso_local i32 @user_LRU_unload(...) #1

declare dso_local i32 @dl_strfree(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i64, ...) #1

declare dso_local i64 @get_memory_used(...) #1

declare dso_local i64 @trp_get_memory(...) #1

declare dso_local i64 @htbl_get_memory(...) #1

declare dso_local i64 @htbl_vct_get_memory(...) #1

declare dso_local i64 @chg_list_get_memory(...) #1

declare dso_local i64 @get_changes_memory(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dl_free(i32, i32) #1

declare dso_local i32 @ltbl_free(i32*) #1

declare dso_local i32 @free_header(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
