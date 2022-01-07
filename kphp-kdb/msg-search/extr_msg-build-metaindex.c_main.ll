; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-build-metaindex.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-build-metaindex.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i32, i32, i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@ifd = common dso_local global i64 0, align 8
@N = common dso_local global i64 0, align 8
@cur_offs = common dso_local global i64 0, align 8
@load_offs = common dso_local global i64 0, align 8
@r = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@buff = common dso_local global i32* null, align 8
@READ_AHEAD = common dso_local global i32 0, align 4
@MAIL_INDEX_BLOCK_MAGIC = common dso_local global i64 0, align 8
@A = common dso_local global %struct.TYPE_7__* null, align 8
@P = common dso_local global %struct.TYPE_7__** null, align 8
@MAX_USERS = common dso_local global i64 0, align 8
@B = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 2
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* @O_RDONLY, align 4
  %16 = call i64 @open(i8* %14, i32 %15)
  store i64 %16, i64* @ifd, align 8
  %17 = load i64, i64* @ifd, align 8
  %18 = icmp sge i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  store i64 0, i64* @N, align 8
  br label %21

21:                                               ; preds = %158, %2
  %22 = load i64, i64* @cur_offs, align 8
  %23 = add i64 %22, 24
  %24 = load i64, i64* @load_offs, align 8
  %25 = load i32, i32* @r, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = icmp ugt i64 %23, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %21
  %30 = load i64, i64* @ifd, align 8
  %31 = load i64, i64* @cur_offs, align 8
  %32 = load i32, i32* @SEEK_SET, align 4
  %33 = call i64 @lseek(i64 %30, i64 %31, i32 %32)
  %34 = load i64, i64* @cur_offs, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i64, i64* @ifd, align 8
  %39 = load i32*, i32** @buff, align 8
  %40 = load i32, i32* @READ_AHEAD, align 4
  %41 = call i32 @read(i64 %38, i32* %39, i32 %40)
  store i32 %41, i32* @r, align 4
  %42 = load i32, i32* @r, align 4
  %43 = icmp sge i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i64, i64* @cur_offs, align 8
  store i64 %46, i64* @load_offs, align 8
  %47 = load i32, i32* @r, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %29
  br label %159

50:                                               ; preds = %29
  %51 = load i32, i32* @r, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp uge i64 %52, 24
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  br label %56

56:                                               ; preds = %50, %21
  %57 = load i32*, i32** @buff, align 8
  %58 = load i64, i64* @cur_offs, align 8
  %59 = load i64, i64* @load_offs, align 8
  %60 = sub nsw i64 %58, %59
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = bitcast i32* %61 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %6, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MAIL_INDEX_BLOCK_MAGIC, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %72, 2147483648
  br i1 %73, label %74, label %86

74:                                               ; preds = %56
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = icmp ult i64 %78, 16777216
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp ult i64 %84, 67108864
  br label %86

86:                                               ; preds = %80, %74, %56
  %87 = phi i1 [ false, %74 ], [ false, %56 ], [ %85, %80 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i64, i64* @cur_offs, align 8
  %91 = add i64 %90, 24
  store i64 %91, i64* @cur_offs, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %140

96:                                               ; preds = %86
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ult i64 %99, 67108864
  br i1 %100, label %101, label %140

101:                                              ; preds = %96
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** @A, align 8
  %106 = load i64, i64* @N, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 4
  store i64 %104, i64* %108, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** @A, align 8
  %113 = load i64, i64* @N, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i32 %111, i32* %115, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** @A, align 8
  %120 = load i64, i64* @N, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  store i32 %118, i32* %122, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** @A, align 8
  %124 = load i64, i64* @N, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  store i64 0, i64* %126, align 8
  %127 = load i64, i64* @cur_offs, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** @A, align 8
  %129 = load i64, i64* @N, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  store i64 %127, i64* %131, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** @A, align 8
  %133 = load i64, i64* @N, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 %133
  %135 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @P, align 8
  %136 = load i64, i64* @N, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %135, i64 %136
  store %struct.TYPE_7__* %134, %struct.TYPE_7__** %137, align 8
  %138 = load i64, i64* @N, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* @N, align 8
  br label %140

140:                                              ; preds = %101, %96, %86
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = mul nsw i32 %143, 16
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %147, 4
  %149 = add nsw i32 %144, %148
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* @cur_offs, align 8
  %152 = add nsw i64 %151, %150
  store i64 %152, i64* @cur_offs, align 8
  %153 = load i64, i64* @N, align 8
  %154 = load i64, i64* @MAX_USERS, align 8
  %155 = icmp ule i64 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  br label %158

158:                                              ; preds = %140
  br i1 true, label %21, label %159

159:                                              ; preds = %158, %49
  %160 = load i64, i64* @N, align 8
  %161 = sub i64 %160, 1
  %162 = call i32 @my_sort(i32 0, i64 %161)
  store i32 0, i32* %7, align 4
  br label %163

163:                                              ; preds = %180, %159
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* @N, align 8
  %167 = icmp ult i64 %165, %166
  br i1 %167, label %168, label %183

168:                                              ; preds = %163
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** @B, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 %171
  %173 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @P, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %173, i64 %175
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = bitcast %struct.TYPE_7__* %172 to i8*
  %179 = bitcast %struct.TYPE_7__* %177 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %178, i8* align 8 %179, i64 32, i1 false)
  br label %180

180:                                              ; preds = %168
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %7, align 4
  br label %163

183:                                              ; preds = %163
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** @B, align 8
  %185 = load i64, i64* @N, align 8
  %186 = mul i64 %185, 4
  %187 = call i32 @write(i32 1, %struct.TYPE_7__* %184, i64 %186)
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = load i64, i64* @N, align 8
  %191 = mul i64 %190, 4
  %192 = icmp eq i64 %189, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i64 @lseek(i64, i64, i32) #1

declare dso_local i32 @read(i64, i32*, i32) #1

declare dso_local i32 @my_sort(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @write(i32, %struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
