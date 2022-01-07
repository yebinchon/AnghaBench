; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_walk_next.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_walk_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_10__, i32, i32, i32, i8*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32 }

@CRYPTO_TFM_RES_BAD_BLOCK_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BLKCIPHER_WALK_SLOW = common dso_local global i32 0, align 4
@BLKCIPHER_WALK_COPY = common dso_local global i32 0, align 4
@BLKCIPHER_WALK_DIFF = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BLKCIPHER_WALK_PHYS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.blkcipher_walk*)* @blkcipher_walk_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkcipher_walk_next(%struct.blkcipher_desc* %0, %struct.blkcipher_walk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blkcipher_desc*, align 8
  %5 = alloca %struct.blkcipher_walk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %4, align 8
  store %struct.blkcipher_walk* %1, %struct.blkcipher_walk** %5, align 8
  %9 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %10 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %14 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load i32, i32* @CRYPTO_TFM_RES_BAD_BLOCK_LEN, align 4
  %22 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %23 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %27 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %26, %struct.blkcipher_walk* %27, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %171

31:                                               ; preds = %2
  %32 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %33 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @min(i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @BLKCIPHER_WALK_SLOW, align 4
  %38 = load i32, i32* @BLKCIPHER_WALK_COPY, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @BLKCIPHER_WALK_DIFF, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %44 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %48 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %47, i32 0, i32 8
  %49 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %50 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @scatterwalk_aligned(i32* %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %31
  %55 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %56 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %55, i32 0, i32 7
  %57 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %58 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @scatterwalk_aligned(i32* %56, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %85, label %62

62:                                               ; preds = %54, %31
  %63 = load i32, i32* @BLKCIPHER_WALK_COPY, align 4
  %64 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %65 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %69 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %68, i32 0, i32 9
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %84, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call i64 @__get_free_page(i32 %73)
  %75 = inttoptr i64 %74 to i8*
  %76 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %77 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %76, i32 0, i32 9
  store i8* %75, i8** %77, align 8
  %78 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %79 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %78, i32 0, i32 9
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %72
  br label %84

84:                                               ; preds = %83, %62
  br label %85

85:                                               ; preds = %84, %54
  %86 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %87 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %86, i32 0, i32 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @scatterwalk_clamp(i32* %87, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %91 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %90, i32 0, i32 7
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @scatterwalk_clamp(i32* %91, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ult i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %85
  %101 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %102 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %105 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @blkcipher_next_slow(%struct.blkcipher_desc* %101, %struct.blkcipher_walk* %102, i32 %103, i32 %106)
  store i32 %107, i32* %8, align 4
  br label %125

108:                                              ; preds = %85
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %111 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %113 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @BLKCIPHER_WALK_COPY, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %120 = call i32 @blkcipher_next_copy(%struct.blkcipher_walk* %119)
  store i32 %120, i32* %8, align 4
  br label %125

121:                                              ; preds = %108
  %122 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %123 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %124 = call i32 @blkcipher_next_fast(%struct.blkcipher_desc* %122, %struct.blkcipher_walk* %123)
  store i32 %124, i32* %3, align 4
  br label %171

125:                                              ; preds = %118, %100
  %126 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %127 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @BLKCIPHER_WALK_PHYS, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %169

132:                                              ; preds = %125
  %133 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %134 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i8* @virt_to_page(i32 %137)
  %139 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %140 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  store i8* %138, i8** %142, align 8
  %143 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %144 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i8* @virt_to_page(i32 %147)
  %149 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %150 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  store i8* %148, i8** %152, align 8
  %153 = load i32, i32* @PAGE_SIZE, align 4
  %154 = sub nsw i32 %153, 1
  %155 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %156 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, %154
  store i32 %160, i32* %158, align 8
  %161 = load i32, i32* @PAGE_SIZE, align 4
  %162 = sub nsw i32 %161, 1
  %163 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %164 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, %162
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %132, %125
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %169, %121, %20
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scatterwalk_aligned(i32*, i32) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @scatterwalk_clamp(i32*, i32) #1

declare dso_local i32 @blkcipher_next_slow(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32, i32) #1

declare dso_local i32 @blkcipher_next_copy(%struct.blkcipher_walk*) #1

declare dso_local i32 @blkcipher_next_fast(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i8* @virt_to_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
