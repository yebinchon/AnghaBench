; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_hash_req_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_hash_req_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_request = type { i64, %struct.forth_request* }

@REQ_HASH_SIZE = common dso_local global i32 0, align 4
@H = common dso_local global %struct.forth_request** null, align 8
@requests_in_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.forth_request*)* @hash_req_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_req_insert(%struct.forth_request* %0) #0 {
  %2 = alloca %struct.forth_request*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.forth_request* %0, %struct.forth_request** %2, align 8
  %5 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  %6 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @REQ_HASH_SIZE, align 4
  %11 = sub nsw i32 %10, 1
  %12 = and i32 %9, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.forth_request**, %struct.forth_request*** @H, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %13, i64 %15
  %17 = load %struct.forth_request*, %struct.forth_request** %16, align 8
  %18 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  %19 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %18, i32 0, i32 1
  store %struct.forth_request* %17, %struct.forth_request** %19, align 8
  %20 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  %21 = load %struct.forth_request**, %struct.forth_request*** @H, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %21, i64 %23
  store %struct.forth_request* %20, %struct.forth_request** %24, align 8
  %25 = load i32, i32* @requests_in_hash, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @requests_in_hash, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
