; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gholder.c_set_data_hits_keys.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gholder.c_set_data_hits_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@INTEGER = common dso_local global i64 0, align 8
@STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i64, i8**, i32*)* @set_data_hits_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_data_hits_keys(i32 %0, i64 %1, i32 %2, i64 %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %1, i64* %14, align 4
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %2, i32* %15, align 4
  %16 = bitcast %struct.TYPE_5__* %8 to i8*
  %17 = bitcast { i64, i32 }* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 12, i1 false)
  store i32 %0, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @INTEGER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %6
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @ht_get_datamap(i32 %22, i32 %24)
  %26 = load i8**, i8*** %12, align 8
  store i8* %25, i8** %26, align 8
  %27 = icmp ne i8* %25, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  br label %54

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %13, align 8
  store i32 %32, i32* %33, align 4
  br label %53

34:                                               ; preds = %6
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @STRING, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ht_get_hits(i32 %39, i32 %41)
  %43 = load i32*, i32** %13, align 8
  store i32 %42, i32* %43, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  br label %54

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @xstrdup(i32 %49)
  %51 = load i8**, i8*** %12, align 8
  store i8* %50, i8** %51, align 8
  br label %52

52:                                               ; preds = %46, %34
  br label %53

53:                                               ; preds = %52, %29
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %45, %28
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @ht_get_datamap(i32, i32) #2

declare dso_local i32 @ht_get_hits(i32, i32) #2

declare dso_local i8* @xstrdup(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
