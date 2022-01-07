; ModuleID = '/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_drain.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, i64, %struct.evbuffer_chain*, %struct.evbuffer_chain**, i64 }
%struct.evbuffer_chain = type { i64, i64, %struct.evbuffer_chain* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_drain(%struct.evbuffer* %0, i64 %1) #0 {
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.evbuffer_chain*, align 8
  %6 = alloca %struct.evbuffer_chain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %11 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %10)
  %12 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %13 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %158

18:                                               ; preds = %2
  %19 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %20 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %9, align 4
  br label %158

24:                                               ; preds = %18
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %30 = call i32 @HAS_PINNED_R(%struct.evbuffer* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %4, align 8
  %34 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %35 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %34, i32 0, i32 2
  %36 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %35, align 8
  store %struct.evbuffer_chain* %36, %struct.evbuffer_chain** %5, align 8
  br label %37

37:                                               ; preds = %46, %32
  %38 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %39 = icmp ne %struct.evbuffer_chain* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %42 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %41, i32 0, i32 2
  %43 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %42, align 8
  store %struct.evbuffer_chain* %43, %struct.evbuffer_chain** %6, align 8
  %44 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %45 = call i32 @evbuffer_chain_free(%struct.evbuffer_chain* %44)
  br label %46

46:                                               ; preds = %40
  %47 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %6, align 8
  store %struct.evbuffer_chain* %47, %struct.evbuffer_chain** %5, align 8
  br label %37

48:                                               ; preds = %37
  %49 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %50 = call i32 @ZERO_CHAIN(%struct.evbuffer* %49)
  br label %150

51:                                               ; preds = %28, %24
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp uge i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* %8, align 8
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i64, i64* %4, align 8
  %59 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %60 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load i64, i64* %4, align 8
  store i64 %63, i64* %7, align 8
  %64 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %65 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %64, i32 0, i32 2
  %66 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %65, align 8
  store %struct.evbuffer_chain* %66, %struct.evbuffer_chain** %5, align 8
  br label %67

67:                                               ; preds = %127, %57
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %70 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp uge i64 %68, %71
  br i1 %72, label %73, label %129

73:                                               ; preds = %67
  %74 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %75 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %74, i32 0, i32 2
  %76 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %75, align 8
  store %struct.evbuffer_chain* %76, %struct.evbuffer_chain** %6, align 8
  %77 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %78 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %7, align 8
  %82 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %83 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %84 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %83, i32 0, i32 3
  %85 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %84, align 8
  %86 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %85, align 8
  %87 = icmp eq %struct.evbuffer_chain* %82, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %73
  %89 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %90 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %89, i32 0, i32 2
  %91 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %92 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %91, i32 0, i32 3
  store %struct.evbuffer_chain** %90, %struct.evbuffer_chain*** %92, align 8
  br label %93

93:                                               ; preds = %88, %73
  %94 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %95 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %94, i32 0, i32 2
  %96 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %97 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %96, i32 0, i32 3
  %98 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %97, align 8
  %99 = icmp eq %struct.evbuffer_chain** %95, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %102 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %101, i32 0, i32 2
  %103 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %104 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %103, i32 0, i32 3
  store %struct.evbuffer_chain** %102, %struct.evbuffer_chain*** %104, align 8
  br label %105

105:                                              ; preds = %100, %93
  %106 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %107 = call i64 @CHAIN_PINNED_R(%struct.evbuffer_chain* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = load i64, i64* %7, align 8
  %111 = icmp eq i64 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @EVUTIL_ASSERT(i32 %112)
  %114 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %115 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %118 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, %116
  store i64 %120, i64* %118, align 8
  %121 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %122 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  br label %129

123:                                              ; preds = %105
  %124 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %125 = call i32 @evbuffer_chain_free(%struct.evbuffer_chain* %124)
  br label %126

126:                                              ; preds = %123
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %6, align 8
  store %struct.evbuffer_chain* %128, %struct.evbuffer_chain** %5, align 8
  br label %67

129:                                              ; preds = %109, %67
  %130 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %131 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %132 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %131, i32 0, i32 2
  store %struct.evbuffer_chain* %130, %struct.evbuffer_chain** %132, align 8
  %133 = load i64, i64* %7, align 8
  %134 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %135 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ule i64 %133, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @EVUTIL_ASSERT(i32 %138)
  %140 = load i64, i64* %7, align 8
  %141 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %142 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, %140
  store i64 %144, i64* %142, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %147 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = sub i64 %148, %145
  store i64 %149, i64* %147, align 8
  br label %150

150:                                              ; preds = %129, %48
  %151 = load i64, i64* %4, align 8
  %152 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %153 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add i64 %154, %151
  store i64 %155, i64* %153, align 8
  %156 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %157 = call i32 @evbuffer_invoke_callbacks_(%struct.evbuffer* %156)
  br label %158

158:                                              ; preds = %150, %23, %17
  %159 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %160 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %159)
  %161 = load i32, i32* %9, align 4
  ret i32 %161
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @HAS_PINNED_R(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_chain_free(%struct.evbuffer_chain*) #1

declare dso_local i32 @ZERO_CHAIN(%struct.evbuffer*) #1

declare dso_local i64 @CHAIN_PINNED_R(%struct.evbuffer_chain*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @evbuffer_invoke_callbacks_(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
