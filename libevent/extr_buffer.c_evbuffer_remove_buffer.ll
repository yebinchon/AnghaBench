; ModuleID = '/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_remove_buffer.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_remove_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, i64, i64, %struct.evbuffer_chain*, %struct.evbuffer_chain*, %struct.evbuffer_chain**, i64, i64 }
%struct.evbuffer_chain = type { i64, i64, i64, %struct.evbuffer_chain* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_remove_buffer(%struct.evbuffer* %0, %struct.evbuffer* %1, i64 %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.evbuffer_chain*, align 8
  %8 = alloca %struct.evbuffer_chain*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.evbuffer_chain**, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %13 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %14 = call i32 @EVBUFFER_LOCK2(%struct.evbuffer* %12, %struct.evbuffer* %13)
  %15 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %16 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %15, i32 0, i32 3
  %17 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %16, align 8
  store %struct.evbuffer_chain* %17, %struct.evbuffer_chain** %8, align 8
  store %struct.evbuffer_chain* %17, %struct.evbuffer_chain** %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %22 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %23 = icmp eq %struct.evbuffer* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %3
  store i32 0, i32* %10, align 4
  br label %182

25:                                               ; preds = %20
  %26 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %27 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %32 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %25
  store i32 -1, i32* %10, align 4
  br label %182

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %39 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp uge i64 %37, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %44 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %6, align 8
  %46 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %47 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %48 = call i32 @evbuffer_add_buffer(%struct.evbuffer* %46, %struct.evbuffer* %47)
  %49 = load i64, i64* %6, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %10, align 4
  br label %182

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %89, %51
  %53 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %54 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp ule i64 %55, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %52
  %59 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %60 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %61 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %60, i32 0, i32 5
  %62 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %61, align 8
  %63 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %62, align 8
  %64 = icmp ne %struct.evbuffer_chain* %59, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @EVUTIL_ASSERT(i32 %65)
  %67 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %68 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %9, align 8
  %72 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %73 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %6, align 8
  %77 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  store %struct.evbuffer_chain* %77, %struct.evbuffer_chain** %8, align 8
  %78 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %79 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %78, i32 0, i32 5
  %80 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %79, align 8
  %81 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %82 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %81, i32 0, i32 3
  %83 = icmp eq %struct.evbuffer_chain** %80, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %58
  %85 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %86 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %85, i32 0, i32 3
  %87 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %88 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %87, i32 0, i32 5
  store %struct.evbuffer_chain** %86, %struct.evbuffer_chain*** %88, align 8
  br label %89

89:                                               ; preds = %84, %58
  %90 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %91 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %90, i32 0, i32 3
  %92 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %91, align 8
  store %struct.evbuffer_chain* %92, %struct.evbuffer_chain** %7, align 8
  br label %52

93:                                               ; preds = %52
  %94 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %95 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %96 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %95, i32 0, i32 3
  %97 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %96, align 8
  %98 = icmp ne %struct.evbuffer_chain* %94, %97
  br i1 %98, label %99, label %138

99:                                               ; preds = %93
  %100 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %101 = call %struct.evbuffer_chain** @evbuffer_free_trailing_empty_chains(%struct.evbuffer* %100)
  store %struct.evbuffer_chain** %101, %struct.evbuffer_chain*** %11, align 8
  %102 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %103 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %102, i32 0, i32 3
  %104 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %103, align 8
  %105 = icmp eq %struct.evbuffer_chain* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %108 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %107, i32 0, i32 3
  %109 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %108, align 8
  %110 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %111 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %110, i32 0, i32 3
  store %struct.evbuffer_chain* %109, %struct.evbuffer_chain** %111, align 8
  br label %117

112:                                              ; preds = %99
  %113 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %114 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %113, i32 0, i32 3
  %115 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %114, align 8
  %116 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %11, align 8
  store %struct.evbuffer_chain* %115, %struct.evbuffer_chain** %116, align 8
  br label %117

117:                                              ; preds = %112, %106
  %118 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %119 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %120 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %119, i32 0, i32 4
  store %struct.evbuffer_chain* %118, %struct.evbuffer_chain** %120, align 8
  %121 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %122 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %121, i32 0, i32 3
  store %struct.evbuffer_chain* null, %struct.evbuffer_chain** %122, align 8
  %123 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %124 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %125 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %124, i32 0, i32 3
  store %struct.evbuffer_chain* %123, %struct.evbuffer_chain** %125, align 8
  %126 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %127 = call i32 @advance_last_with_data(%struct.evbuffer* %126)
  %128 = load i64, i64* %9, align 8
  %129 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %130 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, %128
  store i64 %132, i64* %130, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %135 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, %133
  store i64 %137, i64* %135, align 8
  br label %138

138:                                              ; preds = %117, %93
  %139 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %140 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %141 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %144 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %142, %145
  %147 = load i64, i64* %6, align 8
  %148 = call i32 @evbuffer_add(%struct.evbuffer* %139, i64 %146, i64 %147)
  %149 = load i64, i64* %6, align 8
  %150 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %151 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, %149
  store i64 %153, i64* %151, align 8
  %154 = load i64, i64* %6, align 8
  %155 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %156 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = sub i64 %157, %154
  store i64 %158, i64* %156, align 8
  %159 = load i64, i64* %6, align 8
  %160 = load i64, i64* %9, align 8
  %161 = add i64 %160, %159
  store i64 %161, i64* %9, align 8
  %162 = load i64, i64* %9, align 8
  %163 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %164 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = sub i64 %165, %162
  store i64 %166, i64* %164, align 8
  %167 = load i64, i64* %9, align 8
  %168 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %169 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = add i64 %170, %167
  store i64 %171, i64* %169, align 8
  %172 = load i64, i64* %9, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %138
  %175 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %176 = call i32 @evbuffer_invoke_callbacks_(%struct.evbuffer* %175)
  %177 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %178 = call i32 @evbuffer_invoke_callbacks_(%struct.evbuffer* %177)
  br label %179

179:                                              ; preds = %174, %138
  %180 = load i64, i64* %9, align 8
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %10, align 4
  br label %182

182:                                              ; preds = %179, %42, %35, %24
  %183 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %184 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %185 = call i32 @EVBUFFER_UNLOCK2(%struct.evbuffer* %183, %struct.evbuffer* %184)
  %186 = load i32, i32* %10, align 4
  ret i32 %186
}

declare dso_local i32 @EVBUFFER_LOCK2(%struct.evbuffer*, %struct.evbuffer*) #1

declare dso_local i32 @evbuffer_add_buffer(%struct.evbuffer*, %struct.evbuffer*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local %struct.evbuffer_chain** @evbuffer_free_trailing_empty_chains(%struct.evbuffer*) #1

declare dso_local i32 @advance_last_with_data(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i64, i64) #1

declare dso_local i32 @evbuffer_invoke_callbacks_(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_UNLOCK2(%struct.evbuffer*, %struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
