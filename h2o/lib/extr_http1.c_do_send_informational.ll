; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_do_send_informational.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_do_send_informational.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1_finalostream_t = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@on_send_informational = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http1_finalostream_t*, i32*)* @do_send_informational to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_send_informational(%struct.st_h2o_http1_finalostream_t* %0, i32* %1) #0 {
  %3 = alloca %struct.st_h2o_http1_finalostream_t*, align 8
  %4 = alloca i32*, align 8
  store %struct.st_h2o_http1_finalostream_t* %0, %struct.st_h2o_http1_finalostream_t** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.st_h2o_http1_finalostream_t*, %struct.st_h2o_http1_finalostream_t** %3, align 8
  %6 = getelementptr inbounds %struct.st_h2o_http1_finalostream_t, %struct.st_h2o_http1_finalostream_t* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.st_h2o_http1_finalostream_t*, %struct.st_h2o_http1_finalostream_t** %3, align 8
  %12 = getelementptr inbounds %struct.st_h2o_http1_finalostream_t, %struct.st_h2o_http1_finalostream_t* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %2
  br label %39

18:                                               ; preds = %10
  %19 = load %struct.st_h2o_http1_finalostream_t*, %struct.st_h2o_http1_finalostream_t** %3, align 8
  %20 = getelementptr inbounds %struct.st_h2o_http1_finalostream_t, %struct.st_h2o_http1_finalostream_t* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.st_h2o_http1_finalostream_t*, %struct.st_h2o_http1_finalostream_t** %3, align 8
  %24 = getelementptr inbounds %struct.st_h2o_http1_finalostream_t, %struct.st_h2o_http1_finalostream_t* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.st_h2o_http1_finalostream_t*, %struct.st_h2o_http1_finalostream_t** %3, align 8
  %29 = getelementptr inbounds %struct.st_h2o_http1_finalostream_t, %struct.st_h2o_http1_finalostream_t* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @on_send_informational, align 4
  %34 = call i32 @h2o_socket_write(i32* %22, i32 %27, i64 %32, i32 %33)
  %35 = load %struct.st_h2o_http1_finalostream_t*, %struct.st_h2o_http1_finalostream_t** %3, align 8
  %36 = getelementptr inbounds %struct.st_h2o_http1_finalostream_t, %struct.st_h2o_http1_finalostream_t* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @h2o_socket_write(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
