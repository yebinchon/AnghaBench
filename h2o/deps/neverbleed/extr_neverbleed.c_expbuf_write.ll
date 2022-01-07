; ModuleID = '/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_expbuf_write.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_expbuf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expbuf_t = type { i64* }
%struct.iovec = type { i64*, i32, i32* }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.expbuf_t*, i32)* @expbuf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expbuf_write(%struct.expbuf_t* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.expbuf_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.iovec], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.expbuf_t* %0, %struct.expbuf_t** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast [2 x %struct.iovec]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 48, i1 false)
  %11 = load %struct.expbuf_t*, %struct.expbuf_t** %4, align 8
  %12 = call i64 @expbuf_size(%struct.expbuf_t* %11)
  store i64 %12, i64* %7, align 8
  %13 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 0
  %14 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  store i64* %7, i64** %14, align 16
  %15 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 0
  %16 = getelementptr inbounds %struct.iovec, %struct.iovec* %15, i32 0, i32 1
  store i32 8, i32* %16, align 8
  %17 = load %struct.expbuf_t*, %struct.expbuf_t** %4, align 8
  %18 = getelementptr inbounds %struct.expbuf_t, %struct.expbuf_t* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 1
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %20, i32 0, i32 0
  store i64* %19, i64** %21, align 8
  %22 = load i64, i64* %7, align 8
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 1
  %25 = getelementptr inbounds %struct.iovec, %struct.iovec* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %107, %2
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 2
  br i1 %29, label %30, label %108

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %49, %30
  %32 = load i32, i32* %5, align 4
  %33 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 0
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %33, i64 %35
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 2, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @writev(i32 %32, %struct.iovec* %36, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @EINTR, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %43, %31
  %48 = phi i1 [ false, %31 ], [ %46, %43 ]
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  br label %31

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 -1, i32* %3, align 4
  br label %109

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  br label %59

59:                                               ; preds = %72, %54
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.iovec, %struct.iovec* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %63, %68
  br label %70

70:                                               ; preds = %62, %59
  %71 = phi i1 [ false, %59 ], [ %69, %62 ]
  br i1 %71, label %72, label %82

72:                                               ; preds = %70
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.iovec, %struct.iovec* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %59

82:                                               ; preds = %70
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.iovec, %struct.iovec* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = bitcast i64* %90 to i8*
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = bitcast i8* %94 to i64*
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.iovec, %struct.iovec* %98, i32 0, i32 0
  store i64* %95, i64** %99, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 %102
  %104 = getelementptr inbounds %struct.iovec, %struct.iovec* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, %100
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %85, %82
  br label %26

108:                                              ; preds = %26
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %53
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @expbuf_size(%struct.expbuf_t*) #2

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #2

declare dso_local i32 @assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
