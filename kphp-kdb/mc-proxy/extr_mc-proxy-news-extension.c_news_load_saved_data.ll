; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_news_load_saved_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_news_load_saved_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keep_mc_store = type { i32, i64, i64 }
%struct.connection = type { i32 }

@uidsave = common dso_local global i64 0, align 8
@mc_store = common dso_local global %struct.keep_mc_store zeroinitializer, align 8
@NEWS_STORE_MAGIC = common dso_local global i32 0, align 4
@QLsave = common dso_local global i32 0, align 4
@MAX_QUERY = common dso_local global i64 0, align 8
@NEWS_UG_EXTENSION = common dso_local global i64 0, align 8
@NEWS_G_EXTENSION = common dso_local global i64 0, align 8
@Qsave = common dso_local global %struct.keep_mc_store* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @news_load_saved_data(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.keep_mc_store*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  store %struct.keep_mc_store* null, %struct.keep_mc_store** %3, align 8
  %6 = load %struct.connection*, %struct.connection** %2, align 8
  %7 = getelementptr inbounds %struct.connection, %struct.connection* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i64 0, i64* @uidsave, align 8
  br label %68

11:                                               ; preds = %1
  %12 = load %struct.connection*, %struct.connection** %2, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @nbit_set(i32* %4, i32 %14)
  %16 = call i32 @nbit_read_in(i32* %4, %struct.keep_mc_store* @mc_store, i32 24)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 24
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i64 0, i64* @uidsave, align 8
  br label %68

21:                                               ; preds = %11
  store %struct.keep_mc_store* @mc_store, %struct.keep_mc_store** %3, align 8
  %22 = load i32, i32* @NEWS_STORE_MAGIC, align 4
  %23 = load %struct.keep_mc_store*, %struct.keep_mc_store** %3, align 8
  %24 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = call i32 @assert(i32 %22)
  store i32 0, i32* @QLsave, align 4
  %26 = load %struct.keep_mc_store*, %struct.keep_mc_store** %3, align 8
  %27 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* @uidsave, align 8
  %29 = load %struct.keep_mc_store*, %struct.keep_mc_store** %3, align 8
  %30 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MAX_QUERY, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load %struct.keep_mc_store*, %struct.keep_mc_store** %3, align 8
  %36 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  br label %40

38:                                               ; preds = %21
  %39 = load i64, i64* @MAX_QUERY, align 8
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i64 [ %37, %34 ], [ %39, %38 ]
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* @QLsave, align 4
  %43 = load i64, i64* @NEWS_UG_EXTENSION, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* @NEWS_G_EXTENSION, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45, %40
  %49 = load %struct.keep_mc_store*, %struct.keep_mc_store** @Qsave, align 8
  %50 = load i32, i32* @QLsave, align 4
  %51 = mul nsw i32 %50, 4
  %52 = call i32 @nbit_read_in(i32* %4, %struct.keep_mc_store* %49, i32 %51)
  %53 = load i32, i32* @QLsave, align 4
  %54 = mul nsw i32 %53, 4
  %55 = icmp eq i32 %52, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  br label %68

58:                                               ; preds = %45
  %59 = load %struct.keep_mc_store*, %struct.keep_mc_store** @Qsave, align 8
  %60 = load i32, i32* @QLsave, align 4
  %61 = mul nsw i32 %60, 12
  %62 = call i32 @nbit_read_in(i32* %4, %struct.keep_mc_store* %59, i32 %61)
  %63 = load i32, i32* @QLsave, align 4
  %64 = mul nsw i32 %63, 12
  %65 = icmp eq i32 %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  br label %68

68:                                               ; preds = %10, %20, %58, %48
  ret void
}

declare dso_local i32 @nbit_set(i32*, i32) #1

declare dso_local i32 @nbit_read_in(i32*, %struct.keep_mc_store*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
