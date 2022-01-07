; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_quicly_free.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_quicly_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_quicly_pending_path_challenge_t = type { %struct.TYPE_17__, %struct.TYPE_16__, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_25__, i32, %struct.TYPE_22__, %struct.st_quicly_pending_path_challenge_t*, %struct.TYPE_20__ }
%struct.TYPE_17__ = type { %struct.st_quicly_pending_path_challenge_t* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.st_quicly_pending_path_challenge_t* }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32*, i32* }
%struct.TYPE_18__ = type { i32 }

@FREE = common dso_local global i32 0, align 4
@quicly_stream_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quicly_free(%struct.st_quicly_pending_path_challenge_t* %0) #0 {
  %2 = alloca %struct.st_quicly_pending_path_challenge_t*, align 8
  %3 = alloca %struct.st_quicly_pending_path_challenge_t*, align 8
  store %struct.st_quicly_pending_path_challenge_t* %0, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %4 = load i32, i32* @FREE, align 4
  %5 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %6 = call i32 (...) @probe_now()
  %7 = call i32 @QUICLY_PROBE(i32 %4, %struct.st_quicly_pending_path_challenge_t* %5, i32 %6)
  %8 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %9 = call i32 @destroy_all_streams(%struct.st_quicly_pending_path_challenge_t* %8, i32 0, i32 1)
  %10 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %11 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %10, i32 0, i32 10
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = call i32 @quicly_maxsender_dispose(i32* %13)
  %15 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %16 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %15, i32 0, i32 10
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %23 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %22, i32 0, i32 10
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @quicly_maxsender_dispose(i32* %26)
  br label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %30 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %29, i32 0, i32 10
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %37 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %36, i32 0, i32 10
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @quicly_maxsender_dispose(i32* %40)
  br label %42

42:                                               ; preds = %35, %28
  br label %43

43:                                               ; preds = %50, %42
  %44 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %45 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %47, align 8
  %49 = icmp ne %struct.st_quicly_pending_path_challenge_t* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %52 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %54, align 8
  store %struct.st_quicly_pending_path_challenge_t* %55, %struct.st_quicly_pending_path_challenge_t** %3, align 8
  %56 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %3, align 8
  %57 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %56, i32 0, i32 9
  %58 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %57, align 8
  %59 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %60 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %59, i32 0, i32 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  store %struct.st_quicly_pending_path_challenge_t* %58, %struct.st_quicly_pending_path_challenge_t** %62, align 8
  %63 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %3, align 8
  %64 = call i32 @free(%struct.st_quicly_pending_path_challenge_t* %63)
  br label %43

65:                                               ; preds = %43
  %66 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %67 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = call i32 @quicly_sentmap_dispose(i32* %68)
  %70 = load i32, i32* @quicly_stream_t, align 4
  %71 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %72 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @kh_destroy(i32 %70, i32 %73)
  %75 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %76 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 1
  %80 = call i32 @quicly_linklist_is_linked(i32* %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %86 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = call i32 @quicly_linklist_is_linked(i32* %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %96 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = call i32 @quicly_linklist_is_linked(i32* %98)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %105 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 1
  %108 = call i32 @quicly_linklist_is_linked(i32* %107)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %114 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 0
  %117 = call i32 @quicly_linklist_is_linked(i32* %116)
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %123 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %122, i32 0, i32 4
  %124 = call i32 @free_handshake_space(i32* %123)
  %125 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %126 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %125, i32 0, i32 3
  %127 = call i32 @free_handshake_space(i32* %126)
  %128 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %129 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %128, i32 0, i32 2
  %130 = call i32 @free_application_space(i32* %129)
  %131 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %132 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = call i32 @ptls_buffer_dispose(i32* %134)
  %136 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %137 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ptls_free(i32 %139)
  %141 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %142 = getelementptr inbounds %struct.st_quicly_pending_path_challenge_t, %struct.st_quicly_pending_path_challenge_t* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %143, align 8
  %145 = call i32 @free(%struct.st_quicly_pending_path_challenge_t* %144)
  %146 = load %struct.st_quicly_pending_path_challenge_t*, %struct.st_quicly_pending_path_challenge_t** %2, align 8
  %147 = call i32 @free(%struct.st_quicly_pending_path_challenge_t* %146)
  ret void
}

declare dso_local i32 @QUICLY_PROBE(i32, %struct.st_quicly_pending_path_challenge_t*, i32) #1

declare dso_local i32 @probe_now(...) #1

declare dso_local i32 @destroy_all_streams(%struct.st_quicly_pending_path_challenge_t*, i32, i32) #1

declare dso_local i32 @quicly_maxsender_dispose(i32*) #1

declare dso_local i32 @free(%struct.st_quicly_pending_path_challenge_t*) #1

declare dso_local i32 @quicly_sentmap_dispose(i32*) #1

declare dso_local i32 @kh_destroy(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @quicly_linklist_is_linked(i32*) #1

declare dso_local i32 @free_handshake_space(i32*) #1

declare dso_local i32 @free_application_space(i32*) #1

declare dso_local i32 @ptls_buffer_dispose(i32*) #1

declare dso_local i32 @ptls_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
