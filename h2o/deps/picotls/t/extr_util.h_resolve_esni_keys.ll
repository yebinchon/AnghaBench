; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_util.h_resolve_esni_keys.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_util.h_resolve_esni_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"_esni.%s\00", align 1
@ns_c_in = common dso_local global i32 0, align 4
@ns_t_txt = common dso_local global i32 0, align 4
@ns_s_an = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @resolve_esni_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_esni_keys(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca [1024 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = call i32 @ptls_buffer_init(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @snprintf(i8* %13, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = sext i32 %15 to i64
  %17 = icmp ugt i64 %16, 255
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %69

19:                                               ; preds = %1
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %21 = load i32, i32* @ns_c_in, align 4
  %22 = load i32, i32* @ns_t_txt, align 4
  %23 = getelementptr inbounds [1024 x i32], [1024 x i32]* %6, i64 0, i64 0
  %24 = call i32 @res_query(i8* %20, i32 %21, i32 %22, i32* %23, i32 4096)
  store i32 %24, i32* %11, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %69

27:                                               ; preds = %19
  %28 = getelementptr inbounds [1024 x i32], [1024 x i32]* %6, i64 0, i64 0
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @ns_initparse(i32* %28, i32 %29, i32* %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %69

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @ns_s_an, align 4
  %36 = call i32 @ns_msg_count(i32 %34, i32 %35)
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %69

39:                                               ; preds = %33
  %40 = load i32, i32* @ns_s_an, align 4
  %41 = call i64 @ns_parserr(i32* %7, i32 %40, i32 0, i32* %8)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %69

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @ns_rr_rdata(i32 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ns_rr_rdlen(i32 %49)
  %51 = call i32 @normalize_txt(i8* %48, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  br label %69

54:                                               ; preds = %44
  %55 = call i32 @ptls_base64_decode_init(i32* %10)
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @ptls_base64_decode(i8* %56, i32* %10, %struct.TYPE_5__* %9)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %69

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @assert(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ptls_iovec_init(i32* %65, i32 %67)
  store i32 %68, i32* %2, align 4
  br label %72

69:                                               ; preds = %59, %53, %43, %38, %32, %26, %18
  %70 = call i32 @ptls_buffer_dispose(%struct.TYPE_5__* %9)
  %71 = call i32 @ptls_iovec_init(i32* null, i32 0)
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %60
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @ptls_buffer_init(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @res_query(i8*, i32, i32, i32*, i32) #1

declare dso_local i64 @ns_initparse(i32*, i32, i32*) #1

declare dso_local i32 @ns_msg_count(i32, i32) #1

declare dso_local i64 @ns_parserr(i32*, i32, i32, i32*) #1

declare dso_local i64 @ns_rr_rdata(i32) #1

declare dso_local i32 @normalize_txt(i8*, i32) #1

declare dso_local i32 @ns_rr_rdlen(i32) #1

declare dso_local i32 @ptls_base64_decode_init(i32*) #1

declare dso_local i64 @ptls_base64_decode(i8*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ptls_iovec_init(i32*, i32) #1

declare dso_local i32 @ptls_buffer_dispose(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
