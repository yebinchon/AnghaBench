; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_add_id.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_add_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@H_MUL = common dso_local global i64 0, align 8
@H_ADD = common dso_local global i64 0, align 8
@h_id = common dso_local global i32 0, align 4
@idn = common dso_local global i32 0, align 4
@idr = common dso_local global i32 0, align 4
@names = common dso_local global i32* null, align 8
@stemmed_names = common dso_local global i32* null, align 8
@ratings = common dso_local global i32* null, align 8
@namesn = common dso_local global i32 0, align 4
@namesr = common dso_local global i32 0, align 4
@names_buff = common dso_local global i32* null, align 8
@use_stemmer = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"<%s>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_id(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %32, %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @H_MUL, align 8
  %24 = mul nsw i64 %22, %23
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %24, %30
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %14

35:                                               ; preds = %14
  %36 = load i64, i64* @H_ADD, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = bitcast %struct.TYPE_4__* %9 to { i64, i64 }*
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %42, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call %struct.TYPE_5__* @hmap_ll_int_add(i32* @h_id, i64 %44, i64 %46)
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32* %48, i32** %10, align 8
  %49 = load i32, i32* @idn, align 4
  %50 = add nsw i32 %49, 3
  %51 = load i32, i32* @idr, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %102

53:                                               ; preds = %35
  %54 = load i32, i32* @idr, align 4
  %55 = mul nsw i32 %54, 2
  %56 = add nsw i32 %55, 3
  store i32 %56, i32* %11, align 4
  %57 = load i32*, i32** @names, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 4, %59
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @idr, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 4, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32* @dl_realloc(i32* %57, i32 %61, i32 %65)
  store i32* %66, i32** @names, align 8
  %67 = load i32*, i32** @stemmed_names, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 4, %69
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* @idr, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 4, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32* @dl_realloc(i32* %67, i32 %71, i32 %75)
  store i32* %76, i32** @stemmed_names, align 8
  %77 = load i32*, i32** @ratings, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 4, %79
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* @idr, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 4, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32* @dl_realloc(i32* %77, i32 %81, i32 %85)
  store i32* %86, i32** @ratings, align 8
  %87 = load i32*, i32** @ratings, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* @idr, align 4
  %90 = load i32*, i32** @names, align 8
  %91 = icmp ne i32* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i32*, i32** @stemmed_names, align 8
  %95 = icmp ne i32* %94, null
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i32*, i32** @ratings, align 8
  %99 = icmp ne i32* %98, null
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  br label %102

102:                                              ; preds = %53, %35
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %182

106:                                              ; preds = %102
  %107 = load i32, i32* @idn, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* @idn, align 4
  %109 = load i32*, i32** %10, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i8*, i8** %4, align 8
  %111 = call i32 @strlen(i8* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* @namesn, align 4
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %112, %113
  %115 = add nsw i32 %114, 3
  %116 = load i32, i32* @namesr, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %139

118:                                              ; preds = %106
  %119 = load i32, i32* @namesr, align 4
  %120 = mul nsw i32 %119, 2
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %120, %121
  %123 = add nsw i32 %122, 3
  store i32 %123, i32* %13, align 4
  %124 = load i32*, i32** @names_buff, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 1, %126
  %128 = trunc i64 %127 to i32
  %129 = load i32, i32* @namesr, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 1, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32* @dl_realloc(i32* %124, i32 %128, i32 %132)
  store i32* %133, i32** @names_buff, align 8
  %134 = load i32, i32* %13, align 4
  store i32 %134, i32* @namesr, align 4
  %135 = load i32*, i32** @names_buff, align 8
  %136 = icmp ne i32* %135, null
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  br label %139

139:                                              ; preds = %118, %106
  %140 = load i32, i32* @namesn, align 4
  %141 = load i32*, i32** @names, align 8
  %142 = load i32, i32* @idn, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %140, i32* %144, align 4
  %145 = load i64, i64* @use_stemmer, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %139
  %148 = load i8*, i8** %4, align 8
  %149 = call i32 @stem_str(i8* %148)
  %150 = load i32*, i32** @stemmed_names, align 8
  %151 = load i32, i32* @idn, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %149, i32* %153, align 4
  br label %160

154:                                              ; preds = %139
  %155 = load i32, i32* @idn, align 4
  %156 = load i32*, i32** @stemmed_names, align 8
  %157 = load i32, i32* @idn, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %155, i32* %159, align 4
  br label %160

160:                                              ; preds = %154, %147
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load i32, i32* @stderr, align 4
  %165 = load i8*, i8** %4, align 8
  %166 = call i32 @fprintf(i32 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %163, %160
  %168 = load i32*, i32** @names_buff, align 8
  %169 = load i32, i32* @namesn, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i8*, i8** %4, align 8
  %173 = call i32 @strcpy(i32* %171, i8* %172)
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, 1
  %176 = load i32, i32* @namesn, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* @namesn, align 4
  %178 = load i32*, i32** @ratings, align 8
  %179 = load i32, i32* @idn, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 0, i32* %181, align 4
  br label %182

182:                                              ; preds = %167, %102
  %183 = load i32*, i32** %10, align 8
  %184 = load i32, i32* %183, align 4
  ret i32 %184
}

declare dso_local %struct.TYPE_5__* @hmap_ll_int_add(i32*, i64, i64) #1

declare dso_local i32* @dl_realloc(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @stem_str(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
