; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_verify_hdr.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_verify_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i8*, i32*)*, i32 (i32*, %struct.cache_header*, i32)*, i32 (i32*)* }
%struct.cache_header = type { i64, i32 }

@GIT_MAX_RAWSZ = common dso_local global i32 0, align 4
@CACHE_SIGNATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bad signature 0x%08x\00", align 1
@INDEX_FORMAT_LB = common dso_local global i32 0, align 4
@INDEX_FORMAT_UB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"bad index version %d\00", align 1
@verify_index_checksum = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"bad index file sha1 signature\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_header*, i64)* @verify_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_hdr(%struct.cache_header* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_header*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cache_header* %0, %struct.cache_header** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @GIT_MAX_RAWSZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.cache_header*, %struct.cache_header** %4, align 8
  %16 = getelementptr inbounds %struct.cache_header, %struct.cache_header* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @CACHE_SIGNATURE, align 4
  %19 = call i64 @htonl(i32 %18)
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.cache_header*, %struct.cache_header** %4, align 8
  %24 = getelementptr inbounds %struct.cache_header, %struct.cache_header* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32, ...) @error(i32 %22, i64 %25)
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %84

27:                                               ; preds = %2
  %28 = load %struct.cache_header*, %struct.cache_header** %4, align 8
  %29 = getelementptr inbounds %struct.cache_header, %struct.cache_header* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ntohl(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @INDEX_FORMAT_LB, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @INDEX_FORMAT_UB, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %27
  %40 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i32, ...) @error(i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %84

43:                                               ; preds = %35
  %44 = load i32, i32* @verify_index_checksum, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %84

47:                                               ; preds = %43
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32 (i32*)*, i32 (i32*)** %49, align 8
  %51 = call i32 %50(i32* %6)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32 (i32*, %struct.cache_header*, i32)*, i32 (i32*, %struct.cache_header*, i32)** %53, align 8
  %55 = load %struct.cache_header*, %struct.cache_header** %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = sub i64 %56, %60
  %62 = trunc i64 %61 to i32
  %63 = call i32 %54(i32* %6, %struct.cache_header* %55, i32 %62)
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %65, align 8
  %67 = call i32 %66(i8* %14, i32* %6)
  %68 = load %struct.cache_header*, %struct.cache_header** %4, align 8
  %69 = bitcast %struct.cache_header* %68 to i8*
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = sub i64 0, %75
  %77 = getelementptr inbounds i8, i8* %71, i64 %76
  %78 = call i32 @hasheq(i8* %14, i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %47
  %81 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %82 = call i32 (i32, ...) @error(i32 %81)
  store i32 %82, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %84

83:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %84

84:                                               ; preds = %83, %80, %46, %39, %21
  %85 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @htonl(i32) #2

declare dso_local i32 @error(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i32 @hasheq(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
