; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gkhash.c_get_hash.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gkhash.c_get_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@GSMTRC_TOTAL = common dso_local global i32 0, align 4
@gkh_storage = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64)* @get_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_hash(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %57, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @GSMTRC_TOTAL, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %60

16:                                               ; preds = %12
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gkh_storage, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = bitcast %struct.TYPE_3__* %7 to i8*
  %26 = bitcast %struct.TYPE_3__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 72, i1 false)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %57

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %56 [
    i32 133, label %35
    i32 132, label %38
    i32 131, label %41
    i32 130, label %44
    i32 129, label %47
    i32 134, label %50
    i32 128, label %53
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 8
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %5, align 8
  br label %56

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 7
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %5, align 8
  br label %56

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 6
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %5, align 8
  br label %56

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %5, align 8
  br label %56

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %5, align 8
  br label %56

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %5, align 8
  br label %56

53:                                               ; preds = %32
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %5, align 8
  br label %56

56:                                               ; preds = %32, %53, %50, %47, %44, %41, %38, %35
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %8

60:                                               ; preds = %15, %8
  %61 = load i8*, i8** %5, align 8
  ret i8* %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
