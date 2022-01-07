; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-recommend-extension.c_newsr_load_saved_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-recommend-extension.c_newsr_load_saved_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keep_mc_store = type { i32, i64, i64 }
%struct.connection = type { i32 }

@tagsave = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"newsr_load_saved_data: !c->Tmp\0A\00", align 1
@mc_store = common dso_local global %struct.keep_mc_store zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"newsr_load_saved_data: l = %d\0A\00", align 1
@NEWSR_STORE_MAGIC = common dso_local global i32 0, align 4
@QLsave = common dso_local global i32 0, align 4
@MAX_QUERY = common dso_local global i64 0, align 8
@Qsave = common dso_local global %struct.keep_mc_store* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @newsr_load_saved_data(%struct.connection* %0) #0 {
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
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  store i64 0, i64* @tagsave, align 8
  %11 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.connection*, %struct.connection** %2, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nbit_set(i32* %4, i32 %15)
  %17 = call i32 @nbit_read_in(i32* %4, %struct.keep_mc_store* @mc_store, i32 24)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 24
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  store i64 0, i64* @tagsave, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %55

24:                                               ; preds = %12
  store %struct.keep_mc_store* @mc_store, %struct.keep_mc_store** %3, align 8
  %25 = load i32, i32* @NEWSR_STORE_MAGIC, align 4
  %26 = load %struct.keep_mc_store*, %struct.keep_mc_store** %3, align 8
  %27 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = call i32 @assert(i32 %25)
  store i32 0, i32* @QLsave, align 4
  %29 = load %struct.keep_mc_store*, %struct.keep_mc_store** %3, align 8
  %30 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* @tagsave, align 8
  %32 = load %struct.keep_mc_store*, %struct.keep_mc_store** %3, align 8
  %33 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MAX_QUERY, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load %struct.keep_mc_store*, %struct.keep_mc_store** %3, align 8
  %39 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  br label %43

41:                                               ; preds = %24
  %42 = load i64, i64* @MAX_QUERY, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i64 [ %40, %37 ], [ %42, %41 ]
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* @QLsave, align 4
  %46 = load %struct.keep_mc_store*, %struct.keep_mc_store** @Qsave, align 8
  %47 = load i32, i32* @QLsave, align 4
  %48 = mul nsw i32 %47, 8
  %49 = call i32 @nbit_read_in(i32* %4, %struct.keep_mc_store* %46, i32 %48)
  %50 = load i32, i32* @QLsave, align 4
  %51 = mul nsw i32 %50, 8
  %52 = icmp eq i32 %49, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  br label %55

55:                                               ; preds = %43, %21, %10
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @nbit_set(i32*, i32) #1

declare dso_local i32 @nbit_read_in(i32*, %struct.keep_mc_store*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
