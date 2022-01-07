; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_paes_s390.c_ctr_paes_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_paes_s390.c_ctr_paes_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, i32*, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.s390_paes_ctx = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@ctrblk_lock = common dso_local global i32 0, align 4
@ctrblk = common dso_local global i32* null, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, i64, %struct.blkcipher_walk*)* @ctr_paes_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_paes_crypt(%struct.blkcipher_desc* %0, i64 %1, %struct.blkcipher_walk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.blkcipher_walk*, align 8
  %8 = alloca %struct.s390_paes_ctx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.blkcipher_walk* %2, %struct.blkcipher_walk** %7, align 8
  %18 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %19 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.s390_paes_ctx* @crypto_blkcipher_ctx(i32 %20)
  store %struct.s390_paes_ctx* %21, %struct.s390_paes_ctx** %8, align 8
  %22 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = call i32 @spin_trylock(i32* @ctrblk_lock)
  store i32 %26, i32* %16, align 4
  %27 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %28 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %29 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %30 = call i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc* %27, %struct.blkcipher_walk* %28, i32 %29)
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %139, %3
  %32 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %33 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %140

37:                                               ; preds = %31
  %38 = load i32, i32* @AES_BLOCK_SIZE, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %41 = mul nsw i32 2, %40
  %42 = icmp uge i32 %39, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32*, i32** @ctrblk, align 8
  %48 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %49 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @__ctrblk_init(i32* %47, i32* %50, i32 %51)
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %46, %43, %37
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32*, i32** @ctrblk, align 8
  br label %63

59:                                               ; preds = %53
  %60 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %61 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  br label %63

63:                                               ; preds = %59, %57
  %64 = phi i32* [ %58, %57 ], [ %62, %59 ]
  store i32* %64, i32** %11, align 8
  %65 = load %struct.s390_paes_ctx*, %struct.s390_paes_ctx** %8, align 8
  %66 = getelementptr inbounds %struct.s390_paes_ctx, %struct.s390_paes_ctx* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = or i64 %67, %68
  %70 = load %struct.s390_paes_ctx*, %struct.s390_paes_ctx** %8, align 8
  %71 = getelementptr inbounds %struct.s390_paes_ctx, %struct.s390_paes_ctx* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %75 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %80 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @cpacf_kmctr(i64 %69, i32 %73, i32* %78, i32 %83, i32 %84, i32* %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %119

89:                                               ; preds = %63
  %90 = load i32*, i32** %11, align 8
  %91 = load i32*, i32** @ctrblk, align 8
  %92 = icmp eq i32* %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %95 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %14, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %102 = sext i32 %101 to i64
  %103 = sub i64 0, %102
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %106 = call i32 @memcpy(i32* %96, i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %93, %89
  %108 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %109 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %112 = call i32 @crypto_inc(i32* %110, i32 %111)
  %113 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %114 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %13, align 4
  %117 = sub i32 %115, %116
  %118 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %113, %struct.blkcipher_walk* %114, i32 %117)
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %107, %63
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %139

123:                                              ; preds = %119
  %124 = load %struct.s390_paes_ctx*, %struct.s390_paes_ctx** %8, align 8
  %125 = call i64 @__ctr_paes_set_key(%struct.s390_paes_ctx* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %123
  %128 = load i32, i32* %16, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = call i32 @spin_unlock(i32* @ctrblk_lock)
  br label %132

132:                                              ; preds = %130, %127
  %133 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %134 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %135 = load i32, i32* @EIO, align 4
  %136 = sub i32 0, %135
  %137 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %133, %struct.blkcipher_walk* %134, i32 %136)
  store i32 %137, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %202

138:                                              ; preds = %123
  br label %139

139:                                              ; preds = %138, %119
  br label %31

140:                                              ; preds = %31
  %141 = load i32, i32* %16, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = call i32 @spin_unlock(i32* @ctrblk_lock)
  br label %145

145:                                              ; preds = %143, %140
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %200

148:                                              ; preds = %145
  br label %149

149:                                              ; preds = %183, %148
  br label %150

150:                                              ; preds = %149
  %151 = load %struct.s390_paes_ctx*, %struct.s390_paes_ctx** %8, align 8
  %152 = getelementptr inbounds %struct.s390_paes_ctx, %struct.s390_paes_ctx* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %6, align 8
  %155 = or i64 %153, %154
  %156 = load %struct.s390_paes_ctx*, %struct.s390_paes_ctx** %8, align 8
  %157 = getelementptr inbounds %struct.s390_paes_ctx, %struct.s390_paes_ctx* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %161 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %166 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %167 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @cpacf_kmctr(i64 %155, i32 %159, i32* %25, i32 %164, i32 %165, i32* %168)
  %170 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %150
  br label %184

173:                                              ; preds = %150
  %174 = load %struct.s390_paes_ctx*, %struct.s390_paes_ctx** %8, align 8
  %175 = call i64 @__ctr_paes_set_key(%struct.s390_paes_ctx* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %179 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %180 = load i32, i32* @EIO, align 4
  %181 = sub i32 0, %180
  %182 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %178, %struct.blkcipher_walk* %179, i32 %181)
  store i32 %182, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %202

183:                                              ; preds = %173
  br label %149

184:                                              ; preds = %172
  %185 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %186 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @memcpy(i32* %189, i32* %25, i32 %190)
  %192 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %193 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %196 = call i32 @crypto_inc(i32* %194, i32 %195)
  %197 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %198 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %199 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %197, %struct.blkcipher_walk* %198, i32 0)
  store i32 %199, i32* %15, align 4
  br label %200

200:                                              ; preds = %184, %145
  %201 = load i32, i32* %15, align 4
  store i32 %201, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %202

202:                                              ; preds = %200, %177, %132
  %203 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local %struct.s390_paes_ctx* @crypto_blkcipher_ctx(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @__ctrblk_init(i32*, i32*, i32) #1

declare dso_local i32 @cpacf_kmctr(i64, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @crypto_inc(i32*, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i64 @__ctr_paes_set_key(%struct.s390_paes_ctx*) #1

declare dso_local i32 @spin_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
