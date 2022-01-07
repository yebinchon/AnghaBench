; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_subreq_ostream_send.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_subreq_ostream_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_mruby_subreq_t = type { i32, i64, %struct.TYPE_11__*, %struct.TYPE_12__*, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@INITIAL = common dso_local global i64 0, align 8
@RECEIVED = common dso_local global i64 0, align 8
@FINAL_RECEIVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i64, i32)* @subreq_ostream_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subreq_ostream_send(i32* %0, i32* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.st_mruby_subreq_t*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = bitcast i8* %17 to %struct.st_mruby_subreq_t*
  store %struct.st_mruby_subreq_t* %18, %struct.st_mruby_subreq_t** %11, align 8
  %19 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %20 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %19, i32 0, i32 2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %12, align 8
  %26 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %27 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = icmp ne %struct.TYPE_10__* %29, null
  br i1 %30, label %31, label %64

31:                                               ; preds = %5
  %32 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %33 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %173

42:                                               ; preds = %31
  %43 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %44 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %46 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %45, i32 0, i32 3
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = icmp eq %struct.TYPE_12__* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %51 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @h2o_mruby_sender_do_send(%struct.TYPE_10__* %53, i32* %54, i64 %55, i32 %56)
  br label %63

58:                                               ; preds = %42
  %59 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @append_bufs(%struct.st_mruby_subreq_t* %59, i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %49
  br label %173

64:                                               ; preds = %5
  %65 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %66 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @INITIAL, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i64 @h2o_send_state_is_in_progress(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %76 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %75, i32 0, i32 6
  %77 = call i32 @h2o_proceed_response_deferred(i32* %76)
  %78 = load i64, i64* @RECEIVED, align 8
  %79 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %80 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %85

81:                                               ; preds = %64
  %82 = load i64, i64* @FINAL_RECEIVED, align 8
  %83 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %84 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %74
  %86 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @append_bufs(%struct.st_mruby_subreq_t* %86, i32* %87, i64 %88)
  %90 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %91 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %97 = call i32 @send_response_shortcutted(%struct.st_mruby_subreq_t* %96)
  br label %173

98:                                               ; preds = %85
  %99 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %100 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @mrb_nil_p(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %173

105:                                              ; preds = %98
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @mrb_gc_arena_save(i32* %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %112 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %111, i32 0, i32 2
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %115 = call i32 @detach_receiver(%struct.st_mruby_subreq_t* %114)
  %116 = call i32 (...) @mrb_nil_value()
  %117 = call i32 @h2o_mruby_run_fiber(%struct.TYPE_11__* %113, i32 %115, i32 %116, i32* null)
  br label %169

118:                                              ; preds = %105
  %119 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %120 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %119, i32 0, i32 3
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %153

125:                                              ; preds = %118
  %126 = load i32*, i32** %12, align 8
  %127 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %128 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %127, i32 0, i32 3
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %133 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %132, i32 0, i32 3
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @h2o_mruby_new_str(i32* %126, i32 %131, i64 %136)
  store i32 %137, i32* %15, align 4
  %138 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %139 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %138, i32 0, i32 3
  %140 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %141 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %140, i32 0, i32 3
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @h2o_buffer_consume(%struct.TYPE_12__** %139, i64 %144)
  %146 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %147 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %146, i32 0, i32 2
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %150 = call i32 @detach_receiver(%struct.st_mruby_subreq_t* %149)
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @h2o_mruby_run_fiber(%struct.TYPE_11__* %148, i32 %150, i32 %151, i32* null)
  br label %168

153:                                              ; preds = %118
  %154 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %155 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @FINAL_RECEIVED, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %153
  %160 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %161 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %160, i32 0, i32 2
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %11, align 8
  %164 = call i32 @detach_receiver(%struct.st_mruby_subreq_t* %163)
  %165 = call i32 (...) @mrb_nil_value()
  %166 = call i32 @h2o_mruby_run_fiber(%struct.TYPE_11__* %162, i32 %164, i32 %165, i32* null)
  br label %167

167:                                              ; preds = %159, %153
  br label %168

168:                                              ; preds = %167, %125
  br label %169

169:                                              ; preds = %168, %110
  %170 = load i32*, i32** %12, align 8
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @mrb_gc_arena_restore(i32* %170, i32 %171)
  br label %173

173:                                              ; preds = %169, %104, %95, %63, %41
  ret void
}

declare dso_local i32 @h2o_mruby_sender_do_send(%struct.TYPE_10__*, i32*, i64, i32) #1

declare dso_local i32 @append_bufs(%struct.st_mruby_subreq_t*, i32*, i64) #1

declare dso_local i64 @h2o_send_state_is_in_progress(i32) #1

declare dso_local i32 @h2o_proceed_response_deferred(i32*) #1

declare dso_local i32 @send_response_shortcutted(%struct.st_mruby_subreq_t*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i32 @h2o_mruby_run_fiber(%struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i32 @detach_receiver(%struct.st_mruby_subreq_t*) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @h2o_mruby_new_str(i32*, i32, i64) #1

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_12__**, i64) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
