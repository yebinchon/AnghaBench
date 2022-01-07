; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg-buffers.c_free_std_msg_buffer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg-buffers.c_free_std_msg_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_buffers_chunk = type { i64, i32, i64*, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.msg_buffer = type { i32, i64, %struct.msg_buffers_chunk* }

@MSG_BUFFER_USED_MAGIC = common dso_local global i64 0, align 8
@MSG_CHUNK_USED_MAGIC = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"free_msg_buffer(%d)\0A\00", align 1
@MSG_BUFFER_FREE_MAGIC = common dso_local global i64 0, align 8
@total_used_buffers_size = common dso_local global i32 0, align 4
@total_used_buffers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @free_std_msg_buffer(%struct.msg_buffers_chunk* %0, %struct.msg_buffer* %1) #0 {
  %3 = alloca %struct.msg_buffers_chunk*, align 8
  %4 = alloca %struct.msg_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.msg_buffers_chunk* %0, %struct.msg_buffers_chunk** %3, align 8
  store %struct.msg_buffer* %1, %struct.msg_buffer** %4, align 8
  %7 = load %struct.msg_buffer*, %struct.msg_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.msg_buffer, %struct.msg_buffer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %2
  %12 = load %struct.msg_buffer*, %struct.msg_buffer** %4, align 8
  %13 = getelementptr inbounds %struct.msg_buffer, %struct.msg_buffer* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MSG_BUFFER_USED_MAGIC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %19 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MSG_CHUNK_USED_MAGIC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.msg_buffer*, %struct.msg_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.msg_buffer, %struct.msg_buffer* %24, i32 0, i32 2
  %26 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %25, align 8
  %27 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %28 = icmp eq %struct.msg_buffers_chunk* %26, %27
  br label %29

29:                                               ; preds = %23, %17, %11, %2
  %30 = phi i1 [ false, %17 ], [ false, %11 ], [ false, %2 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %34 = load %struct.msg_buffer*, %struct.msg_buffer** %4, align 8
  %35 = call i32 @get_buffer_no(%struct.msg_buffers_chunk* %33, %struct.msg_buffer* %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %37 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @verbosity, align 4
  %40 = icmp sgt i32 %39, 2
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %29
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %50 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  br label %60

60:                                               ; preds = %72, %45
  %61 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %62 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = icmp sgt i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  br label %72

72:                                               ; preds = %60
  %73 = load i32, i32* %5, align 4
  %74 = ashr i32 %73, 1
  store i32 %74, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %60, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* @MSG_BUFFER_FREE_MAGIC, align 8
  %78 = load %struct.msg_buffer*, %struct.msg_buffer** %4, align 8
  %79 = getelementptr inbounds %struct.msg_buffer, %struct.msg_buffer* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load %struct.msg_buffer*, %struct.msg_buffer** %4, align 8
  %81 = getelementptr inbounds %struct.msg_buffer, %struct.msg_buffer* %80, i32 0, i32 0
  store i32 -1073741824, i32* %81, align 8
  %82 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %83 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %82, i32 0, i32 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %89 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @total_used_buffers_size, align 4
  %92 = sext i32 %91 to i64
  %93 = sub nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* @total_used_buffers_size, align 4
  %95 = load i32, i32* @total_used_buffers, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* @total_used_buffers, align 4
  %97 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %98 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %97, i32 0, i32 2
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %76
  %104 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %105 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %104, i32 0, i32 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, 4
  %110 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %111 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %112, 5
  %114 = icmp sge i32 %109, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %103
  %116 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %117 = call i32 @free_msg_buffers_chunk(%struct.msg_buffers_chunk* %116)
  br label %118

118:                                              ; preds = %115, %103, %76
  ret i32 1
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_buffer_no(%struct.msg_buffers_chunk*, %struct.msg_buffer*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @free_msg_buffers_chunk(%struct.msg_buffers_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
