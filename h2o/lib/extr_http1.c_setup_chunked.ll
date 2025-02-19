; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_setup_chunked.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_setup_chunked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1_finalostream_t = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@H2O_TOKEN_TRANSFER_ENCODING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http1_finalostream_t*, %struct.TYPE_6__*)* @setup_chunked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_chunked(%struct.st_h2o_http1_finalostream_t* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.st_h2o_http1_finalostream_t*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.st_h2o_http1_finalostream_t* %0, %struct.st_h2o_http1_finalostream_t** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = call i64 @should_use_chunked_encoding(%struct.TYPE_6__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* @H2O_TOKEN_TRANSFER_ENCODING, align 4
  %15 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @h2o_add_header(i32* %10, i32* %13, i32 %14, i32* null, i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @h2o_mem_alloc_pool_aligned(i32* %18, i32 1, i32 19)
  %20 = load %struct.st_h2o_http1_finalostream_t*, %struct.st_h2o_http1_finalostream_t** %3, align 8
  %21 = getelementptr inbounds %struct.st_h2o_http1_finalostream_t, %struct.st_h2o_http1_finalostream_t* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %8, %2
  ret void
}

declare dso_local i64 @should_use_chunked_encoding(%struct.TYPE_6__*) #1

declare dso_local i32 @h2o_add_header(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_mem_alloc_pool_aligned(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
