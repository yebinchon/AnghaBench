; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_validate_token.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_validate_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_12__*)* }
%struct.sockaddr = type { i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__, i64, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@ctx = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@ptls_openssl_sha256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, i32, i32, %struct.TYPE_21__*)* @validate_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_token(%struct.sockaddr* %0, i32 %1, i32 %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  %14 = alloca i64, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ctx, i32 0, i32 0), align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64 (%struct.TYPE_12__*)*, i64 (%struct.TYPE_12__*)** %16, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ctx, i32 0, i32 0), align 8
  %19 = call i64 %17(%struct.TYPE_12__* %18)
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  store i64 %23, i64* %10, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %26

26:                                               ; preds = %25, %4
  %27 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %29, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %125

37:                                               ; preds = %26
  %38 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %39 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %90 [
    i32 129, label %41
    i32 128, label %67
  ]

41:                                               ; preds = %37
  %42 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %43 = bitcast %struct.sockaddr* %42 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %43, %struct.sockaddr_in** %12, align 8
  %44 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %47, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %125

56:                                               ; preds = %41
  %57 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %59, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %11, align 4
  br label %91

67:                                               ; preds = %37
  %68 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %69 = bitcast %struct.sockaddr* %68 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %69, %struct.sockaddr_in6** %13, align 8
  %70 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %71 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %70, i32 0, i32 1
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = call i32 @memcmp(i32* %71, i32* %75, i32 4)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %125

79:                                               ; preds = %67
  %80 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %81 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %82, %87
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %11, align 4
  br label %91

90:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %125

91:                                               ; preds = %79, %56
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %91
  %97 = load i64, i64* %10, align 8
  %98 = icmp sgt i64 %97, 30000
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 0, i32* %5, align 4
  br label %125

100:                                              ; preds = %96
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %125

104:                                              ; preds = %100
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i64 @quicly_retry_calc_cidpair_hash(i32* @ptls_openssl_sha256, i32 %105, i32 %106, i64* %14)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %125

110:                                              ; preds = %104
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %14, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store i32 0, i32* %5, align 4
  br label %125

118:                                              ; preds = %110
  br label %124

119:                                              ; preds = %91
  %120 = load i64, i64* %10, align 8
  %121 = icmp sgt i64 %120, 600000
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 0, i32* %5, align 4
  br label %125

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123, %118
  store i32 1, i32* %5, align 4
  br label %125

125:                                              ; preds = %124, %122, %117, %109, %103, %99, %90, %78, %55, %36
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @quicly_retry_calc_cidpair_hash(i32*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
