; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_socketevloop.c.h_do_write.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_socketevloop.c.h_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64 }
%struct.st_h2o_evloop_socket_t = type { %struct.TYPE_11__, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"deadbeef\00", align 1
@H2O_SOCKET_FLAG_IS_WRITE_NOTIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_write(i32* %0, %struct.TYPE_12__* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.st_h2o_evloop_socket_t*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %struct.st_h2o_evloop_socket_t*
  store %struct.st_h2o_evloop_socket_t* %14, %struct.st_h2o_evloop_socket_t** %9, align 8
  %15 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %16 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %24 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %32 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32* %30, i32** %34, align 8
  %35 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %36 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @write_core(i32 %37, %struct.TYPE_12__** %6, i64* %7, i64* %10)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %4
  %41 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %42 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %46 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %47, align 8
  %48 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %49 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %52 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %56 = call { i64, i64 } @h2o_iovec_init(i32 %55)
  %57 = bitcast %struct.TYPE_12__* %12 to { i64, i64 }*
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 0
  %59 = extractvalue { i64, i64 } %56, 0
  store i64 %59, i64* %58, align 8
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 1
  %61 = extractvalue { i64, i64 } %56, 1
  store i64 %61, i64* %60, align 8
  %62 = bitcast %struct.TYPE_12__* %54 to i8*
  %63 = bitcast %struct.TYPE_12__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 16, i1 false)
  %64 = load i32, i32* @H2O_SOCKET_FLAG_IS_WRITE_NOTIFY, align 4
  %65 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %66 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %70 = call i32 @link_to_pending(%struct.st_h2o_evloop_socket_t* %69)
  br label %160

71:                                               ; preds = %4
  %72 = load i64, i64* %7, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i32, i32* @H2O_SOCKET_FLAG_IS_WRITE_NOTIFY, align 4
  %76 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %77 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %81 = call i32 @link_to_pending(%struct.st_h2o_evloop_socket_t* %80)
  br label %160

82:                                               ; preds = %71
  %83 = load i64, i64* %7, align 8
  %84 = icmp ule i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %87 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %91 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %92, align 8
  br label %108

93:                                               ; preds = %82
  %94 = load i64, i64* %7, align 8
  %95 = mul i64 16, %94
  %96 = trunc i64 %95 to i32
  %97 = call %struct.TYPE_12__* @h2o_mem_alloc(i32 %96)
  %98 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %99 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %100, align 8
  %101 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %102 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %106 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %107, align 8
  br label %108

108:                                              ; preds = %93, %85
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %112, %113
  %115 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %116 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  store i64 %114, i64* %120, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %10, align 8
  %126 = sub i64 %124, %125
  %127 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %128 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  store i64 %126, i64* %132, align 8
  store i64 1, i64* %11, align 8
  br label %133

133:                                              ; preds = %149, %108
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* %7, align 8
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %133
  %138 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %139 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = load i64, i64* %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i64 %142
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %145 = load i64, i64* %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i64 %145
  %147 = bitcast %struct.TYPE_12__* %143 to i8*
  %148 = bitcast %struct.TYPE_12__* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 16, i1 false)
  br label %149

149:                                              ; preds = %137
  %150 = load i64, i64* %11, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %11, align 8
  br label %133

152:                                              ; preds = %133
  %153 = load i64, i64* %7, align 8
  %154 = trunc i64 %153 to i32
  %155 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %156 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 8
  %158 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %9, align 8
  %159 = call i32 @link_to_statechanged(%struct.st_h2o_evloop_socket_t* %158)
  br label %160

160:                                              ; preds = %152, %74, %40
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @write_core(i32, %struct.TYPE_12__**, i64*, i64*) #1

declare dso_local { i64, i64 } @h2o_iovec_init(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @link_to_pending(%struct.st_h2o_evloop_socket_t*) #1

declare dso_local %struct.TYPE_12__* @h2o_mem_alloc(i32) #1

declare dso_local i32 @link_to_statechanged(%struct.st_h2o_evloop_socket_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
