; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_get_volume_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_get_volume_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@HASH_VOLUMES_MOD = common dso_local global i32 0, align 4
@HP = common dso_local global %struct.TYPE_5__** null, align 8
@volumes = common dso_local global i64 0, align 8
@MAX_VOLUMES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @get_volume_f(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @HASH_VOLUMES_MOD, align 4
  %11 = urem i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HP, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %12, i64 %14
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HP, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %19, i64 %21
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HP, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %29, i64 %31
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %3, align 8
  br label %71

34:                                               ; preds = %18
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 13
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @HASH_VOLUMES_MOD, align 4
  %38 = icmp uge i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @HASH_VOLUMES_MOD, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %34
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %71

48:                                               ; preds = %44
  %49 = load i64, i64* @volumes, align 8
  %50 = load i64, i64* @MAX_VOLUMES, align 8
  %51 = icmp slt i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64, i64* @volumes, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* @volumes, align 8
  %56 = call %struct.TYPE_5__* @zmalloc0(i32 16)
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %7, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = call i32 @pthread_mutex_init(i32* %61, i32* null)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = call i32 @pthread_mutex_init(i32* %64, i32* null)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %67 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HP, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %67, i64 %69
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %70, align 8
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %3, align 8
  br label %71

71:                                               ; preds = %48, %47, %28
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %72
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_5__* @zmalloc0(i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
