; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_hash_get_req_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_hash_get_req_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_request = type { i64, %struct.forth_request* }

@REQ_HASH_SIZE = common dso_local global i32 0, align 4
@H = common dso_local global %struct.forth_request** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.forth_request* (i64)* @hash_get_req_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.forth_request* @hash_get_req_f(i64 %0) #0 {
  %2 = alloca %struct.forth_request*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.forth_request**, align 8
  %6 = alloca %struct.forth_request*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @REQ_HASH_SIZE, align 4
  %10 = sub nsw i32 %9, 1
  %11 = and i32 %8, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.forth_request**, %struct.forth_request*** @H, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %12, i64 %14
  store %struct.forth_request** %15, %struct.forth_request*** %5, align 8
  br label %16

16:                                               ; preds = %46, %1
  %17 = load %struct.forth_request**, %struct.forth_request*** %5, align 8
  %18 = load %struct.forth_request*, %struct.forth_request** %17, align 8
  %19 = icmp ne %struct.forth_request* %18, null
  br i1 %19, label %20, label %49

20:                                               ; preds = %16
  %21 = load %struct.forth_request**, %struct.forth_request*** %5, align 8
  %22 = load %struct.forth_request*, %struct.forth_request** %21, align 8
  store %struct.forth_request* %22, %struct.forth_request** %6, align 8
  %23 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %24 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %20
  %29 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %30 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %29, i32 0, i32 1
  %31 = load %struct.forth_request*, %struct.forth_request** %30, align 8
  %32 = load %struct.forth_request**, %struct.forth_request*** %5, align 8
  store %struct.forth_request* %31, %struct.forth_request** %32, align 8
  %33 = load %struct.forth_request**, %struct.forth_request*** @H, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %33, i64 %35
  %37 = load %struct.forth_request*, %struct.forth_request** %36, align 8
  %38 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %39 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %38, i32 0, i32 1
  store %struct.forth_request* %37, %struct.forth_request** %39, align 8
  %40 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %41 = load %struct.forth_request**, %struct.forth_request*** @H, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.forth_request*, %struct.forth_request** %41, i64 %43
  store %struct.forth_request* %40, %struct.forth_request** %44, align 8
  %45 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  store %struct.forth_request* %45, %struct.forth_request** %2, align 8
  br label %50

46:                                               ; preds = %20
  %47 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %48 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %47, i32 0, i32 1
  store %struct.forth_request** %48, %struct.forth_request*** %5, align 8
  br label %16

49:                                               ; preds = %16
  store %struct.forth_request* null, %struct.forth_request** %2, align 8
  br label %50

50:                                               ; preds = %49, %28
  %51 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  ret %struct.forth_request* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
