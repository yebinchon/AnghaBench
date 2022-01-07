; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bio_alloc_bioset.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bio_alloc_bioset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.bio = type { i64, i32, %struct.bio_vec*, %struct.bio_set*, %struct.bio_vec* }
%struct.bio_vec = type { i32 }
%struct.bio_set = type { i32, i32, i32, i64 }

@UIO_MAXIOV = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@__GFP_DIRECT_RECLAIM = common dso_local global i64 0, align 8
@BIO_INLINE_VECS = common dso_local global i32 0, align 4
@BVEC_POOL_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @bio_alloc_bioset(i64 %0, i32 %1, %struct.bio_set* %2) #0 {
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio_set*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio_vec*, align 8
  %12 = alloca %struct.bio*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bio_set* %2, %struct.bio_set** %7, align 8
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %8, align 8
  store %struct.bio_vec* null, %struct.bio_vec** %11, align 8
  %16 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %17 = icmp ne %struct.bio_set* %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @UIO_MAXIOV, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %179

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = add i64 40, %26
  %28 = trunc i64 %27 to i32
  %29 = load i64, i64* %5, align 8
  %30 = call i8* @kmalloc(i32 %28, i64 %29)
  store i8* %30, i8** %13, align 8
  store i32 0, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %10, align 4
  br label %99

32:                                               ; preds = %3
  %33 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %34 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %33, i32 0, i32 2
  %35 = call i32 @mempool_initialized(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = icmp ugt i32 %38, 0
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi i1 [ false, %32 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON_ONCE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %179

46:                                               ; preds = %40
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %75

51:                                               ; preds = %46
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i32 @bio_list_empty(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = call i32 @bio_list_empty(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %58, %51
  %66 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %67 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i64, i64* @__GFP_DIRECT_RECLAIM, align 8
  %72 = xor i64 %71, -1
  %73 = load i64, i64* %5, align 8
  %74 = and i64 %73, %72
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %70, %65, %58, %46
  %76 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %77 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %76, i32 0, i32 1
  %78 = load i64, i64* %5, align 8
  %79 = call i8* @mempool_alloc(i32* %77, i64 %78)
  store i8* %79, i8** %13, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %94, label %82

82:                                               ; preds = %75
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %88 = call i32 @punt_bios_to_rescuer(%struct.bio_set* %87)
  %89 = load i64, i64* %8, align 8
  store i64 %89, i64* %5, align 8
  %90 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %91 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %90, i32 0, i32 1
  %92 = load i64, i64* %5, align 8
  %93 = call i8* @mempool_alloc(i32* %91, i64 %92)
  store i8* %93, i8** %13, align 8
  br label %94

94:                                               ; preds = %86, %82, %75
  %95 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %96 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* @BIO_INLINE_VECS, align 4
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %94, %23
  %100 = load i8*, i8** %13, align 8
  %101 = icmp ne i8* %100, null
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %179

107:                                              ; preds = %99
  %108 = load i8*, i8** %13, align 8
  %109 = load i32, i32* %9, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr i8, i8* %108, i64 %110
  %112 = bitcast i8* %111 to %struct.bio*
  store %struct.bio* %112, %struct.bio** %12, align 8
  %113 = load %struct.bio*, %struct.bio** %12, align 8
  %114 = call i32 @bio_init(%struct.bio* %113, i32* null, i32 0)
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ugt i32 %115, %116
  br i1 %117, label %118, label %155

118:                                              ; preds = %107
  store i64 0, i64* %14, align 8
  %119 = load i64, i64* %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %122 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %121, i32 0, i32 2
  %123 = call %struct.bio_vec* @bvec_alloc(i64 %119, i32 %120, i64* %14, i32* %122)
  store %struct.bio_vec* %123, %struct.bio_vec** %11, align 8
  %124 = load %struct.bio_vec*, %struct.bio_vec** %11, align 8
  %125 = icmp ne %struct.bio_vec* %124, null
  br i1 %125, label %139, label %126

126:                                              ; preds = %118
  %127 = load i64, i64* %5, align 8
  %128 = load i64, i64* %8, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %132 = call i32 @punt_bios_to_rescuer(%struct.bio_set* %131)
  %133 = load i64, i64* %8, align 8
  store i64 %133, i64* %5, align 8
  %134 = load i64, i64* %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %137 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %136, i32 0, i32 2
  %138 = call %struct.bio_vec* @bvec_alloc(i64 %134, i32 %135, i64* %14, i32* %137)
  store %struct.bio_vec* %138, %struct.bio_vec** %11, align 8
  br label %139

139:                                              ; preds = %130, %126, %118
  %140 = load %struct.bio_vec*, %struct.bio_vec** %11, align 8
  %141 = icmp ne %struct.bio_vec* %140, null
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %174

147:                                              ; preds = %139
  %148 = load i64, i64* %14, align 8
  %149 = load i64, i64* @BVEC_POOL_OFFSET, align 8
  %150 = shl i64 %148, %149
  %151 = load %struct.bio*, %struct.bio** %12, align 8
  %152 = getelementptr inbounds %struct.bio, %struct.bio* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = or i64 %153, %150
  store i64 %154, i64* %152, align 8
  br label %163

155:                                              ; preds = %107
  %156 = load i32, i32* %6, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load %struct.bio*, %struct.bio** %12, align 8
  %160 = getelementptr inbounds %struct.bio, %struct.bio* %159, i32 0, i32 4
  %161 = load %struct.bio_vec*, %struct.bio_vec** %160, align 8
  store %struct.bio_vec* %161, %struct.bio_vec** %11, align 8
  br label %162

162:                                              ; preds = %158, %155
  br label %163

163:                                              ; preds = %162, %147
  %164 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %165 = load %struct.bio*, %struct.bio** %12, align 8
  %166 = getelementptr inbounds %struct.bio, %struct.bio* %165, i32 0, i32 3
  store %struct.bio_set* %164, %struct.bio_set** %166, align 8
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.bio*, %struct.bio** %12, align 8
  %169 = getelementptr inbounds %struct.bio, %struct.bio* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 8
  %170 = load %struct.bio_vec*, %struct.bio_vec** %11, align 8
  %171 = load %struct.bio*, %struct.bio** %12, align 8
  %172 = getelementptr inbounds %struct.bio, %struct.bio* %171, i32 0, i32 2
  store %struct.bio_vec* %170, %struct.bio_vec** %172, align 8
  %173 = load %struct.bio*, %struct.bio** %12, align 8
  store %struct.bio* %173, %struct.bio** %4, align 8
  br label %179

174:                                              ; preds = %146
  %175 = load i8*, i8** %13, align 8
  %176 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %177 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %176, i32 0, i32 1
  %178 = call i32 @mempool_free(i8* %175, i32* %177)
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %179

179:                                              ; preds = %174, %163, %106, %45, %22
  %180 = load %struct.bio*, %struct.bio** %4, align 8
  ret %struct.bio* %180
}

declare dso_local i8* @kmalloc(i32, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mempool_initialized(i32*) #1

declare dso_local i32 @bio_list_empty(i32*) #1

declare dso_local i8* @mempool_alloc(i32*, i64) #1

declare dso_local i32 @punt_bios_to_rescuer(%struct.bio_set*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_init(%struct.bio*, i32*, i32) #1

declare dso_local %struct.bio_vec* @bvec_alloc(i64, i32, i64*, i32*) #1

declare dso_local i32 @mempool_free(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
