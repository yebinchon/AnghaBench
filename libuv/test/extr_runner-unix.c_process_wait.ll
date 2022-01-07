; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_runner-unix.c_process_wait.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_runner-unix.c_process_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_7__* }
%struct.timeval = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"pipe()\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"pthread_create()\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"select()\00", align 1
@SIGTERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_wait(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.timeval, align 4
  %17 = alloca %struct.timeval, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 -1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 -1, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = call i32 @dowait(%struct.TYPE_8__* %12)
  store i32 0, i32* %4, align 4
  br label %198

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %35 = bitcast i32** %34 to i32*
  %36 = call i32 @pipe(i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %198

41:                                               ; preds = %33
  %42 = call i64 @pthread_attr_init(i32* %14)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (...) @abort() #4
  unreachable

46:                                               ; preds = %41
  %47 = call i64 @pthread_attr_setstacksize(i32* %14, i32 262144)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 (...) @abort() #4
  unreachable

51:                                               ; preds = %46
  %52 = call i32 @pthread_create(i32* %13, i32* %14, i32 (%struct.TYPE_8__*)* @dowait, %struct.TYPE_8__* %12)
  store i32 %52, i32* %9, align 4
  %53 = call i64 @pthread_attr_destroy(i32* %14)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 (...) @abort() #4
  unreachable

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %186

62:                                               ; preds = %57
  %63 = call i64 @gettimeofday(%struct.timeval* %16, i32* null)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (...) @abort() #4
  unreachable

67:                                               ; preds = %62
  %68 = bitcast %struct.timeval* %17 to i8*
  %69 = bitcast %struct.timeval* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 8, i1 false)
  br label %70

70:                                               ; preds = %148, %67
  %71 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %72, %74
  br i1 %75, label %90, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %84, %86
  br label %88

88:                                               ; preds = %82, %76
  %89 = phi i1 [ false, %76 ], [ %87, %82 ]
  br label %90

90:                                               ; preds = %88, %70
  %91 = phi i1 [ true, %70 ], [ %89, %88 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %95, %97
  %99 = mul nsw i32 %98, 1000
  %100 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %101, 1000
  %103 = add nsw i32 %99, %102
  %104 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sdiv i32 %105, 1000
  %107 = sub nsw i32 %103, %106
  store i32 %107, i32* %15, align 4
  store i32 0, i32* %9, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp uge i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %90
  br label %149

112:                                              ; preds = %90
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %15, align 4
  %115 = sub i32 %113, %114
  %116 = udiv i32 %115, 1000
  %117 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %15, align 4
  %120 = sub i32 %118, %119
  %121 = urem i32 %120, 1000
  %122 = mul i32 %121, 1000
  %123 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i32 %122, i32* %123, align 4
  %124 = call i32 @FD_ZERO(i32* %18)
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @FD_SET(i32 %128, i32* %18)
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  %135 = call i32 @select(i32 %134, i32* %18, i32* null, i32* null, %struct.timeval* %17)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %142

138:                                              ; preds = %112
  %139 = load i64, i64* @errno, align 8
  %140 = load i64, i64* @EINTR, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %143, label %142

142:                                              ; preds = %138, %112
  br label %149

143:                                              ; preds = %138
  %144 = call i64 @gettimeofday(%struct.timeval* %17, i32* null)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = call i32 (...) @abort() #4
  unreachable

148:                                              ; preds = %143
  br label %70

149:                                              ; preds = %142, %111
  %150 = load i32, i32* %9, align 4
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %179

154:                                              ; preds = %149
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 0, i32* %10, align 4
  br label %178

158:                                              ; preds = %154
  store i32 0, i32* %8, align 4
  br label %159

159:                                              ; preds = %174, %158
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %159
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = mul i64 %166, 4
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i64 %167
  store %struct.TYPE_7__* %168, %struct.TYPE_7__** %11, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @SIGTERM, align 4
  %173 = call i32 @kill(i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %163
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %159

177:                                              ; preds = %159
  store i32 -2, i32* %10, align 4
  br label %178

178:                                              ; preds = %177, %157
  br label %179

179:                                              ; preds = %178, %152
  %180 = load i32, i32* %13, align 4
  %181 = call i64 @pthread_join(i32 %180, i32* null)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = call i32 (...) @abort() #4
  unreachable

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %185, %60
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @close(i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @close(i32 %195)
  %197 = load i32, i32* %10, align 4
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %186, %39, %31
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @dowait(%struct.TYPE_8__*) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @pthread_attr_init(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @pthread_attr_setstacksize(i32*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32 (%struct.TYPE_8__*)*, %struct.TYPE_8__*) #1

declare dso_local i64 @pthread_attr_destroy(i32*) #1

declare dso_local i64 @gettimeofday(%struct.timeval*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i64 @pthread_join(i32, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
