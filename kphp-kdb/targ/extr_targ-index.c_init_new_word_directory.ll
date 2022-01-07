; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_init_new_word_directory.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_init_new_word_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_word = type { i32, i32, i32, %struct.hash_word* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@HASH_BUCKETS = common dso_local global i32 0, align 4
@Hash = common dso_local global %struct.hash_word** null, align 8
@new_idx_words = common dso_local global i32 0, align 4
@idx_words = common dso_local global i32 0, align 4
@new_worddir_size = common dso_local global i32 0, align 4
@NewWordDir = common dso_local global %struct.TYPE_8__* null, align 8
@INFTY = common dso_local global i32 0, align 4
@idx_worddir = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_new_word_directory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.hash_word*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %40, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @HASH_BUCKETS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  %13 = load %struct.hash_word**, %struct.hash_word*** @Hash, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hash_word*, %struct.hash_word** %13, i64 %15
  %17 = load %struct.hash_word*, %struct.hash_word** %16, align 8
  store %struct.hash_word* %17, %struct.hash_word** %3, align 8
  br label %18

18:                                               ; preds = %35, %12
  %19 = load %struct.hash_word*, %struct.hash_word** %3, align 8
  %20 = icmp ne %struct.hash_word* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load %struct.hash_word*, %struct.hash_word** %3, align 8
  %23 = getelementptr inbounds %struct.hash_word, %struct.hash_word* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %30, 536870910
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  br label %34

34:                                               ; preds = %26, %21
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.hash_word*, %struct.hash_word** %3, align 8
  %37 = getelementptr inbounds %struct.hash_word, %struct.hash_word* %36, i32 0, i32 3
  %38 = load %struct.hash_word*, %struct.hash_word** %37, align 8
  store %struct.hash_word* %38, %struct.hash_word** %3, align 8
  br label %18

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %8

43:                                               ; preds = %8
  %44 = load i32, i32* %2, align 4
  store i32 %44, i32* @new_idx_words, align 4
  %45 = load i32, i32* @new_idx_words, align 4
  %46 = load i32, i32* @idx_words, align 4
  %47 = add nsw i32 %45, %46
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* @new_worddir_size, align 4
  %52 = load i32, i32* @new_worddir_size, align 4
  %53 = call %struct.TYPE_8__* @malloc(i32 %52)
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** @NewWordDir, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %123, %43
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @HASH_BUCKETS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %126

58:                                               ; preds = %54
  %59 = load %struct.hash_word**, %struct.hash_word*** @Hash, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.hash_word*, %struct.hash_word** %59, i64 %61
  %63 = load %struct.hash_word*, %struct.hash_word** %62, align 8
  store %struct.hash_word* %63, %struct.hash_word** %3, align 8
  br label %64

64:                                               ; preds = %118, %58
  %65 = load %struct.hash_word*, %struct.hash_word** %3, align 8
  %66 = icmp ne %struct.hash_word* %65, null
  br i1 %66, label %67, label %122

67:                                               ; preds = %64
  %68 = load %struct.hash_word*, %struct.hash_word** %3, align 8
  %69 = getelementptr inbounds %struct.hash_word, %struct.hash_word* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %117

72:                                               ; preds = %67
  %73 = call i32 (...) @clear_tmp_word_data()
  %74 = load %struct.hash_word*, %struct.hash_word** %3, align 8
  %75 = getelementptr inbounds %struct.hash_word, %struct.hash_word* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @get_idx_word_list_len(i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.hash_word*, %struct.hash_word** %3, align 8
  %80 = getelementptr inbounds %struct.hash_word, %struct.hash_word* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %72
  %84 = call i32 @dyn_mark(i32 0)
  %85 = load %struct.hash_word*, %struct.hash_word** %3, align 8
  %86 = getelementptr inbounds %struct.hash_word, %struct.hash_word* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.TYPE_7__* @build_word_iterator(i32 %87)
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %5, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %6, align 4
  %92 = call i32 @dyn_release(i32 0)
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @INFTY, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  br label %118

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97, %72
  %99 = load %struct.hash_word*, %struct.hash_word** %3, align 8
  %100 = getelementptr inbounds %struct.hash_word, %struct.hash_word* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NewWordDir, align 8
  %103 = load i32, i32* %2, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i32 %101, i32* %106, align 4
  %107 = load %struct.hash_word*, %struct.hash_word** %3, align 8
  %108 = getelementptr inbounds %struct.hash_word, %struct.hash_word* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NewWordDir, align 8
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store i32 %109, i32* %114, align 4
  %115 = load i32, i32* %2, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %98, %67
  br label %118

118:                                              ; preds = %117, %96
  %119 = load %struct.hash_word*, %struct.hash_word** %3, align 8
  %120 = getelementptr inbounds %struct.hash_word, %struct.hash_word* %119, i32 0, i32 3
  %121 = load %struct.hash_word*, %struct.hash_word** %120, align 8
  store %struct.hash_word* %121, %struct.hash_word** %3, align 8
  br label %64

122:                                              ; preds = %64
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %1, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %1, align 4
  br label %54

126:                                              ; preds = %54
  %127 = load i32, i32* %2, align 4
  %128 = load i32, i32* @new_idx_words, align 4
  %129 = icmp sle i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  store i32 0, i32* %1, align 4
  br label %132

132:                                              ; preds = %167, %126
  %133 = load i32, i32* %1, align 4
  %134 = load i32, i32* @idx_words, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %170

136:                                              ; preds = %132
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** @idx_worddir, align 8
  %138 = load i32, i32* %1, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call %struct.hash_word* @get_hash_node(i32 %143, i32 0)
  store %struct.hash_word* %144, %struct.hash_word** %3, align 8
  %145 = load %struct.hash_word*, %struct.hash_word** %3, align 8
  %146 = icmp ne %struct.hash_word* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %136
  %148 = load %struct.hash_word*, %struct.hash_word** %3, align 8
  %149 = getelementptr inbounds %struct.hash_word, %struct.hash_word* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %147, %136
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NewWordDir, align 8
  %155 = load i32, i32* %2, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  store i32 %153, i32* %158, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NewWordDir, align 8
  %160 = load i32, i32* %2, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  store i32 0, i32* %163, align 4
  %164 = load i32, i32* %2, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %152, %147
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %1, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %1, align 4
  br label %132

170:                                              ; preds = %132
  %171 = load i32, i32* %2, align 4
  %172 = load i32, i32* @new_idx_words, align 4
  %173 = load i32, i32* @idx_words, align 4
  %174 = add nsw i32 %172, %173
  %175 = icmp sle i32 %171, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load i32, i32* %2, align 4
  store i32 %178, i32* @new_idx_words, align 4
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NewWordDir, align 8
  %180 = load i32, i32* %2, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  store i32 -1, i32* %183, align 4
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NewWordDir, align 8
  %185 = load i32, i32* %2, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  store i32 -1, i32* %188, align 4
  %189 = load i32, i32* @new_idx_words, align 4
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = mul i64 %191, 4
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* @new_worddir_size, align 4
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NewWordDir, align 8
  %195 = load i32, i32* %2, align 4
  %196 = sub nsw i32 %195, 1
  %197 = call i32 @sort_word_dictionary(%struct.TYPE_8__* %194, i32 %196)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @clear_tmp_word_data(...) #1

declare dso_local i32 @get_idx_word_list_len(i32) #1

declare dso_local i32 @dyn_mark(i32) #1

declare dso_local %struct.TYPE_7__* @build_word_iterator(i32) #1

declare dso_local i32 @dyn_release(i32) #1

declare dso_local %struct.hash_word* @get_hash_node(i32, i32) #1

declare dso_local i32 @sort_word_dictionary(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
