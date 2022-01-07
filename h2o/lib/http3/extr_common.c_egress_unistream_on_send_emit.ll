; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_egress_unistream_on_send_emit.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_egress_unistream_on_send_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.st_h2o_http3_egress_unistream_t* }
%struct.st_h2o_http3_egress_unistream_t = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i8*, i64*, i32*)* @egress_unistream_on_send_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @egress_unistream_on_send_emit(%struct.TYPE_5__* %0, i64 %1, i8* %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.st_h2o_http3_egress_unistream_t*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.st_h2o_http3_egress_unistream_t*, %struct.st_h2o_http3_egress_unistream_t** %13, align 8
  store %struct.st_h2o_http3_egress_unistream_t* %14, %struct.st_h2o_http3_egress_unistream_t** %11, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.st_h2o_http3_egress_unistream_t*, %struct.st_h2o_http3_egress_unistream_t** %11, align 8
  %18 = getelementptr inbounds %struct.st_h2o_http3_egress_unistream_t, %struct.st_h2o_http3_egress_unistream_t* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub i64 %21, %22
  %24 = icmp uge i64 %16, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %5
  %26 = load %struct.st_h2o_http3_egress_unistream_t*, %struct.st_h2o_http3_egress_unistream_t** %11, align 8
  %27 = getelementptr inbounds %struct.st_h2o_http3_egress_unistream_t, %struct.st_h2o_http3_egress_unistream_t* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = sub i64 %30, %31
  %33 = load i64*, i64** %9, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i32*, i32** %10, align 8
  store i32 1, i32* %34, align 4
  br label %37

35:                                               ; preds = %5
  %36 = load i32*, i32** %10, align 8
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %35, %25
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.st_h2o_http3_egress_unistream_t*, %struct.st_h2o_http3_egress_unistream_t** %11, align 8
  %40 = getelementptr inbounds %struct.st_h2o_http3_egress_unistream_t, %struct.st_h2o_http3_egress_unistream_t* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %43, %44
  %46 = load i64*, i64** %9, align 8
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @memcpy(i8* %38, i64 %45, i64 %47)
  ret i32 0
}

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
