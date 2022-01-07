; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_pp_collect_finished.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_pp_collect_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parallel_processes = type { i32, i64, i32 (i32, i32*, i32, i32)*, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GIT_CP_WAIT_CLEANUP = common dso_local global i64 0, align 8
@GIT_CP_FREE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@GIT_CP_WORKING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parallel_processes*)* @pp_collect_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_collect_finished(%struct.parallel_processes* %0) #0 {
  %2 = alloca %struct.parallel_processes*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.parallel_processes* %0, %struct.parallel_processes** %2, align 8
  %7 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %8 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %198, %1
  %11 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %12 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %199

15:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %35, %15
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %19 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %24 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @GIT_CP_WAIT_CLEANUP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %38

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %16

38:                                               ; preds = %33, %16
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %41 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %199

45:                                               ; preds = %38
  %46 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %47 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %46, i32 0, i32 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = call i32 @finish_command(i32* %52)
  store i32 %53, i32* %4, align 4
  %54 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %55 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %54, i32 0, i32 2
  %56 = load i32 (i32, i32*, i32, i32)*, i32 (i32, i32*, i32, i32)** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %59 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %58, i32 0, i32 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %66 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %69 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %68, i32 0, i32 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 %56(i32 %57, i32* %64, i32 %67, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %45
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %79, %45
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %199

85:                                               ; preds = %81
  %86 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %87 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %87, align 8
  %90 = load i64, i64* @GIT_CP_FREE, align 8
  %91 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %92 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %91, i32 0, i32 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i64 %90, i64* %97, align 8
  %98 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %99 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %98, i32 0, i32 6
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i32 -1, i32* %104, align 4
  %105 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %106 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %105, i32 0, i32 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = call i32 @child_process_init(i32* %111)
  %113 = load i32, i32* %3, align 4
  %114 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %115 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %113, %116
  br i1 %117, label %118, label %137

118:                                              ; preds = %85
  %119 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %120 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %119, i32 0, i32 5
  %121 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %122 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %121, i32 0, i32 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = call i32 @strbuf_addbuf(i32* %120, i32* %127)
  %129 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %130 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %129, i32 0, i32 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i32, i32* %3, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = call i32 @strbuf_reset(i32* %135)
  br label %198

137:                                              ; preds = %85
  %138 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %139 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %138, i32 0, i32 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load i32, i32* %3, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* @stderr, align 4
  %146 = call i32 @strbuf_write(i32* %144, i32 %145)
  %147 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %148 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %147, i32 0, i32 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = call i32 @strbuf_reset(i32* %153)
  %155 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %156 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %155, i32 0, i32 5
  %157 = load i32, i32* @stderr, align 4
  %158 = call i32 @strbuf_write(i32* %156, i32 %157)
  %159 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %160 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %159, i32 0, i32 5
  %161 = call i32 @strbuf_reset(i32* %160)
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %185, %137
  %163 = load i32, i32* %3, align 4
  %164 = load i32, i32* %5, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %188

166:                                              ; preds = %162
  %167 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %168 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %167, i32 0, i32 4
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %171 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %3, align 4
  %174 = add nsw i32 %172, %173
  %175 = load i32, i32* %5, align 4
  %176 = srem i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @GIT_CP_WORKING, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %166
  br label %188

184:                                              ; preds = %166
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %3, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %3, align 4
  br label %162

188:                                              ; preds = %183, %162
  %189 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %190 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %3, align 4
  %193 = add nsw i32 %191, %192
  %194 = load i32, i32* %5, align 4
  %195 = srem i32 %193, %194
  %196 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %197 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 8
  br label %198

198:                                              ; preds = %188, %118
  br label %10

199:                                              ; preds = %84, %44, %10
  %200 = load i32, i32* %6, align 4
  ret i32 %200
}

declare dso_local i32 @finish_command(i32*) #1

declare dso_local i32 @child_process_init(i32*) #1

declare dso_local i32 @strbuf_addbuf(i32*, i32*) #1

declare dso_local i32 @strbuf_reset(i32*) #1

declare dso_local i32 @strbuf_write(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
