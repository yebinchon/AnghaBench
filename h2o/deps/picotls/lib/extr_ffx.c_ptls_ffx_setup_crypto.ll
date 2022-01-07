; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_ffx.c_ptls_ffx_setup_crypto.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_ffx.c_ptls_ffx_setup_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_8__, i32, i32* }
%struct.TYPE_8__ = type { i32*, i32*, i32 (i32*)*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64 }

@__const.ptls_ffx_setup_crypto.last_byte_mask = private unnamed_addr constant [8 x i32] [i32 255, i32 254, i32 252, i32 248, i32 240, i32 224, i32 192, i32 128], align 16
@PTLS_ERROR_LIBRARY = common dso_local global i32 0, align 4
@ffx_init = common dso_local global i32* null, align 8
@ffx_encrypt = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptls_ffx_setup_crypto(i32* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [8 x i32], align 16
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %14, align 8
  store i32* null, i32** %15, align 8
  %20 = load i64, i64* %11, align 8
  %21 = add i64 %20, 7
  %22 = udiv i64 %21, 8
  store i64 %22, i64* %16, align 8
  %23 = bitcast [8 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([8 x i32]* @__const.ptls_ffx_setup_crypto.last_byte_mask to i8*), i64 32, i1 false)
  %24 = load i64, i64* %16, align 8
  %25 = icmp ule i64 %24, 32
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i64, i64* %16, align 8
  %28 = icmp uge i64 %27, 2
  br label %29

29:                                               ; preds = %26, %6
  %30 = phi i1 [ false, %6 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i32 (i32*)*, i32 (i32*)** %35, align 8
  %37 = icmp eq i32 (i32*)* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = icmp eq %struct.TYPE_7__* %57, null
  br i1 %58, label %70, label %59

59:                                               ; preds = %29
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %62, %68
  br label %70

70:                                               ; preds = %59, %29
  %71 = phi i1 [ true, %29 ], [ %69, %59 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = icmp eq %struct.TYPE_7__* %77, null
  br i1 %78, label %90, label %79

79:                                               ; preds = %70
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %82, %88
  br label %90

90:                                               ; preds = %79, %70
  %91 = phi i1 [ true, %70 ], [ %89, %79 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = icmp eq %struct.TYPE_7__* %97, null
  br i1 %98, label %108, label %99

99:                                               ; preds = %90
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %16, align 8
  %107 = icmp eq i64 %105, %106
  br label %108

108:                                              ; preds = %99, %90
  %109 = phi i1 [ true, %90 ], [ %107, %99 ]
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 16
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load i64, i64* %16, align 8
  %119 = icmp ule i64 %118, 32
  br i1 %119, label %120, label %132

120:                                              ; preds = %108
  %121 = load i64, i64* %16, align 8
  %122 = icmp uge i64 %121, 2
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = call i32* @ptls_cipher_new(%struct.TYPE_10__* %124, i32 1, i8* %125)
  store i32* %126, i32** %15, align 8
  %127 = load i32*, i32** %15, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %129, %123
  br label %134

132:                                              ; preds = %120, %108
  %133 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %132, %131
  %135 = load i32, i32* %13, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %184

137:                                              ; preds = %134
  %138 = load i32*, i32** %15, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 8
  store i32* %138, i32** %140, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load i64, i64* %16, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 2
  store i64 %147, i64* %149, align 8
  %150 = load i64, i64* %16, align 8
  %151 = trunc i64 %150 to i32
  %152 = sdiv i32 %151, 2
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 8
  %155 = load i64, i64* %16, align 8
  %156 = trunc i64 %155 to i32
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 %156, %159
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 4
  %163 = load i64, i64* %11, align 8
  %164 = urem i64 %163, 8
  %165 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @ptls_clear_memory(i32 %171, i32 4)
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 6
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  store i32 (i32*)* @ffx_dispose, i32 (i32*)** %175, align 8
  %176 = load i32*, i32** @ffx_init, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  store i32* %176, i32** %179, align 8
  %180 = load i32*, i32** @ffx_encrypt, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 6
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  store i32* %180, i32** %183, align 8
  br label %187

184:                                              ; preds = %134
  %185 = load i32*, i32** %7, align 8
  %186 = call i32 @ffx_dispose(i32* %185)
  br label %187

187:                                              ; preds = %184, %137
  %188 = load i32, i32* %13, align 4
  ret i32 %188
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @ptls_cipher_new(%struct.TYPE_10__*, i32, i8*) #2

declare dso_local i32 @ptls_clear_memory(i32, i32) #2

declare dso_local i32 @ffx_dispose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
