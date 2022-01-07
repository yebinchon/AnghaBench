; ModuleID = '/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_search_range.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_search_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { %struct.evbuffer_chain* }
%struct.evbuffer_chain = type { i8*, i32, i64, %struct.evbuffer_chain* }
%struct.evbuffer_ptr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.evbuffer_chain* }

@EV_SSIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evbuffer_search_range(%struct.evbuffer_ptr* noalias sret %0, %struct.evbuffer* %1, i8* %2, i64 %3, %struct.evbuffer_ptr* %4, %struct.evbuffer_ptr* %5) #0 {
  %7 = alloca %struct.evbuffer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.evbuffer_ptr*, align 8
  %11 = alloca %struct.evbuffer_ptr*, align 8
  %12 = alloca %struct.evbuffer_chain*, align 8
  %13 = alloca %struct.evbuffer_chain*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.evbuffer_ptr* %4, %struct.evbuffer_ptr** %10, align 8
  store %struct.evbuffer_ptr* %5, %struct.evbuffer_ptr** %11, align 8
  store %struct.evbuffer_chain* null, %struct.evbuffer_chain** %13, align 8
  %17 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %18 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %17)
  %19 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %10, align 8
  %20 = icmp ne %struct.evbuffer_ptr* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %6
  %22 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %10, align 8
  %23 = call i32 @memcpy(%struct.evbuffer_ptr* %0, %struct.evbuffer_ptr* %22, i32 24)
  %24 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %25, align 8
  store %struct.evbuffer_chain* %26, %struct.evbuffer_chain** %12, align 8
  br label %36

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %30 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %29, i32 0, i32 0
  %31 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %30, align 8
  %32 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store %struct.evbuffer_chain* %31, %struct.evbuffer_chain** %33, align 8
  store %struct.evbuffer_chain* %31, %struct.evbuffer_chain** %12, align 8
  %34 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %36

36:                                               ; preds = %27, %21
  %37 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %11, align 8
  %38 = icmp ne %struct.evbuffer_ptr* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %11, align 8
  %41 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %42, align 8
  store %struct.evbuffer_chain* %43, %struct.evbuffer_chain** %13, align 8
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @EV_SSIZE_MAX, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %44
  br label %178

52:                                               ; preds = %47
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %15, align 1
  br label %56

56:                                               ; preds = %174, %52
  %57 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %58 = icmp ne %struct.evbuffer_chain* %57, null
  br i1 %58, label %59, label %175

59:                                               ; preds = %56
  %60 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %61 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %64 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  %68 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  store i8* %72, i8** %16, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = load i8, i8* %15, align 1
  %75 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %76 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %77, %81
  %83 = call i8* @memchr(i8* %73, i8 signext %74, i64 %82)
  store i8* %83, i8** %14, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %150

86:                                               ; preds = %59
  %87 = load i8*, i8** %14, align 8
  %88 = load i8*, i8** %16, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %91
  store i64 %94, i64* %92, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 8
  %106 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @evbuffer_ptr_memcmp(%struct.evbuffer* %106, %struct.evbuffer_ptr* %0, i8* %107, i64 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %125, label %111

111:                                              ; preds = %86
  %112 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %11, align 8
  %113 = icmp ne %struct.evbuffer_ptr* %112, null
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %9, align 8
  %118 = add nsw i64 %116, %117
  %119 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %11, align 8
  %120 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %176

124:                                              ; preds = %114, %111
  br label %178

125:                                              ; preds = %86
  %126 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %126, align 8
  %129 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  %133 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %138 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %136, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %125
  %142 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %143 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %142, i32 0, i32 3
  %144 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %143, align 8
  %145 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  store %struct.evbuffer_chain* %144, %struct.evbuffer_chain** %146, align 8
  store %struct.evbuffer_chain* %144, %struct.evbuffer_chain** %12, align 8
  %147 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  br label %149

149:                                              ; preds = %141, %125
  br label %174

150:                                              ; preds = %59
  %151 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %152 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %13, align 8
  %153 = icmp eq %struct.evbuffer_chain* %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %176

155:                                              ; preds = %150
  %156 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %157 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = sub nsw i64 %158, %162
  %164 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, %163
  store i64 %166, i64* %164, align 8
  %167 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %168 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %167, i32 0, i32 3
  %169 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %168, align 8
  %170 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  store %struct.evbuffer_chain* %169, %struct.evbuffer_chain** %171, align 8
  store %struct.evbuffer_chain* %169, %struct.evbuffer_chain** %12, align 8
  %172 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  store i32 0, i32* %173, align 8
  br label %174

174:                                              ; preds = %155, %149
  br label %56

175:                                              ; preds = %56
  br label %176

176:                                              ; preds = %175, %154, %123
  %177 = call i32 @PTR_NOT_FOUND(%struct.evbuffer_ptr* %0)
  br label %178

178:                                              ; preds = %176, %124, %51
  %179 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %180 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %179)
  ret void
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @memcpy(%struct.evbuffer_ptr*, %struct.evbuffer_ptr*, i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @evbuffer_ptr_memcmp(%struct.evbuffer*, %struct.evbuffer_ptr*, i8*, i64) #1

declare dso_local i32 @PTR_NOT_FOUND(%struct.evbuffer_ptr*) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
