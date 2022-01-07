; ModuleID = '/home/carl/AnghaBench/h2o/examples/libh2o/extr_latency-optimization.c_prepare_write_buf.c'
source_filename = "/home/carl/AnghaBench/h2o/examples/libh2o/extr_latency-optimization.c_prepare_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@prepare_write_buf.buf = internal global %struct.TYPE_3__ zeroinitializer, align 8
@write_block_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i32* } ()* @prepare_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i32* } @prepare_write_buf() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @prepare_write_buf.buf, i32 0, i32 1), align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32, i32* @write_block_size, align 4
  %6 = call i32* @h2o_mem_alloc(i32 %5)
  store i32* %6, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @prepare_write_buf.buf, i32 0, i32 1), align 8
  %7 = load i32, i32* @write_block_size, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @prepare_write_buf.buf, i32 0, i32 0), align 8
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @prepare_write_buf.buf, i32 0, i32 1), align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @prepare_write_buf.buf, i32 0, i32 0), align 8
  %10 = call i32 @memset(i32* %8, i32 48, i32 %9)
  br label %11

11:                                               ; preds = %4, %0
  %12 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_3__* @prepare_write_buf.buf to i8*), i64 16, i1 false)
  %13 = bitcast %struct.TYPE_3__* %1 to { i32, i32* }*
  %14 = load { i32, i32* }, { i32, i32* }* %13, align 8
  ret { i32, i32* } %14
}

declare dso_local i32* @h2o_mem_alloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
