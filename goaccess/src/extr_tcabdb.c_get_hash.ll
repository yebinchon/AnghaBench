; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_tcabdb.c_get_hash.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_tcabdb.c_get_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i8* }

@tc_storage = common dso_local global %struct.TYPE_4__* null, align 8
@GSMTRC_TOTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64)* @get_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_hash(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tc_storage, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %41

12:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %36, %12
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GSMTRC_TOTAL, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tc_storage, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = bitcast %struct.TYPE_3__* %8 to i8*
  %27 = bitcast %struct.TYPE_3__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %36

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %6, align 8
  br label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %13

39:                                               ; preds = %33, %13
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %39, %11
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
