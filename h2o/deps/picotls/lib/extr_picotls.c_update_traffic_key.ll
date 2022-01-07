; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_update_traffic_key.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_update_traffic_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t }
%struct.st_ptls_traffic_protection_t = type { i32* }

@PTLS_MAX_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"traffic upd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @update_traffic_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_traffic_key(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_ptls_traffic_protection_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi %struct.st_ptls_traffic_protection_t* [ %15, %12 ], [ %19, %16 ]
  store %struct.st_ptls_traffic_protection_t* %21, %struct.st_ptls_traffic_protection_t** %5, align 8
  %22 = load i32, i32* @PTLS_MAX_DIGEST_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %9, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %5, align 8
  %39 = getelementptr inbounds %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ptls_iovec_init(i32* %40, i32 %43)
  %45 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @hkdf_expand_label(%struct.TYPE_13__* %34, i32* %25, i32 %37, i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %20
  br label %64

54:                                               ; preds = %20
  %55 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %5, align 8
  %56 = getelementptr inbounds %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = mul nuw i64 4, %23
  %59 = trunc i64 %58 to i32
  %60 = call i32 @memcpy(i32* %57, i32* %25, i32 %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @setup_traffic_protection(%struct.TYPE_12__* %61, i32 %62, i32* null, i32 3, i32 1)
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %54, %53
  %65 = mul nuw i64 4, %23
  %66 = trunc i64 %65 to i32
  %67 = call i32 @ptls_clear_memory(i32* %25, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %69)
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hkdf_expand_label(%struct.TYPE_13__*, i32*, i32, i32, i8*, i32, i32) #2

declare dso_local i32 @ptls_iovec_init(i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @setup_traffic_protection(%struct.TYPE_12__*, i32, i32*, i32, i32) #2

declare dso_local i32 @ptls_clear_memory(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
