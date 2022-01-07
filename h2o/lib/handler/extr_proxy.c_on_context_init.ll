; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_proxy.c_on_context_init.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_proxy.c_on_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_17__, i32, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.rp_handler_t = type { %struct.TYPE_20__, i32, i32 }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i64, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32, i64 }
%struct.rp_handler_context_t = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i64, i64, i64, i64, i64, %struct.TYPE_21__, i32*, i32*, i32 }
%struct.TYPE_21__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*)* @on_context_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_context_init(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.rp_handler_t*, align 8
  %6 = alloca %struct.rp_handler_context_t*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.rp_handler_t*
  store %struct.rp_handler_t* %10, %struct.rp_handler_t** %5, align 8
  %11 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %12 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @h2o_socketpool_register_loop(i32 %13, i32 %16)
  %18 = call i8* @h2o_mem_alloc(i32 16)
  %19 = bitcast i8* %18 to %struct.rp_handler_context_t*
  store %struct.rp_handler_context_t* %19, %struct.rp_handler_context_t** %6, align 8
  %20 = load %struct.rp_handler_context_t*, %struct.rp_handler_context_t** %6, align 8
  %21 = call i32 @memset(%struct.rp_handler_context_t* %20, i32 0, i32 16)
  %22 = load %struct.rp_handler_context_t*, %struct.rp_handler_context_t** %6, align 8
  %23 = getelementptr inbounds %struct.rp_handler_context_t, %struct.rp_handler_context_t* %22, i32 0, i32 1
  %24 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %25 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @h2o_httpclient_connection_pool_init(i32* %23, i32 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %30 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %29, i32 0, i32 1
  %31 = load %struct.rp_handler_context_t*, %struct.rp_handler_context_t** %6, align 8
  %32 = call i32 @h2o_context_set_handler_context(%struct.TYPE_13__* %28, i32* %30, %struct.rp_handler_context_t* %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %40 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %38, %42
  br i1 %43, label %44, label %114

44:                                               ; preds = %2
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %52 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %50, %54
  br i1 %55, label %56, label %114

56:                                               ; preds = %44
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %64 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %68, label %114

68:                                               ; preds = %56
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %76 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %74, %78
  br i1 %79, label %80, label %114

80:                                               ; preds = %68
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %88 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %86, %90
  br i1 %91, label %92, label %114

92:                                               ; preds = %80
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %101 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %99, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %92
  %107 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %108 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %106
  br label %188

114:                                              ; preds = %106, %92, %80, %68, %56, %44, %2
  %115 = call i8* @h2o_mem_alloc(i32 16)
  %116 = bitcast i8* %115 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %116, %struct.TYPE_22__** %7, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 8
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 7
  store i32* %124, i32** %126, align 8
  %127 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %128 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %134 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %140 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  %145 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %146 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 3
  store i64 %148, i64* %150, align 8
  %151 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %152 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %114
  %158 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %159 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 6
  store i32* %161, i32** %163, align 8
  br label %167

164:                                              ; preds = %114
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 6
  store i32* null, i32** %166, align 8
  br label %167

167:                                              ; preds = %164, %157
  %168 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %169 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 4
  store i64 %171, i64* %173, align 8
  %174 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %175 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 0
  store i64 %178, i64* %181, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 1
  store i32 -1, i32* %184, align 8
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %186 = load %struct.rp_handler_context_t*, %struct.rp_handler_context_t** %6, align 8
  %187 = getelementptr inbounds %struct.rp_handler_context_t, %struct.rp_handler_context_t* %186, i32 0, i32 0
  store %struct.TYPE_22__* %185, %struct.TYPE_22__** %187, align 8
  br label %188

188:                                              ; preds = %167, %113
  ret void
}

declare dso_local i32 @h2o_socketpool_register_loop(i32, i32) #1

declare dso_local i8* @h2o_mem_alloc(i32) #1

declare dso_local i32 @memset(%struct.rp_handler_context_t*, i32, i32) #1

declare dso_local i32 @h2o_httpclient_connection_pool_init(i32*, i32) #1

declare dso_local i32 @h2o_context_set_handler_context(%struct.TYPE_13__*, i32*, %struct.rp_handler_context_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
