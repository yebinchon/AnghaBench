; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_build_word_iterator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_build_word_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_word = type { i64 }
%struct.tree_iterator = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.wordlist_iterator = type { i64, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.wordlist_tree_iterator = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32 (i32, i64)* }

@tree_iterator_jump_to = common dso_local global i32 0, align 4
@wordlist_iterator_jump_to = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_word_iterator(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hash_word*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tree_iterator*, align 8
  %9 = alloca %struct.wordlist_iterator*, align 8
  %10 = alloca %struct.wordlist_tree_iterator*, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.hash_word* @get_hash_node(i32 %11, i32 0)
  store %struct.hash_word* %12, %struct.hash_word** %4, align 8
  %13 = load %struct.hash_word*, %struct.hash_word** %4, align 8
  %14 = icmp ne %struct.hash_word* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.hash_word*, %struct.hash_word** %4, align 8
  %17 = getelementptr inbounds %struct.hash_word, %struct.hash_word* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i64 [ %18, %15 ], [ 0, %19 ]
  store i64 %21, i64* %5, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i8* @idx_word_lookup(i32 %22, i32* %6)
  store i8* %23, i8** %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi i1 [ true, %20 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call i32 (...) @build_empty_iterator()
  store i32 %39, i32* %2, align 4
  br label %221

40:                                               ; preds = %35, %29
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %70, label %43

43:                                               ; preds = %40
  %44 = call i8* @zmalloc(i32 40)
  %45 = bitcast i8* %44 to %struct.tree_iterator*
  store %struct.tree_iterator* %45, %struct.tree_iterator** %8, align 8
  %46 = load %struct.tree_iterator*, %struct.tree_iterator** %8, align 8
  %47 = getelementptr inbounds %struct.tree_iterator, %struct.tree_iterator* %46, i32 0, i32 3
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @init_tree_subiterator(%struct.TYPE_4__* %47, i64 %48)
  %50 = load %struct.tree_iterator*, %struct.tree_iterator** %8, align 8
  %51 = getelementptr inbounds %struct.tree_iterator, %struct.tree_iterator* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.tree_iterator*, %struct.tree_iterator** %8, align 8
  %55 = getelementptr inbounds %struct.tree_iterator, %struct.tree_iterator* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = icmp sgt i64 %53, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.tree_iterator*, %struct.tree_iterator** %8, align 8
  %60 = getelementptr inbounds %struct.tree_iterator, %struct.tree_iterator* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.tree_iterator*, %struct.tree_iterator** %8, align 8
  %64 = getelementptr inbounds %struct.tree_iterator, %struct.tree_iterator* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* @tree_iterator_jump_to, align 4
  %66 = load %struct.tree_iterator*, %struct.tree_iterator** %8, align 8
  %67 = getelementptr inbounds %struct.tree_iterator, %struct.tree_iterator* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.tree_iterator*, %struct.tree_iterator** %8, align 8
  %69 = ptrtoint %struct.tree_iterator* %68 to i32
  store i32 %69, i32* %2, align 4
  br label %221

70:                                               ; preds = %40
  %71 = load i64, i64* %5, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %101, label %73

73:                                               ; preds = %70
  %74 = call i8* @zmalloc(i32 40)
  %75 = bitcast i8* %74 to %struct.wordlist_iterator*
  store %struct.wordlist_iterator* %75, %struct.wordlist_iterator** %9, align 8
  %76 = load %struct.wordlist_iterator*, %struct.wordlist_iterator** %9, align 8
  %77 = getelementptr inbounds %struct.wordlist_iterator, %struct.wordlist_iterator* %76, i32 0, i32 3
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @init_wordlist_subiterator(%struct.TYPE_3__* %77, i8* %78, i32 %79)
  %81 = load %struct.wordlist_iterator*, %struct.wordlist_iterator** %9, align 8
  %82 = getelementptr inbounds %struct.wordlist_iterator, %struct.wordlist_iterator* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.wordlist_iterator*, %struct.wordlist_iterator** %9, align 8
  %86 = getelementptr inbounds %struct.wordlist_iterator, %struct.wordlist_iterator* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = icmp sgt i64 %84, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.wordlist_iterator*, %struct.wordlist_iterator** %9, align 8
  %91 = getelementptr inbounds %struct.wordlist_iterator, %struct.wordlist_iterator* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.wordlist_iterator*, %struct.wordlist_iterator** %9, align 8
  %95 = getelementptr inbounds %struct.wordlist_iterator, %struct.wordlist_iterator* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* @wordlist_iterator_jump_to, align 4
  %97 = load %struct.wordlist_iterator*, %struct.wordlist_iterator** %9, align 8
  %98 = getelementptr inbounds %struct.wordlist_iterator, %struct.wordlist_iterator* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.wordlist_iterator*, %struct.wordlist_iterator** %9, align 8
  %100 = ptrtoint %struct.wordlist_iterator* %99 to i32
  store i32 %100, i32* %2, align 4
  br label %221

101:                                              ; preds = %70
  %102 = call i8* @zmalloc(i32 56)
  %103 = bitcast i8* %102 to %struct.wordlist_tree_iterator*
  store %struct.wordlist_tree_iterator* %103, %struct.wordlist_tree_iterator** %10, align 8
  %104 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %105 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %104, i32 0, i32 3
  %106 = load i8*, i8** %7, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @init_wordlist_subiterator(%struct.TYPE_3__* %105, i8* %106, i32 %107)
  %109 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %110 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %109, i32 0, i32 2
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @init_tree_subiterator(%struct.TYPE_4__* %110, i64 %111)
  %113 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %114 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %113, i32 0, i32 4
  store i32 (i32, i64)* @wordlist_tree_iterator_jump_to, i32 (i32, i64)** %114, align 8
  %115 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %116 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %120 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp slt i64 %118, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %101
  %125 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %126 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %130 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = icmp sgt i64 %128, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %135 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %139 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  br label %218

140:                                              ; preds = %101
  %141 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %142 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %146 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp sgt i64 %144, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %140
  %151 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %152 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %156 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = icmp sgt i64 %154, 0
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %161 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %165 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  br label %217

166:                                              ; preds = %140
  %167 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %168 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %172 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %170, %174
  %176 = icmp sgt i64 %175, 0
  br i1 %176, label %177, label %195

177:                                              ; preds = %166
  %178 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %179 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %183 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %181, %185
  %187 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %188 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  %189 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %190 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %194 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %193, i32 0, i32 1
  store i64 %192, i64* %194, align 8
  br label %216

195:                                              ; preds = %166
  %196 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %197 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %201 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %199, %203
  %205 = icmp eq i64 %204, 0
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  %208 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %209 = ptrtoint %struct.wordlist_tree_iterator* %208 to i32
  %210 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %211 = getelementptr inbounds %struct.wordlist_tree_iterator, %struct.wordlist_tree_iterator* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, 1
  %215 = call i32 @wordlist_tree_iterator_jump_to(i32 %209, i64 %214)
  br label %216

216:                                              ; preds = %195, %177
  br label %217

217:                                              ; preds = %216, %150
  br label %218

218:                                              ; preds = %217, %124
  %219 = load %struct.wordlist_tree_iterator*, %struct.wordlist_tree_iterator** %10, align 8
  %220 = ptrtoint %struct.wordlist_tree_iterator* %219 to i32
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %218, %73, %43, %38
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local %struct.hash_word* @get_hash_node(i32, i32) #1

declare dso_local i8* @idx_word_lookup(i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @build_empty_iterator(...) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @init_tree_subiterator(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @init_wordlist_subiterator(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @wordlist_tree_iterator_jump_to(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
