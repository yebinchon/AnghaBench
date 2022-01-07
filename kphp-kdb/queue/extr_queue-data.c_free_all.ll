; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_free_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, i64, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@verbosity = common dso_local global i64 0, align 8
@http_sfd = common dso_local global i32 0, align 4
@TIME_TABLE_SIZE = common dso_local global i32 0, align 4
@keys_cnt = common dso_local global i64 0, align 8
@time_st = common dso_local global %struct.TYPE_8__** null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Problem with key[%s] timeout = %d\0A\00", align 1
@qs = common dso_local global %struct.TYPE_7__* null, align 8
@h_queue = common dso_local global i32 0, align 4
@h_qkey = common dso_local global i32 0, align 4
@secrets = common dso_local global i32 0, align 4
@alias = common dso_local global i32 0, align 4
@h_subscribers = common dso_local global i32 0, align 4
@cr = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Memory left: %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @verbosity, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %137

6:                                                ; preds = %0
  %7 = load i32, i32* @http_sfd, align 4
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load i32, i32* @http_sfd, align 4
  %11 = call i32 @epoll_close(i32 %10)
  %12 = load i32, i32* @http_sfd, align 4
  %13 = call i64 @close(i32 %12)
  %14 = icmp sge i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  br label %17

17:                                               ; preds = %9, %6
  %18 = load i32, i32* @TIME_TABLE_SIZE, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @keys_cnt, align 8
  %21 = add nsw i64 %20, %19
  store i64 %21, i64* @keys_cnt, align 8
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %101, %17
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @TIME_TABLE_SIZE, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %104

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %72, %26
  %28 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @time_st, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %28, i64 %30
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @time_st, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %35, i64 %37
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = icmp ne %struct.TYPE_8__* %34, %39
  br i1 %40, label %41, label %94

41:                                               ; preds = %27
  %42 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @time_st, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %42, i64 %44
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %41
  %53 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @time_st, align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %53, i64 %55
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @time_st, align 8
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %62, i64 %64
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %70)
  br label %72

72:                                               ; preds = %52, %41
  %73 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @time_st, align 8
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %73, i64 %75
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @time_st, align 8
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %86, i64 %88
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = call i32 @delete_qkey(%struct.TYPE_8__* %92)
  br label %27

94:                                               ; preds = %27
  %95 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @time_st, align 8
  %96 = load i32, i32* %1, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %95, i64 %97
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = call i32 @qkey_free(%struct.TYPE_8__* %99)
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %1, align 4
  br label %22

104:                                              ; preds = %22
  %105 = load i64, i64* @keys_cnt, align 8
  %106 = icmp eq i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  br label %109

109:                                              ; preds = %112, %104
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** @qs, align 8
  %111 = icmp ne %struct.TYPE_7__* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** @qs, align 8
  store %struct.TYPE_7__* %113, %struct.TYPE_7__** %2, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** @qs, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %117, %struct.TYPE_7__** @qs, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %119 = call i32 @dl_free(%struct.TYPE_7__* %118, i32 8)
  br label %109

120:                                              ; preds = %109
  %121 = call i32 @shmap_string_vptr_free(i32* @h_queue)
  %122 = call i32 @shmap_string_vptr_free(i32* @h_qkey)
  %123 = call i32 @map_int_int_free(i32* @secrets)
  %124 = call i32 @map_ll_vptr_free(i32* @alias)
  %125 = call i32 @hset_llp_free(i32* @h_subscribers)
  %126 = call i32 @dl_crypto_free(i32* @cr)
  %127 = call i64 (...) @dl_get_memory_used()
  %128 = call i64 (...) @treap_get_memory()
  %129 = sub nsw i64 %127, %128
  store i64 %129, i64* %3, align 8
  %130 = load i32, i32* @stderr, align 4
  %131 = load i64, i64* %3, align 8
  %132 = call i32 @fprintf(i32 %130, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %131)
  %133 = load i64, i64* %3, align 8
  %134 = icmp eq i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  br label %137

137:                                              ; preds = %120, %0
  ret void
}

declare dso_local i32 @epoll_close(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @dbg(i8*, i32, i32) #1

declare dso_local i32 @delete_qkey(%struct.TYPE_8__*) #1

declare dso_local i32 @qkey_free(%struct.TYPE_8__*) #1

declare dso_local i32 @dl_free(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @shmap_string_vptr_free(i32*) #1

declare dso_local i32 @map_int_int_free(i32*) #1

declare dso_local i32 @map_ll_vptr_free(i32*) #1

declare dso_local i32 @hset_llp_free(i32*) #1

declare dso_local i32 @dl_crypto_free(i32*) #1

declare dso_local i64 @dl_get_memory_used(...) #1

declare dso_local i64 @treap_get_memory(...) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
